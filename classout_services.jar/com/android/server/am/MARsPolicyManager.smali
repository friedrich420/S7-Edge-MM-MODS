.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;,
        Lcom/android/server/am/MARsPolicyManager$PolicyException;,
        Lcom/android/server/am/MARsPolicyManager$Policy;
    }
.end annotation


# static fields
.field public static final ACTION_FORCESTOP_PACKAGE:I = 0x2

.field public static final ACTION_FORCESTOP_PACKAGE_LATER:I = 0x3

.field public static final ACTION_NONSTICKY_KILLPACKAGE:I = 0x1

.field static DEBUG_MARs:Z = false

.field public static final INTENT_ACTION_STRING_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static MARs_ENABLE:Z = false

.field public static final POLICY_NUM_APPLOCKER:I = 0x3

.field public static final POLICY_NUM_AUTORUN:I = 0x4

.field public static final POLICY_NUM_GCMLOCKER:I = 0x2

.field public static final POLICY_NUM_SPCM:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING:I = 0xc

.field public static final POLICY_TARGET_CATEGORY_ALWAYS_OPTIMIZING_AND_NOTUSEDRECENTLY:I = 0xd

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field public static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field public static final POLICY_TARGET_CATEGORY_AUTO_OPTIMIZING:I = 0xa

.field public static final POLICY_TARGET_CATEGORY_TURNED_OFF:I = 0xb

.field public static final POLICY_TARGET_CATEGORY_USINGGCM:I = 0x2

.field static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_APPLOCKER:I = 0x13b8110

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_AUTORUN:I = 0x390880

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_GCMLOCKER:I = 0x1008112

.field public static final RESTRICTION_TYPES_COLLECTION_FOR_SPCM:I = 0x0

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCKALL:I = 0x1

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTFG:I = 0x2

.field public static final RESTRICTION_TYPE_ACTIVITY_BLOCK_EXCEPTSYSTEM:I = 0x4

.field public static final RESTRICTION_TYPE_BACKUP_BLOCKALL:I = 0x1000000

.field public static final RESTRICTION_TYPE_BLOCK_AUTO_RUN:I = 0x10000000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCKALL:I = 0x1000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_C2DM:I = 0x8000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_EDGE_INTENT:I = 0x80000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMFG:I = 0x2000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMLAUNCHER:I = 0x100000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_FROMSYSTEM:I = 0x4000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_GEAR_INTENT:I = 0x10000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_HIGH_PRIORITY_GCM:I = 0x40000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_KIES_INTENT:I = 0x200000

.field public static final RESTRICTION_TYPE_BROADCAST_BLOCK_EXCEPT_SPECIALINTENTS_FOR_SKT:I = 0x20000

.field public static final RESTRICTION_TYPE_NONE:I = 0x0

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCKALL:I = 0x100

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_AUTORUNBLOCK:I = 0x800

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTFG:I = 0x200

.field public static final RESTRICTION_TYPE_PROVIDER_BLOCK_EXCEPTSYSTEM:I = 0x400

.field public static final RESTRICTION_TYPE_SERVICE_BLOCKALL:I = 0x10

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_AUTORUNBLOCK:I = 0x80

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTFG:I = 0x20

.field public static final RESTRICTION_TYPE_SERVICE_BLOCK_EXCEPTSYSTEM:I = 0x40

.field public static final SERVICE_KILL_LIMIT_OF_ADJ:I = 0xe

.field static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field static final TAG_NONSTICKY_KILL:Ljava/lang/String; = "MARs-NonSticky-Kill-"


# instance fields
.field public final MOVE_TO_INACTIVE_TIME_INTERNAL:J

.field public final SPCM_BASE_PACKAGE_SCORE:I

.field private final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

.field private UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

.field private final UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

.field private final UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

.field private appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private mActiveAdminsUpdated:Z

.field private mAllPoliciesOn:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAppUsedRecently:Z

.field mContext:Landroid/content/Context;

.field private mCurrentHomePackage:Ljava/lang/String;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field private mDataConnectionIsConnected:Z

.field private mDefaultIMEPackage:Ljava/lang/String;

.field private mFirstTimeUpdatePackages:Z

.field private mLastUpdatePackagesScoreTime:J

.field public mLatestProtectedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;",
            ">;"
        }
    .end annotation
.end field

.field private mLockingTimeChanged:Z

.field private final mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mMARsUpdatePackagesThread:Ljava/lang/Thread;

.field private mManagedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningLocationPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mSpecialSKTPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
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

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field private mUnusedAutoFreezeTime:J

.field private mUnusedLockingTime:J

.field private mVpnServicePackage:Ljava/lang/String;

.field private mWallpaperPackage:Ljava/lang/String;

.field private mWhiteListIntentsForSKT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public spcmPolicyTrigger:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 84
    sput-boolean v0, DEBUG_MARs:Z

    .line 86
    const-string/jumbo v1, "sys.config.mars"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :goto_16
    sput-boolean v0, MARs_ENABLE:Z

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v2, p0, mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 98
    iput-object v2, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 343
    iput-object v2, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 346
    iput-object v2, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 351
    iput-object v2, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 354
    iput-object v2, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPolicyExceptionList:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRestrictedPackages:Ljava/util/ArrayList;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mManagedPackages:Ljava/util/ArrayList;

    .line 404
    iput-boolean v4, p0, mScreenOn:Z

    .line 408
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    .line 409
    iget-wide v0, p0, UNUSEDPACKAGES_DEFAULT_LOCKING_TIME:J

    iput-wide v0, p0, mUnusedLockingTime:J

    .line 410
    iput-boolean v3, p0, mLockingTimeChanged:Z

    .line 411
    iput v4, p0, mAllPoliciesOn:I

    .line 412
    iput-boolean v4, p0, mFirstTimeUpdatePackages:Z

    .line 413
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J

    .line 416
    iput-boolean v3, p0, spcmPolicyTrigger:Z

    .line 418
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, MOVE_TO_INACTIVE_TIME_INTERNAL:J

    .line 419
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J

    .line 420
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, UPDATE_PACKAGES_SCORE_INTERNAL_TIME:J

    .line 421
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastUpdatePackagesScoreTime:J

    .line 422
    const/16 v0, 0x2710

    iput v0, p0, SPCM_BASE_PACKAGE_SCORE:I

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    .line 432
    iput-boolean v3, p0, mDataConnectionIsConnected:Z

    .line 433
    iput-boolean v3, p0, mAppUsedRecently:Z

    .line 434
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, mUnusedAutoFreezeTime:J

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRunningLocationPackages:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOngoingNotificationList:Ljava/util/ArrayList;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNotificationListenerList:Ljava/util/ArrayList;

    .line 459
    iput-object v2, p0, mVpnServicePackage:Ljava/lang/String;

    .line 460
    iput-object v2, p0, mWallpaperPackage:Ljava/lang/String;

    .line 461
    iput-object v2, p0, mDefaultIMEPackage:Ljava/lang/String;

    .line 462
    iput-object v2, p0, mCurrentHomePackage:Ljava/lang/String;

    .line 463
    iput-boolean v3, p0, mActiveAdminsUpdated:Z

    .line 465
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MARsPolicyManager$1;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    iput-object v0, p0, mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSpecialSKTPackages:Ljava/util/ArrayList;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    .line 510
    iput-object p1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    .line 511
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 512
    new-instance v0, Lcom/android/server/am/MARsTrigger;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, mTrigger:Lcom/android/server/am/MARsTrigger;

    .line 513
    new-instance v0, Lcom/android/server/am/MARsDBManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V

    iput-object v0, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    .line 514
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-object v0, p0, mOngoingNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-object v0, p0, mDefaultIMEPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-object v0, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, mDefaultIMEPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-object v0, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    invoke-direct {p0}, updateSMDBValues()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    invoke-direct {p0}, getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-object v0, p0, mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsPolicyManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, updatePackagesScore(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-object v0, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    invoke-direct {p0}, updateLaunchedBeforeInitToManaged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsPolicyManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    iget-boolean v0, p0, mActiveAdminsUpdated:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/am/MARsPolicyManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, mActiveAdminsUpdated:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsPolicyManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 82
    invoke-direct {p0}, updateActiveAdminsToManaged()V

    return-void
.end method

.method private appLockerStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 2838
    packed-switch p1, :pswitch_data_14

    .line 2850
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2840
    :pswitch_5
    const-string v0, "PACKAGE_AUTO_OPTIMIZING                (extras 0)"

    goto :goto_4

    .line 2842
    :pswitch_8
    const-string v0, "PACKAGE_ALWAYS_OPTIMIZING              (extras 9)"

    goto :goto_4

    .line 2844
    :pswitch_b
    const-string v0, "PACKAGE_TURNED_OFF                     (extras 9)"

    goto :goto_4

    .line 2846
    :pswitch_e
    const-string v0, "PACKAGE_AUTO_OPTIMIZING_NOTUSEDRECENTLY(extras 1)"

    goto :goto_4

    .line 2848
    :pswitch_11
    const-string v0, "PACKAGE_SETTO_AUTO_OPTIMIZING          (extras 2)"

    goto :goto_4

    .line 2838
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method private covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "strIsSMFreezed"    # Ljava/lang/String;
    .param p2, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 2545
    const/4 v0, 0x0

    .line 2547
    .local v0, "state":I
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2548
    const/4 v0, 0x2

    .line 2560
    :cond_12
    :goto_12
    return v0

    .line 2549
    :cond_13
    const-string v1, "9"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2550
    const/4 v0, 0x1

    goto :goto_12

    .line 2552
    :cond_25
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2553
    const/4 v0, 0x0

    goto :goto_12

    .line 2554
    :cond_2f
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2555
    const/4 v0, 0x3

    goto :goto_12

    .line 2556
    :cond_39
    const-string v1, "2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2557
    const/4 v0, 0x4

    goto :goto_12
.end method

.method private covertStateToDBExtrasValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 2564
    packed-switch p1, :pswitch_data_16

    .line 2576
    const-string v0, "0"

    :goto_5
    return-object v0

    .line 2566
    :pswitch_6
    const-string v0, "0"

    goto :goto_5

    .line 2568
    :pswitch_9
    const-string v0, "9"

    goto :goto_5

    .line 2570
    :pswitch_c
    const-string v0, "9"

    goto :goto_5

    .line 2572
    :pswitch_f
    const-string v0, "1"

    goto :goto_5

    .line 2574
    :pswitch_12
    const-string v0, "2"

    goto :goto_5

    .line 2564
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private createPolicies()V
    .registers 29

    .prologue
    .line 585
    const-string/jumbo v2, "sys.config.mars_spcm"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/4 v7, 0x1

    .line 586
    .local v7, "spcmPolicyEnabled":Z
    :goto_14
    new-instance v2, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "spcmpolicy"

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 592
    const-string/jumbo v2, "sys.config.mars_gcmlocker"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    const/4 v13, 0x1

    .line 593
    .local v13, "gcmLockerPolicyEnabled":Z
    :goto_39
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const v12, 0x1008112

    const-string/jumbo v14, "gcmlockerpolicy"

    const/4 v15, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v8, v0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 599
    const-string/jumbo v2, "sys.config.mars_applocker"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const/16 v19, 0x1

    .line 601
    .local v19, "appLockerPolicyEnabled":Z
    :goto_62
    new-instance v14, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v16, 0xd

    const/16 v17, 0x1

    const v18, 0x13b8110

    const-string v20, "applockerpolicy"

    const/16 v21, 0x3

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v21}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 607
    const-string/jumbo v2, "sys.config.mars_autorun"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    const/16 v25, 0x1

    .line 608
    .local v25, "autoRunPolicyEnabled":Z
    :goto_8c
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v22, 0x15

    const/16 v23, 0x2

    const v24, 0x390880

    const-string v26, "autorunpolicy"

    const/16 v27, 0x4

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v27}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;IIIZLjava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 613
    return-void

    .line 585
    .end local v7    # "spcmPolicyEnabled":Z
    .end local v13    # "gcmLockerPolicyEnabled":Z
    .end local v19    # "appLockerPolicyEnabled":Z
    .end local v25    # "autoRunPolicyEnabled":Z
    :cond_a5
    const/4 v7, 0x0

    goto/16 :goto_14

    .line 592
    .restart local v7    # "spcmPolicyEnabled":Z
    :cond_a8
    const/4 v13, 0x0

    goto :goto_39

    .line 599
    .restart local v13    # "gcmLockerPolicyEnabled":Z
    :cond_aa
    const/16 v19, 0x0

    goto :goto_62

    .line 607
    .restart local v19    # "appLockerPolicyEnabled":Z
    :cond_ad
    const/16 v25, 0x0

    goto :goto_8c
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1982
    iget-object v0, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1983
    return-void
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .registers 6
    .param p1, "dateTime"    # J

    .prologue
    .line 2854
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "null"

    .line 2855
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x20015

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 879
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v3, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->targetCategory:I

    .line 882
    .local v0, "category":I
    if-ne v0, v5, :cond_34

    .line 883
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 943
    :cond_11
    iget-object v4, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v4, :cond_11b

    iget-object v4, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v4, :cond_11b

    .line 944
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11b

    .line 945
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 946
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_31

    .line 947
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 948
    add-int/lit8 v1, v1, -0x1

    .line 944
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 885
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_34
    if-ne v0, v6, :cond_55

    .line 886
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_37
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 887
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 888
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->isUsingGcm:Z

    if-eqz v4, :cond_52

    iget-boolean v4, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v4, :cond_52

    .line 889
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 893
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_55
    const/16 v4, 0xa

    if-ne v0, v4, :cond_74

    .line 894
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5a
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 895
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 896
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v4, :cond_71

    .line 897
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 900
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_74
    const/16 v4, 0xb

    if-ne v0, v4, :cond_93

    .line 901
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_79
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 902
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 903
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v6, :cond_90

    .line 904
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 907
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_93
    const/16 v4, 0xc

    if-ne v0, v4, :cond_b2

    .line 908
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_98
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 909
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 910
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v5, :cond_af

    .line 911
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 914
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_b2
    const/16 v4, 0xd

    if-ne v0, v4, :cond_d5

    .line 915
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b7
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 916
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 917
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-eq v4, v5, :cond_cf

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_d2

    .line 919
    :cond_cf
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 924
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_d5
    const/16 v4, 0x14

    if-ne v0, v4, :cond_f4

    .line 925
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_da
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 926
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 927
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v4, :cond_f1

    .line 928
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_f1
    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    .line 931
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_f4
    const/16 v4, 0x15

    if-ne v0, v4, :cond_11

    .line 932
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f9
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_11

    .line 933
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 934
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-eqz v4, :cond_115

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-ne v4, v5, :cond_118

    iget v4, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-ne v4, v7, :cond_118

    .line 936
    :cond_115
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_118
    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    .line 953
    .end local v1    # "i":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_11b
    return-object v3
.end method

.method private getActiveAdminsPackages()Ljava/util/ArrayList;
    .registers 9
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
    .line 1160
    const/4 v1, 0x0

    .line 1161
    .local v1, "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 1162
    .local v5, "mDpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 1164
    .local v0, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_35

    .line 1165
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .restart local v1    # "activeDeviceAdminPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1167
    .local v3, "cmpName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "adminPkgName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1169
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1173
    .end local v2    # "adminPkgName":Ljava/lang/String;
    .end local v3    # "cmpName":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_35
    return-object v1
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_29

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 999
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 1001
    aget-object v0, v1, v4

    .line 1005
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_29
    return-object v0
.end method

.method private getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2335
    iget-object v2, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    if-eqz v2, :cond_21

    .line 2336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 2337
    iget-object v2, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 2338
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2342
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_1d
    return-object v1

    .line 2336
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2342
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_21
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/am/MARsPackageStatus;"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    if-eqz p1, :cond_1b

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 727
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageStatus;

    .line 728
    .local v1, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 732
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :goto_17
    return-object v1

    .line 726
    .restart local v0    # "i":I
    .restart local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 732
    .end local v0    # "i":I
    .end local v1    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I
    .registers 32
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .param p6, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPackageStatus;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;JJ)I"
        }
    .end annotation

    .prologue
    .line 2704
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p2

    array-length v4, v0

    .line 2705
    .local v4, "count":I
    const/16 v17, 0x0

    .line 2706
    .local v17, "score":I
    const v5, 0x20015

    .line 2713
    .local v5, "dateFormatFlags":I
    if-lez v4, :cond_45

    .line 2714
    const/16 v20, 0x0

    aget-object v2, p2, v20

    .line 2716
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .line 2717
    .local v6, "foreground_score":I
    const/4 v12, 0x0

    .line 2719
    .local v12, "lasttime_score":I
    const-wide/16 v8, 0x0

    .line 2720
    .local v8, "foregroundtime":J
    const-wide/16 v10, 0x0

    .line 2721
    .local v10, "lasttime":J
    const/4 v7, 0x0

    .line 2723
    .local v7, "found":Z
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2724
    .local v3, "activityName":Ljava/lang/String;
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2725
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2734
    .local v16, "processName":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_1e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_3f

    .line 2736
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    .line 2738
    .local v15, "pkgstat":Landroid/app/usage/UsageStats;
    iget-object v0, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_46

    .line 2739
    iget-wide v8, v15, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 2740
    iget-wide v10, v15, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 2741
    const/4 v7, 0x1

    .line 2746
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_3f
    if-nez v7, :cond_49

    .line 2748
    const/4 v6, 0x0

    .line 2749
    const/4 v12, 0x0

    .line 2768
    :goto_43
    add-int v17, v6, v12

    .line 2772
    .end local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "activityName":Ljava/lang/String;
    .end local v6    # "foreground_score":I
    .end local v7    # "found":Z
    .end local v8    # "foregroundtime":J
    .end local v10    # "lasttime":J
    .end local v12    # "lasttime_score":I
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg_i":I
    .end local v16    # "processName":Ljava/lang/String;
    :cond_45
    return v17

    .line 2734
    .restart local v2    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activityName":Ljava/lang/String;
    .restart local v6    # "foreground_score":I
    .restart local v7    # "found":Z
    .restart local v8    # "foregroundtime":J
    .restart local v10    # "lasttime":J
    .restart local v12    # "lasttime_score":I
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "pkg_i":I
    .restart local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    .restart local v16    # "processName":Ljava/lang/String;
    :cond_46
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 2752
    .end local v15    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_49
    const-wide/16 v20, 0x0

    cmp-long v20, p4, v20

    if-eqz v20, :cond_58

    .line 2753
    const-wide/16 v20, 0x2710

    mul-long v20, v20, v8

    div-long v20, v20, p4

    move-wide/from16 v0, v20

    long-to-int v6, v0

    .line 2755
    :cond_58
    if-nez v6, :cond_61

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_61

    .line 2756
    const/4 v6, 0x1

    .line 2758
    :cond_61
    if-lez v6, :cond_65

    .line 2759
    add-int/lit16 v6, v6, 0x7d0

    .line 2761
    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v18, v20, v10

    .line 2762
    .local v18, "tmptime":J
    const-wide/16 v20, 0x2710

    const-wide/16 v22, 0x2710

    mul-long v22, v22, v18

    div-long v22, v22, p6

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v12, v0

    .line 2765
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    goto :goto_43
.end method

.method private getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I
    .registers 18
    .param p1, "providers"    # [Landroid/content/pm/ProviderInfo;

    .prologue
    .line 2797
    const/4 v9, 0x0

    .line 2798
    .local v9, "score":I
    const/4 v11, 0x0

    .line 2799
    .local v11, "tmpscore":I
    if-eqz p1, :cond_60

    move-object/from16 v0, p1

    array-length v12, v0

    if-lez v12, :cond_60

    .line 2800
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v3, v12, :cond_60

    .line 2801
    aget-object v4, p1, v3

    .line 2803
    .local v4, "pInfo":Landroid/content/pm/ProviderInfo;
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 2804
    .local v8, "providerName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 2805
    .local v6, "processName":Ljava/lang/String;
    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 2807
    .local v5, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2808
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v12, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v15, 0x1

    invoke-virtual {v12, v6, v14, v15}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 2809
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_53

    .line 2810
    const/16 v11, 0x3e8

    .line 2813
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "proi":I
    :goto_35
    if-ltz v7, :cond_53

    .line 2814
    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    .line 2816
    .local v2, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5a

    .line 2818
    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2819
    .local v10, "size":I
    if-lez v10, :cond_53

    .line 2820
    add-int/lit16 v11, v11, 0xfa0

    .line 2825
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    .end local v10    # "size":I
    :cond_53
    monitor-exit v13

    .line 2827
    if-le v11, v9, :cond_57

    move v9, v11

    .line 2800
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2813
    .restart local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v7    # "proi":I
    :cond_5a
    add-int/lit8 v7, v7, -0x1

    goto :goto_35

    .line 2825
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v7    # "proi":I
    :catchall_5d
    move-exception v12

    monitor-exit v13
    :try_end_5f
    .catchall {:try_start_1c .. :try_end_5f} :catchall_5d

    throw v12

    .line 2831
    .end local v3    # "i":I
    .end local v4    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "processName":Ljava/lang/String;
    .end local v8    # "providerName":Ljava/lang/String;
    :cond_60
    return v9
.end method

.method private getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I
    .registers 18
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "sevices"    # [Landroid/content/pm/ServiceInfo;
    .param p3, "lLockTime"    # J

    .prologue
    .line 2777
    const/4 v0, 0x0

    .line 2778
    .local v0, "lastActivityScore":I
    const/4 v4, 0x0

    .line 2782
    .local v4, "tmpScore":I
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->lastServiceActivityTime:J

    .line 2783
    .local v2, "lastActivityTime":J
    const/16 v1, 0x1388

    .line 2784
    .local v1, "serviceBaseScore":I
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_1d

    .line 2785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v2

    .line 2787
    .local v6, "tmptime":J
    cmp-long v5, v6, p3

    if-gez v5, :cond_1d

    .line 2788
    int-to-long v8, v1

    int-to-long v10, v1

    mul-long/2addr v10, v6

    div-long v10, v10, p3

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 2792
    .end local v6    # "tmptime":J
    :cond_1d
    return v0
.end method

.method private getRunningProcessImprotance(Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1009
    iget-object v3, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1010
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1011
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1012
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,getRunningProcessImprotance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 1017
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_48
    return v3

    :cond_49
    const/16 v3, 0x3e8

    goto :goto_48
.end method

.method private getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J
    .registers 26
    .param p2, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 2661
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string/jumbo v17, "usagestats"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 2663
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const-wide/16 v18, 0x0

    .line 2665
    .local v18, "totalForegroundtime_indays":J
    if-eqz v2, :cond_7e

    if-eqz p1, :cond_7e

    .line 2667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, p2

    .line 2668
    .local v4, "begintime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2669
    .local v6, "endtime":J
    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v16

    .line 2672
    .local v16, "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const v8, 0x20015

    .line 2677
    .local v8, "dateFormatFlags":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_70

    .line 2678
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    .line 2680
    .local v15, "pkgcnt":I
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_32
    if-ge v14, v15, :cond_7e

    .line 2681
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v9, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 2682
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v10, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 2683
    .local v10, "foregroundtime":J
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v12, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 2686
    .local v12, "lasttime":J
    cmp-long v3, v12, v4

    if-ltz v3, :cond_5f

    const-wide/32 v20, 0xea60

    add-long v20, v20, v6

    cmp-long v3, v12, v20

    if-lez v3, :cond_62

    .line 2680
    :cond_5f
    :goto_5f
    add-int/lit8 v14, v14, 0x1

    goto :goto_32

    .line 2689
    :cond_62
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    add-long v18, v18, v10

    goto :goto_5f

    .line 2696
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    .end local v14    # "pkg_i":I
    .end local v15    # "pkgcnt":I
    :cond_70
    sget-boolean v3, DEBUG_MARs:Z

    if-eqz v3, :cond_7e

    .line 2697
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v17, "getTotalForegroundtimeIndays no packages run activity in last 7 days!!! --- "

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    .end local v4    # "begintime":J
    .end local v6    # "endtime":J
    .end local v8    # "dateFormatFlags":I
    .end local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_7e
    return-wide v18
.end method

.method private hasOngoingNotification(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 979
    iget-object v1, p0, mOngoingNotificationList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 980
    iget-object v1, p0, mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 990
    :cond_d
    :goto_d
    return v0

    .line 985
    :cond_e
    iget-object v1, p0, mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    .line 986
    iget-object v1, p0, mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 990
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private initPolicyExceptionList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$PolicyException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1490
    if-nez p1, :cond_5

    .line 1512
    :goto_4
    return v4

    .line 1493
    :cond_5
    iget-object v6, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 1494
    :try_start_8
    iget-object v7, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1497
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_21

    if-eqz v0, :cond_21

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1499
    monitor-exit v6

    move v4, v5

    goto :goto_4

    .line 1502
    :cond_21
    iget-object v7, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    const v8, 0x7fffffff

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->getServices(II)Ljava/util/List;

    move-result-object v2

    .line 1503
    .local v2, "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1504
    .local v3, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v7, :cond_2f

    .line 1505
    if-eqz p1, :cond_2f

    iget-object v7, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v7, :cond_2f

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v8, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1507
    monitor-exit v6

    move v4, v5

    goto :goto_4

    .line 1510
    .end local v3    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_56
    monitor-exit v6

    goto :goto_4

    .end local v0    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "runningServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catchall_58
    move-exception v4

    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_8 .. :try_end_5a} :catchall_58

    throw v4
.end method

.method private isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "hostingType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1695
    if-eqz p1, :cond_40

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_40

    .line 1696
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1704
    .local v0, "callerPkgName":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    invoke-direct {p0, p2}, isRunningPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string/jumbo v2, "service"

    if-ne p3, v2, :cond_22

    invoke-direct {p0, v0, p2}, isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1707
    :cond_22
    invoke-direct {p0, v0}, isSamsungService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    invoke-direct {p0, p2}, isLauncherableApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-direct {p0, v0}, isLauncherableApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1708
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_3f

    .line 1709
    const-string v2, "MARsPolicyManager"

    const-string v3, "Blocked by AutoRun policy !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    .end local v0    # "callerPkgName":Ljava/lang/String;
    :cond_3f
    :goto_3f
    return v1

    .line 1699
    :cond_40
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_3f

    .line 1700
    const-string v2, "MARsPolicyManager"

    const-string v3, "Blocked by AutoRun policy !! -- Caller is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 1712
    .restart local v0    # "callerPkgName":Ljava/lang/String;
    :cond_4c
    invoke-direct {p0, v0, p2}, isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1713
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_3f

    .line 1714
    const-string v2, "MARsPolicyManager"

    const-string v3, "Blocked by AutoRun policy -- shouldBlock cases!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 1718
    :cond_5e
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;I)Z
    .registers 11
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;
    .param p2, "policyNum"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1223
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 1226
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_f

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_56

    .line 1227
    :cond_f
    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-lez v3, :cond_56

    .line 1228
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_3d

    .line 1229
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -has running widgets "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runningWidgets "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    .line 1349
    :goto_55
    return v1

    .line 1235
    :cond_56
    iget-object v3, p0, mVpnServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_8d

    iget-object v3, p0, mVpnServicePackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 1236
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_88

    .line 1237
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -vpnService package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_88
    const-string v2, "VpnServicePackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_55

    .line 1242
    :cond_8d
    iget-object v3, p0, mWallpaperPackage:Ljava/lang/String;

    if-eqz v3, :cond_c4

    iget-object v3, p0, mWallpaperPackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 1243
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_bf

    .line 1244
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -wallpaper package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_bf
    const-string v2, "WallpaperPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto :goto_55

    .line 1249
    :cond_c4
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, isDependsOnSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 1250
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_f0

    .line 1251
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -dependsOnSystem package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_f0
    const-string v2, "DependsOnSystemPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1257
    :cond_f6
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_100

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_133

    .line 1258
    :cond_100
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, hasOngoingNotification(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 1259
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_12c

    .line 1260
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -hasOngoingNotification!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_12c
    const-string/jumbo v2, "hasOngoingNotificationPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1267
    :cond_133
    iget-object v3, p0, mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v3, :cond_16b

    iget-object v3, p0, mDefaultIMEPackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 1268
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_165

    .line 1269
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -default inputMethod package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_165
    const-string v2, "DefaultIMEPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1275
    :cond_16b
    iget-boolean v3, p1, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-eqz v3, :cond_199

    .line 1276
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_193

    .line 1277
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -is active device admin package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_193
    const-string v2, "ActiveDeviceAdminPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1283
    :cond_199
    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1d9

    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1d9

    if-ne p2, v1, :cond_1d9

    .line 1284
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d9

    .line 1285
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_1d3

    .line 1286
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -in latest protected packageslist for SPCM!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_1d3
    const-string v2, "LatestProtectedPackages"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1294
    :cond_1d9
    iget-boolean v3, p0, mScreenOn:Z

    if-nez v3, :cond_211

    if-eq p2, v1, :cond_211

    .line 1295
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, isMusicOrRecordActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_211

    .line 1296
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_20b

    .line 1297
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isMusicOrRecordActive!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_20b
    const-string v2, "MusicOrRecordActivePackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1304
    :cond_211
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_381

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_381

    .line 1306
    iget-object v3, p0, mCurrentHomePackage:Ljava/lang/String;

    if-eqz v3, :cond_253

    iget-object v3, p0, mCurrentHomePackage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_253

    .line 1307
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_24d

    .line 1308
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -current home package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_24d
    const-string v2, "CurrentHomePackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1314
    :cond_253
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, isForegroundPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_285

    .line 1315
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_27f

    .line 1316
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -foreground package!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_27f
    const-string v2, "ForegroundPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1322
    :cond_285
    iget-object v3, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, isActiveTrafficExisting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b7

    .line 1323
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_2b1

    .line 1324
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isActiveTrafficExisting!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_2b1
    const-string v2, "ActiveTrafficExistingPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .line 1329
    :cond_2b7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, mUnusedAutoFreezeTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2f7

    move v0, v1

    .line 1330
    .local v0, "isUnusedAppTimeExpired":Z
    :goto_2c5
    iget v3, p1, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_2f9

    if-nez v0, :cond_2f9

    .line 1331
    iput-boolean v1, p0, mAppUsedRecently:Z

    .line 1332
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_2f1

    .line 1333
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Used in last 15 mins!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_2f1
    const-string v2, "UsedRecentlyPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .end local v0    # "isUnusedAppTimeExpired":Z
    :cond_2f7
    move v0, v2

    .line 1329
    goto :goto_2c5

    .line 1338
    .restart local v0    # "isUnusedAppTimeExpired":Z
    :cond_2f9
    iget-object v3, p0, mRunningLocationPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_381

    iget-object v3, p0, mRunningLocationPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_381

    const-string v3, "com.baidu.BaiduMap"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_357

    const-string v3, "com.autonavi.minimap"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_357

    const-string v3, "com.autonavi.xmgd.navigator"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_357

    const-string v3, "com.tencent.map"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_357

    const-string v3, "com.sogou.map.android.maps"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_357

    const-string v3, "com.baidu.navi"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_357

    const-string v3, "com.mapbar.android.mapbarmap"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_357

    const-string v3, "com.uu.uunavi"

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_381

    .line 1343
    :cond_357
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_37b

    .line 1344
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentImportantPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - isRunningLocationPackages!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_37b
    const-string v2, "RunningLocationPackage"

    iput-object v2, p1, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    goto/16 :goto_55

    .end local v0    # "isUnusedAppTimeExpired":Z
    :cond_381
    move v1, v2

    .line 1349
    goto/16 :goto_55
.end method

.method private isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1615
    if-eqz p1, :cond_30

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_30

    iget-object v0, p0, mCurrentHomePackage:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, mCurrentHomePackage:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1617
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from Current Launcher app :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    const/4 v0, 0x1

    .line 1620
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private isDependsOnSystem(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 968
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "system"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 970
    .local v0, "prSystem":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1b

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1b

    .line 971
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 972
    const/4 v1, 0x1

    .line 975
    :cond_1b
    return v1
.end method

.method private isEdgeIntent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1590
    if-eqz p1, :cond_14

    const-string v0, "com.samsung.android.cocktail.action.COCKTAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "com.samsung.android.cocktail.v2.action.COCKTAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1594
    :cond_12
    const/4 v0, 0x1

    .line 1596
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isForegroundPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 957
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->resumedAppForMARsLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 958
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 961
    .local v1, "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :goto_a
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 962
    const/4 v2, 0x1

    .line 964
    :goto_15
    return v2

    .line 958
    .end local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a

    .line 964
    .restart local v1    # "TOP_APP":Lcom/android/server/am/ProcessRecord;
    :cond_18
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1560
    if-eqz p1, :cond_36

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_36

    const-string v0, "com.samsung.accessory"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p2, :cond_36

    const-string v0, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.samsung.accessory.action.REGISTER_AGENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1567
    :cond_34
    const/4 v0, 0x1

    .line 1569
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private isInPolicyExceptionList(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyNum"    # I

    .prologue
    const/4 v2, 0x1

    .line 741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_46

    .line 742
    iget-object v3, p0, mPolicyExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$PolicyException;

    .line 743
    .local v1, "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager$PolicyException;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$PolicyException;->exception:I

    add-int/lit8 v4, p2, -0x1

    shl-int v4, v2, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_43

    .line 745
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInPolicyExceptionList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in whitelist!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .end local v1    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :goto_42
    return v2

    .line 741
    .restart local v1    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 751
    .end local v1    # "pe":Lcom/android/server/am/MARsPolicyManager$PolicyException;
    :cond_46
    const-string v3, ".cts."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, ".cts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 753
    :cond_56
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--is CTS Package, exclude!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 759
    :cond_6f
    const-string v3, "com.samsung.accessory"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 760
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--Shouldn\'t be killed!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 764
    :cond_90
    const/4 v2, 0x0

    goto :goto_42
.end method

.method private isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1601
    if-eqz p1, :cond_36

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_36

    const-string v0, "com.wssnps"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p2, :cond_36

    const-string v0, "com.sec.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.sec.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1608
    :cond_34
    const/4 v0, 0x1

    .line 1610
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private isLauncherableApp(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1646
    const-string v4, "com.baidu.searchbox_samsung"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1660
    :cond_9
    :goto_9
    return v3

    .line 1650
    :cond_a
    :try_start_a
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1651
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1652
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_9

    .line 1653
    sget-boolean v4, DEBUG_MARs:Z

    if-eqz v4, :cond_32

    .line 1654
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoRun Policy isLauncherableApp -- Not launcherable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_34

    .line 1655
    :cond_32
    const/4 v3, 0x0

    goto :goto_9

    .line 1657
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_34
    move-exception v0

    .line 1658
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLaucherableApp exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private isMusicOrRecordActive(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1021
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1022
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    new-instance v3, Landroid/media/SamsungAudioManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    .line 1024
    .local v3, "mSamsungAudioManager":Landroid/media/SamsungAudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 1025
    .local v1, "mMusicIsActive":Z
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v2

    .line 1027
    .local v2, "mRecordIsActive":Z
    if-eqz v1, :cond_2f

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-direct {p0, p1}, hasOngoingNotification(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-direct {p0, p1}, getRunningProcessImprotance(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_37

    :cond_2f
    if-eqz v2, :cond_39

    invoke-virtual {v3, p1}, Landroid/media/SamsungAudioManager;->isUsingAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1030
    :cond_37
    const/4 v4, 0x1

    .line 1032
    :goto_38
    return v4

    :cond_39
    const/4 v4, 0x0

    goto :goto_38
.end method

.method private isRunningPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1353
    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1354
    .local v2, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1355
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1356
    const/4 v3, 0x1

    .line 1359
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_22
    return v3
.end method

.method private isSamsungService(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1625
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "com.sec."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "com.samsung."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1626
    :cond_1b
    sget-boolean v1, DEBUG_MARs:Z

    if-eqz v1, :cond_37

    .line 1627
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SamsungService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_37
    :goto_37
    return v0

    .line 1631
    :cond_38
    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "com.baidu.searchbox_samsung"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "com.baidu.netdisk_ss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_50
    move v0, v1

    .line 1633
    goto :goto_37

    .line 1636
    :cond_52
    invoke-direct {p0, p1}, isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1637
    sget-boolean v1, DEBUG_MARs:Z

    if-eqz v1, :cond_37

    .line 1638
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoRun Policy isSamsungService -- SystemPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :cond_75
    move v0, v1

    .line 1642
    goto :goto_37
.end method

.method private isShouldBlockCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;

    .prologue
    .line 1664
    const-string v0, "com.sec.android.cloudagent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "com.baidu.netdisk_ss"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1665
    const/4 v0, 0x1

    .line 1667
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isShouldSkipCaseForAutoRun(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "callee"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1671
    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "com.alipay.android.app"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1672
    :cond_11
    sget-boolean v1, DEBUG_MARs:Z

    if-eqz v1, :cond_38

    .line 1673
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldSkipCaseForAutoRun: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_38
    :goto_38
    return v0

    .line 1676
    :cond_39
    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1677
    :cond_49
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldSkipCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called with screen on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1680
    :cond_69
    const-string v1, "com.cmcc.sso"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1681
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldSkipCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1684
    :cond_8b
    invoke-direct {p0, p1}, isForegroundPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    const-string v1, "com.sina.weibo"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 1685
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShouldSkipCase: Foreground caller and callee = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1688
    :cond_b3
    const/4 v0, 0x0

    goto :goto_38
.end method

.method private isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1574
    iget-object v2, p0, mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1575
    iget-object v2, p0, mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1576
    .local v1, "theIntent":Ljava/lang/String;
    if-eqz p2, :cond_e

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1577
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_48

    .line 1578
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specila Intent for speical SKT package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_48
    const/4 v2, 0x1

    .line 1585
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "theIntent":Ljava/lang/String;
    :goto_49
    return v2

    :cond_4a
    const/4 v2, 0x0

    goto :goto_49
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1518
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1519
    if-eqz p1, :cond_d

    .line 1520
    :try_start_7
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-gtz v3, :cond_1a

    .line 1521
    monitor-exit v2

    .line 1528
    :goto_c
    return v0

    .line 1524
    :cond_d
    if-eqz p3, :cond_13

    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_18

    :cond_13
    :goto_13
    monitor-exit v2

    goto :goto_c

    .line 1526
    :catchall_15
    move-exception v0

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v0

    :cond_18
    move v0, v1

    .line 1524
    goto :goto_13

    .line 1526
    :cond_1a
    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_15

    move v0, v1

    .line 1528
    goto :goto_c
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1533
    :try_start_1
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1534
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1536
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_f

    .line 1555
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_e
    :goto_e
    return v4

    .line 1540
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_f
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    .line 1544
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_20} :catch_25

    move-result v2

    .line 1547
    .local v2, "match":I
    if-ltz v2, :cond_e

    .line 1548
    const/4 v4, 0x1

    goto :goto_e

    .line 1552
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "match":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_25
    move-exception v1

    .line 1553
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSystemPackage exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1975
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1976
    :try_start_3
    iget-object v0, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1977
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private printlogs_AllList_test()V
    .registers 7

    .prologue
    .line 3024
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mManagedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_81

    .line 3026
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3027
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--Score  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--State  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 3031
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_81
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRestrictedPackages --- size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    const/4 v0, 0x0

    :goto_a1
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_10b

    .line 3033
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 3034
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--PackageName  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    const-string v3, "MARsPolicyManager"

    const-string v4, "--appliedPolicies  "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_100

    .line 3037
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d7
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_108

    .line 3038
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    .line 3041
    .end local v1    # "j":I
    :cond_100
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "null"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_108
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 3044
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_10b
    return-void
.end method

.method private registerDefaultInputMethodChanged()V
    .registers 6

    .prologue
    .line 1198
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/MARsPolicyManager$2;-><init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1207
    return-void
.end method

.method private registerNotificationListener()V
    .registers 7

    .prologue
    .line 1211
    :try_start_0
    iget-object v1, p0, mMARsNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1217
    :goto_1b
    return-void

    .line 1214
    :catch_1c
    move-exception v0

    .line 1215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MARsPolicyManager"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method private runMARsUpdatePackagesThread()V
    .registers 3

    .prologue
    .line 2269
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$7;

    const-string v1, "MARsUpdatePackages"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsPolicyManager$7;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    iput-object v0, p0, mMARsUpdatePackagesThread:Ljava/lang/Thread;

    .line 2331
    iget-object v0, p0, mMARsUpdatePackagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2332
    return-void
.end method

.method private turnOffPolicies()V
    .registers 4

    .prologue
    .line 665
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 667
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v2}, cancelPolicy(Ljava/lang/String;I)V

    .line 669
    iget-object v0, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_11

    .line 670
    iget-object v0, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 671
    :cond_11
    iget-object v0, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_1a

    .line 672
    iget-object v0, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 673
    :cond_1a
    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_23

    .line 674
    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 675
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 677
    iget-object v0, p0, mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v0}, Lcom/android/server/am/MARsTrigger;->unregisterReceiver()V

    .line 678
    return-void

    .line 675
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private turnOnPolicies()V
    .registers 4

    .prologue
    .line 652
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 653
    :try_start_3
    iget-object v0, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_c

    .line 654
    iget-object v0, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 657
    :cond_c
    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_15

    .line 658
    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 659
    :cond_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1d

    .line 661
    iget-object v0, p0, mTrigger:Lcom/android/server/am/MARsTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 662
    return-void

    .line 659
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private updateActiveAdminsToManaged()V
    .registers 7

    .prologue
    .line 1182
    invoke-direct {p0}, getActiveAdminsPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1183
    .local v0, "activeAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_28

    .line 1184
    iget-object v5, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_27

    .line 1186
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1187
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v3

    .line 1188
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v3, :cond_24

    .line 1189
    invoke-virtual {p0, v3}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 1190
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 1185
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1193
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_27
    monitor-exit v5

    .line 1195
    .end local v1    # "i":I
    :cond_28
    return-void

    .line 1193
    .restart local v1    # "i":I
    :catchall_29
    move-exception v4

    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v4
.end method

.method private updateLaunchedBeforeInitToManaged()V
    .registers 7

    .prologue
    .line 2346
    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v3, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 2348
    iget-object v3, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .line 2349
    .local v1, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 2350
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_25

    .line 2351
    invoke-virtual {p0, v2}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2352
    iget v3, v1, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 2347
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2355
    .end local v1    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_28
    iget-object v3, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2356
    monitor-exit v4

    .line 2357
    return-void

    .line 2356
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method private updatePackagesScore(Ljava/lang/String;)V
    .registers 28
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2583
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_1f

    .line 2584
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePackagesScore PackageInfo name -- "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_1f
    const/4 v15, 0x0

    .line 2588
    .local v15, "forceUpdatedOne":Z
    if-eqz p1, :cond_23

    .line 2589
    const/4 v15, 0x1

    .line 2591
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2592
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v8, v0, mLastUpdatePackagesScoreTime:J

    sub-long v8, v12, v8

    const-wide/32 v24, 0x927c0

    cmp-long v2, v8, v24

    if-gez v2, :cond_36

    if-eqz v15, :cond_113

    .line 2593
    :cond_36
    if-nez v15, :cond_40

    .line 2594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, mLastUpdatePackagesScoreTime:J

    .line 2597
    :cond_40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 2601
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 2604
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v2, v0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_112

    .line 2605
    move-object/from16 v0, p0

    iget-object v2, v0, mManagedPackages:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 2608
    .local v3, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_8d

    .line 2609
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_7c
    .catchall {:try_start_59 .. :try_end_7c} :catchall_b9

    move-result-object v20

    .line 2610
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/16 v14, 0xd

    .line 2613
    .local v14, "flags":I
    :try_start_7f
    iget-object v2, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 2614
    .local v19, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v19, :cond_8d

    .line 2615
    move-object/from16 v0, v19

    iput-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_8d} :catch_96
    .catchall {:try_start_7f .. :try_end_8d} :catchall_b9

    .line 2622
    .end local v14    # "flags":I
    .end local v19    # "pkginfo":Landroid/content/pm/PackageInfo;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v0, v3, Lcom/android/server/am/MARsPackageStatus;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    .line 2623
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    if-nez v18, :cond_bc

    .line 2604
    :cond_93
    :goto_93
    add-int/lit8 v16, v16, 0x1

    goto :goto_59

    .line 2617
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v14    # "flags":I
    .restart local v20    # "pm":Landroid/content/pm/PackageManager;
    :catch_96
    move-exception v11

    .line 2618
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageInfo package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not installed!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 2654
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "flags":I
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :catchall_b9
    move-exception v2

    monitor-exit v23
    :try_end_bb
    .catchall {:try_start_8d .. :try_end_bb} :catchall_b9

    throw v2

    .line 2626
    .restart local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .restart local v18    # "pi":Landroid/content/pm/PackageInfo;
    :cond_bc
    const/16 v17, 0x0

    .line 2629
    .local v17, "packageScore":I
    if-eqz v15, :cond_ce

    if-eqz v15, :cond_93

    :try_start_c2
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 2631
    :cond_ce
    const/4 v10, 0x0

    .line 2632
    .local v10, "activityScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_e2

    .line 2633
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, getPackageActivityScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v10

    .line 2638
    :cond_e2
    const/16 v22, 0x0

    .line 2639
    .local v22, "serviceScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_f7

    .line 2640
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v8, v9}, getPackageServiceScore(Lcom/android/server/am/MARsPackageStatus;[Landroid/content/pm/ServiceInfo;J)I

    move-result v22

    .line 2644
    :cond_f7
    const/16 v21, 0x0

    .line 2645
    .local v21, "providerScore":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_109

    .line 2646
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v21

    .line 2649
    :cond_109
    add-int v2, v10, v22

    add-int v17, v2, v21

    .line 2651
    move/from16 v0, v17

    iput v0, v3, Lcom/android/server/am/MARsPackageStatus;->score:I

    goto :goto_93

    .line 2654
    .end local v3    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "activityScore":I
    .end local v17    # "packageScore":I
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    .end local v21    # "providerScore":I
    .end local v22    # "serviceScore":I
    :cond_112
    monitor-exit v23
    :try_end_113
    .catchall {:try_start_c2 .. :try_end_113} :catchall_b9

    .line 2657
    .end local v5    # "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v6    # "totalForegroundtime_indays":J
    .end local v16    # "i":I
    :cond_113
    return-void
.end method

.method private updateSMDBValues()V
    .registers 19

    .prologue
    .line 2369
    sget-boolean v11, DEBUG_MARs:Z

    if-eqz v11, :cond_c

    .line 2370
    const-string v11, "MARsPolicyManager"

    const-string/jumbo v12, "updateSMDBValues"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2374
    .local v9, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/4 v7, 0x0

    .line 2376
    .local v7, "needTriggerAppLockerPolicy":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2378
    .local v2, "currentTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 2379
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v11, v0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_186

    .line 2380
    move-object/from16 v0, p0

    iget-object v11, v0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageStatus;

    .line 2383
    .local v8, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    if-gtz v11, :cond_6e

    iget-boolean v11, v8, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-nez v11, :cond_6e

    move-object/from16 v0, p0

    iget-object v11, v0, mWallpaperPackage:Ljava/lang/String;

    if-eqz v11, :cond_4a

    move-object/from16 v0, p0

    iget-object v11, v0, mWallpaperPackage:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6e

    :cond_4a
    move-object/from16 v0, p0

    iget-object v11, v0, mVpnServicePackage:Ljava/lang/String;

    if-eqz v11, :cond_5c

    move-object/from16 v0, p0

    iget-object v11, v0, mVpnServicePackage:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6e

    :cond_5c
    move-object/from16 v0, p0

    iget-object v11, v0, mDefaultIMEPackage:Ljava/lang/String;

    if-eqz v11, :cond_8d

    move-object/from16 v0, p0

    iget-object v11, v0, mDefaultIMEPackage:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 2387
    :cond_6e
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    .line 2388
    .local v4, "extras":Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v13, v14, v4}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    .local v10, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2391
    iput-wide v2, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 2395
    .end local v4    # "extras":Ljava/lang/String;
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_8d
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x2

    if-eq v11, v13, :cond_97

    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_9a

    .line 2379
    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 2400
    :cond_9a
    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_a7

    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x4

    if-ne v11, v13, :cond_c7

    .line 2402
    :cond_a7
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2405
    iput-wide v2, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 2406
    const/4 v11, 0x0

    iput v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    goto :goto_97

    .line 2454
    .end local v8    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :catchall_c4
    move-exception v11

    monitor-exit v12
    :try_end_c6
    .catchall {:try_start_1c .. :try_end_c6} :catchall_c4

    throw v11

    .line 2409
    .restart local v8    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_c7
    :try_start_c7
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_12f

    move-object/from16 v0, p0

    iget-boolean v11, v0, mLockingTimeChanged:Z

    if-eqz v11, :cond_12f

    .line 2411
    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v14, v2, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, mUnusedLockingTime:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-gez v11, :cond_97

    .line 2413
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    const/4 v11, 0x0

    iput v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 2419
    move-object/from16 v0, p0

    iget-object v11, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v11, :cond_112

    move-object/from16 v0, p0

    iget-object v11, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v11, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v11, :cond_112

    .line 2420
    iget-object v11, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, cancelPolicy(Ljava/lang/String;I)V

    .line 2424
    :cond_112
    move-object/from16 v0, p0

    iget-object v11, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v11, :cond_97

    move-object/from16 v0, p0

    iget-object v11, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v11, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v11, :cond_97

    .line 2425
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_97

    .line 2426
    iget-object v11, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, cancelPolicy(Ljava/lang/String;I)V

    goto/16 :goto_97

    .line 2431
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_12f
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v11, :cond_155

    iget-boolean v11, v8, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    if-eqz v11, :cond_155

    .line 2433
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2436
    iput-wide v2, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 2437
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto/16 :goto_97

    .line 2440
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_155
    iget v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    if-nez v11, :cond_97

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    sub-long v14, v2, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, mUnusedLockingTime:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-lez v11, :cond_97

    .line 2442
    new-instance v10, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    iget-object v11, v0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v14, v8, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-direct {v10, v11, v13, v14, v15}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    .restart local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    const/4 v11, 0x3

    iput v11, v8, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 2449
    const/4 v7, 0x0

    goto/16 :goto_97

    .line 2454
    .end local v8    # "ps":Lcom/android/server/am/MARsPackageStatus;
    .end local v10    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_186
    monitor-exit v12
    :try_end_187
    .catchall {:try_start_c7 .. :try_end_187} :catchall_c4

    .line 2456
    move-object/from16 v0, p0

    iget-object v11, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v11, :cond_1ba

    move-object/from16 v0, p0

    iget-object v11, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v11, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v11, :cond_1ba

    if-eqz v7, :cond_1ba

    .line 2458
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2459
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2460
    const-string v11, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2462
    move-object/from16 v0, p0

    iget-object v11, v0, mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2465
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v11, v0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v11, v9}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 2467
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, mLockingTimeChanged:Z

    .line 2468
    return-void
.end method


# virtual methods
.method cancelPolicy(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyNum"    # I

    .prologue
    .line 1458
    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5d

    .line 1460
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 1461
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz p1, :cond_21

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1459
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1464
    :cond_21
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_4e

    .line 1465
    if-eqz p2, :cond_41

    .line 1466
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_28
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    .line 1467
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPolicyManager$Policy;

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v3, p2, :cond_5a

    .line 1468
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1474
    .end local v1    # "j":I
    :cond_41
    if-eqz p2, :cond_4b

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4e

    .line 1475
    :cond_4b
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 1478
    :cond_4e
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v3, :cond_1e

    .line 1479
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1480
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 1466
    .restart local v1    # "j":I
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1483
    .end local v1    # "j":I
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_5d
    monitor-exit v4

    .line 1484
    return-void

    .line 1483
    :catchall_5f
    move-exception v3

    monitor-exit v4
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_5f

    throw v3
.end method

.method public dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2862
    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2863
    :try_start_3
    const-string v3, "ACTIVITY MANAGER MARs (dumpsys activity mars)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    const-string/jumbo v3, "mManagedPackages --- size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2866
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_cc

    .line 2869
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 2871
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v3, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_32

    iget-object v3, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_3c

    :cond_32
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_58

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_58

    .line 2873
    :cond_3c
    const-string v3, "--State "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v3}, appLockerStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2876
    const-string v3, "--resetTime "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v6, v7}, formatDateTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2880
    :cond_58
    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_70

    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_70

    .line 2881
    const-string v3, "--Score "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    if-nez v3, :cond_c5

    const-string v3, "0    "

    :goto_6d
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2885
    :cond_70
    iget-object v3, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_83

    iget-object v3, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_83

    .line 2886
    iget-boolean v3, v2, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    if-eqz v3, :cond_83

    .line 2887
    const-string v3, "--receivedGcm"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2892
    :cond_83
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_97

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_97

    .line 2893
    const-string v3, "--AutoRun "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2896
    :cond_97
    const-string v3, "--PackageName "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2899
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    if-eqz v3, :cond_af

    .line 2900
    const-string v3, "--SkipReason "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2904
    :cond_af
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, isRunningPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 2905
    const-string v3, "--Running "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2907
    :cond_bc
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    .line 2881
    :cond_c5
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6d

    .line 2910
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_cc
    const-string/jumbo v3, "mRestrictedPackages --- size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2911
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2912
    const/4 v0, 0x0

    :goto_dc
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_130

    .line 2913
    iget-object v3, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 2916
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    const-string v3, "--resetTime "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-direct {p0, v6, v7}, formatDateTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2918
    const-string v3, "--PackageName "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2919
    const-string v3, "--appliedPolicies "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2920
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-eqz v3, :cond_122

    .line 2921
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10e
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_128

    .line 2922
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2921
    add-int/lit8 v1, v1, 0x1

    goto :goto_10e

    .line 2925
    .end local v1    # "j":I
    :cond_122
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2928
    :cond_128
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    .line 2931
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_130
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_161

    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_161

    .line 2934
    const-string/jumbo v3, "mLatestProtectedPackages "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    const/4 v0, 0x0

    :goto_146
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_161

    .line 2936
    const-string v3, "--PackageName "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    add-int/lit8 v0, v0, 0x1

    goto :goto_146

    .line 2939
    :cond_161
    iget-object v3, p0, mWallpaperPackage:Ljava/lang/String;

    if-eqz v3, :cond_170

    .line 2940
    const-string/jumbo v3, "mWallpaperPackage ---  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    :cond_170
    iget-object v3, p0, mVpnServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_17f

    .line 2943
    const-string/jumbo v3, "mVpnServicePackage ---  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mVpnServicePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    :cond_17f
    const-string v3, "DefaultIMEPackage ---  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mDefaultIMEPackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1a1

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_1a1

    .line 2949
    iget-object v3, p0, mCurrentHomePackage:Ljava/lang/String;

    if-eqz v3, :cond_1a1

    .line 2950
    const-string v3, "CurrentHomePackage ---  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mCurrentHomePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    :cond_1a1
    const-string v3, "OngoingNotificationPackage ---  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    const/4 v0, 0x0

    :goto_1a7
    iget-object v3, p0, mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1c7

    .line 2956
    const-string v3, "--PackageName "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mOngoingNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2957
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a7

    .line 2960
    :cond_1c7
    const-string v3, "NotificationListenerPackage ---  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    const/4 v0, 0x0

    :goto_1cd
    iget-object v3, p0, mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1ed

    .line 2962
    const-string v3, "--PackageName "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2963
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    add-int/lit8 v0, v0, 0x1

    goto :goto_1cd

    .line 2966
    :cond_1ed
    monitor-exit v4

    .line 2968
    return-void

    .line 2966
    .end local v0    # "i":I
    :catchall_1ef
    move-exception v3

    monitor-exit v4
    :try_end_1f1
    .catchall {:try_start_3 .. :try_end_1f1} :catchall_1ef

    throw v3
.end method

.method executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V
    .registers 12
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1364
    iget-object v5, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1365
    if-eqz p1, :cond_a

    :try_start_6
    iget-boolean v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v4, :cond_2b

    .line 1366
    :cond_a
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not enabled!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    monitor-exit v5

    .line 1449
    :goto_2a
    return-void

    .line 1370
    :cond_2b
    sget-boolean v4, DEBUG_MARs:Z

    if-eqz v4, :cond_52

    .line 1371
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executePolicy policy  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_52
    invoke-direct {p0, p1}, generateTargetList(Lcom/android/server/am/MARsPolicyManager$Policy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1378
    .local v2, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_62

    .line 1379
    new-instance v4, Lcom/android/server/am/MARsPolicyManager$3;

    invoke-direct {v4, p0}, Lcom/android/server/am/MARsPolicyManager$3;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1392
    :cond_62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_105

    .line 1393
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MARsPackageStatus;

    .line 1394
    .local v3, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-direct {p0, v4, v6}, isInPolicyExceptionList(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 1395
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inPolicyWhiteList, don\'t execute this policy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_9e
    :goto_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1402
    :cond_a1
    const/4 v1, 0x0

    .line 1404
    .local v1, "spcmPolicyChoosed":Z
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-direct {p0, v3, v4}, isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v4

    if-nez v4, :cond_9e

    .line 1409
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, isRunningPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 1412
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    if-ne v4, v8, :cond_131

    .line 1413
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARs-NonSticky-Kill-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 1414
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_d6

    .line 1415
    const/4 v1, 0x1

    .line 1426
    :cond_d6
    :goto_d6
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_dc

    if-eqz v1, :cond_9e

    .line 1429
    :cond_dc
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 1430
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v4, :cond_13c

    .line 1431
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 1432
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    :cond_f2
    :goto_f2
    iget-object v4, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ff

    .line 1439
    iget-object v4, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    :cond_ff
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, v8, :cond_9e

    if-eqz v1, :cond_9e

    .line 1448
    .end local v1    # "spcmPolicyChoosed":Z
    .end local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_105
    monitor-exit v5

    goto/16 :goto_2a

    .end local v0    # "i":I
    .end local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    :catchall_108
    move-exception v4

    monitor-exit v5
    :try_end_10a
    .catchall {:try_start_6 .. :try_end_10a} :catchall_108

    throw v4

    .line 1417
    .restart local v0    # "i":I
    .restart local v1    # "spcmPolicyChoosed":Z
    .restart local v2    # "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageStatus;>;"
    .restart local v3    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_10b
    :try_start_10b
    sget-boolean v4, DEBUG_MARs:Z

    if-eqz v4, :cond_9e

    .line 1418
    const-string v4, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Choosed Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 1421
    :cond_131
    iget v4, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_d6

    .line 1422
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, forceStopPackage(Ljava/lang/String;)V

    goto :goto_d6

    .line 1434
    :cond_13c
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f2

    .line 1435
    iget-object v4, v3, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_149
    .catchall {:try_start_10b .. :try_end_149} :catchall_108

    goto :goto_f2
.end method

.method public forceRunPolicy(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "policyNum"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2971
    invoke-virtual {p0, p3}, getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    .line 2972
    .local v0, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v0, :cond_a

    iget-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v2, :cond_11

    .line 2973
    :cond_a
    const-string/jumbo v2, "policy is not exist or not enabled!"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3018
    :goto_10
    return-void

    .line 2977
    :cond_11
    iget-object v3, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2978
    :try_start_14
    iget-object v2, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p4}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 2979
    .local v1, "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    if-nez v1, :cond_27

    .line 2980
    const-string/jumbo v2, "not our managed package!"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    monitor-exit v3

    goto :goto_10

    .line 3017
    .end local v1    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_24

    throw v2

    .line 2984
    .restart local v1    # "targetPackage":Lcom/android/server/am/MARsPackageStatus;
    :cond_27
    :try_start_27
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-direct {p0, v1, v2}, isCurrentImportantPackage(Lcom/android/server/am/MARsPackageStatus;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2985
    const-string v2, "CurrentImportantPackage !!!"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    monitor-exit v3

    goto :goto_10

    .line 2990
    :cond_36
    invoke-direct {p0, p4}, isRunningPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2993
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c5

    .line 2994
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MARs-NonSticky-Kill-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, nonStickyKillPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 3004
    :cond_5c
    :goto_5c
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    .line 3005
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v2, :cond_d0

    .line 3006
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    .line 3007
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3013
    :cond_72
    :goto_72
    iget-object v2, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 3014
    iget-object v2, p0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3016
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add mRestrictedPackages "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " policy --"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    monitor-exit v3

    goto/16 :goto_10

    .line 2996
    :cond_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Choosed Package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has the process under ADJ 5 - Skip NON-STICKY KILL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    monitor-exit v3

    goto/16 :goto_10

    .line 2999
    :cond_c5
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5c

    .line 3000
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, forceStopPackage(Ljava/lang/String;)V

    goto :goto_5c

    .line 3009
    :cond_d0
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 3010
    iget-object v2, v1, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catchall {:try_start_27 .. :try_end_dd} :catchall_24

    goto :goto_72
.end method

.method public getAppUsedRecentlyState()Z
    .registers 2

    .prologue
    .line 1144
    iget-boolean v0, p0, mAppUsedRecently:Z

    return v0
.end method

.method getManagedPackages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, mManagedPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 3
    .param p1, "num"    # I

    .prologue
    .line 630
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 631
    iget-object v0, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 639
    :goto_5
    return-object v0

    .line 632
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 633
    iget-object v0, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_5

    .line 634
    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 635
    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_5

    .line 636
    :cond_12
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 637
    iget-object v0, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_5

    .line 639
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getScreenOnState(Z)Z
    .registers 3
    .param p1, "onoff"    # Z

    .prologue
    .line 1156
    iget-boolean v0, p0, mScreenOn:Z

    return v0
.end method

.method public handelAlertToastWindowStarted(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2006
    sget-boolean v1, MARs_ENABLE:Z

    if-nez v1, :cond_5

    .line 2024
    :goto_4
    return-void

    .line 2008
    :cond_5
    sget-boolean v1, DEBUG_MARs:Z

    if-eqz v1, :cond_22

    .line 2009
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelAlertToastWindowStarted pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_22
    move-object v0, p1

    .line 2013
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$4;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public handelNotificationBarClicked(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2027
    sget-boolean v1, MARs_ENABLE:Z

    if-nez v1, :cond_5

    .line 2045
    :goto_4
    return-void

    .line 2029
    :cond_5
    sget-boolean v1, DEBUG_MARs:Z

    if-eqz v1, :cond_22

    .line 2030
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handelNotificationBarClicked pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_22
    move-object v0, p1

    .line 2034
    .local v0, "localPackageName":Ljava/lang/String;
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/MARsPolicyManager$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager$5;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2052
    iget-object v3, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2053
    :try_start_3
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_2a

    .line 2054
    const-string v2, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAppWidgetManagerActions pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_2a
    if-eqz p1, :cond_6d

    .line 2059
    iget-object v2, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_54

    .line 2060
    invoke-direct {p0, p1}, getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 2061
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_44

    .line 2062
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 2063
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v2, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_44
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2067
    iget v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;->runningWidgets:I

    .line 2069
    :cond_52
    monitor-exit v3

    .line 2088
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :goto_53
    return-void

    .line 2071
    :cond_54
    iget-object v2, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v1

    .line 2072
    .local v1, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v1, :cond_6d

    .line 2073
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2074
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    .line 2076
    invoke-virtual {p0, v1}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2087
    .end local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_6d
    :goto_6d
    monitor-exit v3

    goto :goto_53

    :catchall_6f
    move-exception v2

    monitor-exit v3
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v2

    .line 2078
    .restart local v1    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_72
    :try_start_72
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2079
    invoke-virtual {p0, v1}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_6d

    .line 2081
    :cond_7e
    const-string v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2082
    iget v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I
    :try_end_8c
    .catchall {:try_start_72 .. :try_end_8c} :catchall_6f

    goto :goto_6d
.end method

.method public handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2095
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2096
    :try_start_3
    sget-boolean v1, DEBUG_MARs:Z

    if-eqz v1, :cond_2a

    .line 2097
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceAdminActions pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_2a
    if-eqz p1, :cond_42

    .line 2100
    iget-object v1, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2101
    .local v0, "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_42

    .line 2102
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2103
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 2104
    invoke-virtual {p0, v0}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2110
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_42
    :goto_42
    monitor-exit v2

    .line 2111
    return-void

    .line 2105
    .restart local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :cond_44
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2106
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    goto :goto_42

    .line 2110
    .end local v0    # "targetPkg":Lcom/android/server/am/MARsPackageStatus;
    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public handlePackageResumedFG(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2202
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_5e

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_5e

    .line 2203
    if-eqz p4, :cond_50

    .line 2204
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_50

    invoke-virtual {p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.HOME"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2206
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Home Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Resumed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iput-object p1, p0, mCurrentHomePackage:Ljava/lang/String;

    .line 2215
    :cond_50
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 2216
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_5e

    .line 2217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    .line 2220
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_5e
    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_87

    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_87

    .line 2221
    move-object v1, p1

    .line 2223
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v3, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/MARsPolicyManager$6;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/MARsPolicyManager$6;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2231
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 2232
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2233
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2242
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_87
    :goto_87
    iget-object v3, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_91

    iget-object v3, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v3, :cond_9b

    :cond_91
    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_a3

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_a3

    .line 2245
    :cond_9b
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    if-nez p3, :cond_bf

    .line 2261
    :cond_a3
    :goto_a3
    return-void

    .line 2234
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_a4
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_b9

    .line 2235
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2236
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 2238
    :cond_b9
    iget-object v3, p0, mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 2249
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_bf
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_d8

    .line 2250
    invoke-direct {p0, p1}, getLaunchedAppBeforeInit(Ljava/lang/String;)Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    move-result-object v0

    .line 2251
    .local v0, "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    if-nez v0, :cond_a3

    .line 2252
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;

    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 2253
    .restart local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    iget-object v3, p0, mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 2258
    .end local v0    # "info":Lcom/android/server/am/MARsPolicyManager$AppInfoBeforeInit;
    :cond_d8
    iget-object v3, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .line 2259
    .restart local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v2}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    goto :goto_a3
.end method

.method public handlePackageStatusChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "isReInstall"    # Z

    .prologue
    .line 2166
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2193
    :cond_4
    :goto_4
    return-void

    .line 2170
    :cond_5
    if-eqz p3, :cond_10

    .line 2171
    const-string v1, "MARsPolicyManager"

    const-string/jumbo v2, "handlePackageStatusChange isReInstall don\'t care!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2175
    :cond_10
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 2176
    :try_start_13
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2179
    iget-object v1, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->insertPackageToDB(Ljava/lang/String;)V

    .line 2192
    :cond_20
    :goto_20
    monitor-exit v2

    goto :goto_4

    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw v1

    .line 2181
    :cond_25
    :try_start_25
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2182
    const/4 v0, 0x0

    .line 2183
    .local v0, "removedPkg":Lcom/android/server/am/MARsPackageStatus;
    iget-object v1, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 2184
    iget-object v1, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2190
    :goto_3b
    iget-object v1, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsDBManager;->deletePackageInDB(Ljava/lang/String;)V

    goto :goto_20

    .line 2186
    :cond_41
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected !! Uninstalled package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in mManagedPackages list !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_25 .. :try_end_5f} :catchall_22

    goto :goto_3b
.end method

.method public handleSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 2137
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2163
    :cond_4
    :goto_4
    return-void

    .line 2141
    :cond_5
    const-string v1, "android.view.InputMethod"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2142
    iget-object v1, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2143
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2146
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_16
    const-string v1, "android.net.VpnService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2147
    iput-object p1, p0, mVpnServicePackage:Ljava/lang/String;

    .line 2150
    :cond_20
    const-string v1, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 2151
    iput-object p1, p0, mWallpaperPackage:Ljava/lang/String;

    .line 2152
    iget-object v1, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 2153
    .restart local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    invoke-virtual {p0, v0}, updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V

    .line 2156
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_33
    const-string v1, "android.service.notification.NotificationListenerService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2157
    iget-object v1, p0, mNotificationListenerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2158
    iget-object v1, p0, mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2159
    iget-object v1, p0, mNotificationListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public handleSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2120
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 2134
    :cond_6
    :goto_6
    return-void

    .line 2122
    :cond_7
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2123
    invoke-virtual {p0, p1}, setPackageReceivedGCMIntent(Ljava/lang/String;)V

    goto :goto_6

    .line 2125
    :cond_13
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2128
    :cond_2b
    invoke-virtual {p0, p1, v0}, handleAppWidgetManagerActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2130
    :cond_2f
    const-string v1, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2132
    :cond_3f
    invoke-virtual {p0, p1, v0}, handleDeviceAdminActions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public init()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    invoke-virtual {p0}, isAppOptUIAvailable()Z

    move-result v1

    if-nez v1, :cond_b

    .line 519
    sput-boolean v4, MARs_ENABLE:Z

    .line 582
    :goto_a
    return-void

    .line 523
    :cond_b
    invoke-direct {p0}, createPolicies()V

    .line 525
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "isChinaNal":Ljava/lang/String;
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChinaNal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v1, "ChinaNalSecurity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 529
    iget-object v1, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_41

    .line 530
    iget-object v1, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 531
    :cond_41
    iget-object v1, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_49

    .line 532
    iget-object v1, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 533
    :cond_49
    iget-object v1, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_51

    .line 534
    iget-object v1, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v4, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 537
    :cond_51
    iget-object v1, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_59

    .line 538
    iget-object v1, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean v5, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 540
    :cond_59
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    .line 541
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    .line 545
    :cond_67
    iget-object v1, p0, mTrigger:Lcom/android/server/am/MARsTrigger;

    invoke-virtual {v1, v5}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 547
    invoke-direct {p0}, registerDefaultInputMethodChanged()V

    .line 549
    iget-object v1, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initManagedPackages()V

    .line 550
    iget-object v1, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initSettingFromUI()V

    .line 551
    iget-object v1, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->initSKTPackagesWhiteList()V

    .line 553
    invoke-direct {p0}, initPolicyExceptionList()Ljava/util/ArrayList;

    .line 558
    iget-object v1, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_8b

    iget-object v1, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_9f

    :cond_8b
    iget-object v1, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_95

    iget-object v1, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v1, :cond_9f

    :cond_95
    iget-object v1, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_a2

    iget-object v1, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_a2

    .line 561
    :cond_9f
    invoke-direct {p0}, runMARsUpdatePackagesThread()V

    .line 565
    :cond_a2
    iget-object v1, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_b1

    iget-object v1, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_b1

    .line 566
    iget-object v1, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsDBManager;->updateAutoRun()V

    .line 569
    :cond_b1
    sget-boolean v1, DEBUG_MARs:Z

    if-eqz v1, :cond_10c

    iget-object v1, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_10c

    iget-object v1, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_10c

    iget-object v1, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_10c

    iget-object v1, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_10c

    .line 571
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "spcmPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gcmLockerPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appLockerPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoRunPolicy.enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_10c
    invoke-direct {p0}, getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mDefaultIMEPackage:Ljava/lang/String;

    .line 581
    invoke-direct {p0}, registerNotificationListener()V

    goto/16 :goto_a
.end method

.method public isActiveTrafficExisting(Ljava/lang/String;)Z
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1093
    const/4 v13, 0x1

    .line 1094
    .local v13, "retCode":Z
    const/4 v4, 0x0

    .line 1095
    .local v4, "currTrafficTX":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 1096
    .local v12, "prevTrafficTX":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 1097
    .local v3, "currTrafficRX":Ljava/lang/Long;
    const/4 v11, 0x0

    .line 1100
    .local v11, "prevTrafficRX":Ljava/lang/Long;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1101
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1102
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2a

    .line 1103
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1104
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_29} :catch_ba

    move-result-object v3

    .line 1111
    :cond_2a
    move-object/from16 v0, p0

    iget-object v15, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 1112
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v14, v0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_49

    .line 1113
    move-object/from16 v0, p0

    iget-object v14, v0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/Long;

    move-object v12, v0

    .line 1116
    :cond_49
    move-object/from16 v0, p0

    iget-object v14, v0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_63

    .line 1117
    move-object/from16 v0, p0

    iget-object v14, v0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/Long;

    move-object v11, v0

    .line 1119
    :cond_63
    monitor-exit v15
    :try_end_64
    .catchall {:try_start_2f .. :try_end_64} :catchall_d7

    .line 1121
    if-eqz v12, :cond_6c

    if-eqz v4, :cond_6c

    if-eqz v11, :cond_6c

    if-nez v3, :cond_da

    .line 1123
    :cond_6c
    sget-boolean v14, DEBUG_MARs:Z

    if-eqz v14, :cond_b8

    .line 1124
    const-string v14, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TrafficForPkg :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_b8
    const/4 v14, 0x0

    .line 1138
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :goto_b9
    return v14

    .line 1106
    :catch_ba
    move-exception v5

    .line 1107
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "NameNotFoundException occurred for package :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v14, 0x0

    goto :goto_b9

    .line 1119
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    :catchall_d7
    move-exception v14

    :try_start_d8
    monitor-exit v15
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v14

    .line 1129
    :cond_da
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v8, v14, v16

    .line 1130
    .local v8, "diffTX":J
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v6, v14, v16

    .line 1131
    .local v6, "diffRX":J
    sget-boolean v14, DEBUG_MARs:Z

    if-eqz v14, :cond_126

    .line 1132
    const-string v14, "MARsPolicyManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ActiveTraffic :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (tx:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", rx:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_126
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_13e

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-eqz v14, :cond_13e

    const-wide/16 v14, 0x12c

    cmp-long v14, v8, v14

    if-gez v14, :cond_13f

    const-wide/16 v14, 0x12c

    cmp-long v14, v6, v14

    if-gez v14, :cond_13f

    .line 1135
    :cond_13e
    const/4 v13, 0x0

    :cond_13f
    move v14, v13

    .line 1138
    goto/16 :goto_b9
.end method

.method isAppOptUIAvailable()Z
    .registers 6

    .prologue
    .line 619
    const-string v0, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    .line 620
    .local v0, "APP_OPTIMIZATION_INTENT":Ljava/lang/String;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 623
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 624
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.sm.ACTION_APPLOCKING_VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1a

    const/4 v2, 0x1

    .line 626
    .local v2, "isAppOptUI":Z
    :goto_19
    return v2

    .line 625
    .end local v2    # "isAppOptUI":Z
    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isPolicyEnabled(I)Z
    .registers 4
    .param p1, "num"    # I

    .prologue
    .line 643
    invoke-virtual {p0, p1}, getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    .line 644
    .local v0, "pl":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v0, :cond_9

    .line 645
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 647
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;)Z
    .registers 15
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1725
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 26
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "queueName"    # Ljava/lang/String;

    .prologue
    .line 1733
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1734
    .local v8, "packageName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1735
    .local v13, "target":Lcom/android/server/am/MARsPackageStatus;
    const/4 v7, 0x0

    .line 1748
    .local v7, "isRestricted":Z
    move-object/from16 v0, p0

    iget-object v15, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 1750
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_2a

    .line 1751
    move-object/from16 v0, p0

    iget-object v14, v0, mRestrictedPackages:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/MARsPackageStatus;

    .line 1752
    .local v10, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v14, v10, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 1753
    const/4 v7, 0x1

    .line 1754
    move-object v13, v10

    .line 1759
    .end local v10    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2a
    if-nez v7, :cond_32

    .line 1760
    const/4 v14, 0x0

    monitor-exit v15

    .line 1971
    :goto_2e
    return v14

    .line 1750
    .restart local v10    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1763
    .end local v10    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_32
    iget-object v14, v13, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    if-nez v14, :cond_3c

    .line 1764
    const/4 v14, 0x0

    monitor-exit v15

    goto :goto_2e

    .line 1969
    :catchall_39
    move-exception v14

    monitor-exit v15
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v14

    .line 1767
    :cond_3c
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v14, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 1769
    .local v4, "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v7, 0x0

    .line 1770
    const/4 v9, 0x0

    .line 1771
    .local v9, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    const/4 v11, 0x0

    .line 1772
    .local v11, "receivedGCM":Z
    const/4 v5, 0x0

    :goto_4a
    iget-object v14, v13, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_7b

    .line 1773
    iget-object v14, v13, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    check-cast v9, Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 1774
    .restart local v9    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    iget v12, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->restriction:I

    .line 1777
    .local v12, "restrictions":I
    iget v14, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_6e

    move-object/from16 v0, p0

    iget-boolean v14, v0, mScreenOn:Z

    if-eqz v14, :cond_6e

    .line 1778
    const/4 v7, 0x0

    .line 1772
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 1782
    :cond_6e
    const-string v14, "activity"

    move-object/from16 v0, p5

    if-ne v0, v14, :cond_115

    .line 1783
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_da

    .line 1784
    const/4 v7, 0x1

    .line 1950
    :cond_79
    :goto_79
    if-eqz v7, :cond_6b

    .line 1955
    .end local v12    # "restrictions":I
    :cond_7b
    if-nez v7, :cond_83

    .line 1956
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, cancelPolicy(Ljava/lang/String;I)V

    .line 1960
    :cond_83
    if-nez v7, :cond_8e

    if-eqz v11, :cond_8e

    .line 1961
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, cancelPolicy(Ljava/lang/String;I)V

    .line 1962
    const/4 v11, 0x0

    .line 1965
    :cond_8e
    sget-boolean v14, DEBUG_MARs:Z

    if-eqz v14, :cond_d6

    if-eqz v7, :cond_d6

    .line 1966
    const-string v14, "MARsPolicyManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Package: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " hostingType: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is Restricted by policy: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " caller is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_d6
    monitor-exit v15

    move v14, v7

    .line 1971
    goto/16 :goto_2e

    .line 1790
    .restart local v12    # "restrictions":I
    :cond_da
    const/4 v3, 0x0

    .line 1791
    .local v3, "allowedFlag":I
    and-int/lit8 v14, v12, 0x2

    if-eqz v14, :cond_eb

    .line 1792
    or-int/lit8 v3, v3, 0x1

    .line 1793
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_eb

    .line 1794
    or-int/lit8 v3, v3, 0x2

    .line 1797
    :cond_eb
    and-int/lit8 v14, v12, 0x4

    if-eqz v14, :cond_ff

    .line 1798
    or-int/lit8 v3, v3, 0x1

    .line 1799
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v14

    if-eqz v14, :cond_ff

    .line 1800
    or-int/lit8 v3, v3, 0x2

    .line 1805
    :cond_ff
    and-int/lit8 v14, v3, 0x1

    if-eqz v14, :cond_10b

    and-int/lit8 v14, v3, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_111

    :cond_10b
    const/4 v6, 0x1

    .line 1806
    .local v6, "isAllowed":Z
    :goto_10c
    if-nez v6, :cond_113

    const/4 v7, 0x1

    .line 1807
    :goto_10f
    goto/16 :goto_79

    .line 1805
    .end local v6    # "isAllowed":Z
    :cond_111
    const/4 v6, 0x0

    goto :goto_10c

    .line 1806
    .restart local v6    # "isAllowed":Z
    :cond_113
    const/4 v7, 0x0

    goto :goto_10f

    .line 1809
    .end local v3    # "allowedFlag":I
    .end local v6    # "isAllowed":Z
    :cond_115
    const-string/jumbo v14, "service"

    move-object/from16 v0, p5

    if-ne v0, v14, :cond_170

    .line 1810
    and-int/lit8 v14, v12, 0x10

    if-eqz v14, :cond_123

    .line 1811
    const/4 v7, 0x1

    goto/16 :goto_79

    .line 1814
    :cond_123
    const/4 v3, 0x0

    .line 1815
    .restart local v3    # "allowedFlag":I
    and-int/lit8 v14, v12, 0x20

    if-eqz v14, :cond_134

    .line 1816
    or-int/lit8 v3, v3, 0x1

    .line 1817
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_134

    .line 1818
    or-int/lit8 v3, v3, 0x2

    .line 1821
    :cond_134
    and-int/lit8 v14, v12, 0x40

    if-eqz v14, :cond_148

    .line 1822
    or-int/lit8 v3, v3, 0x1

    .line 1823
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v14

    if-eqz v14, :cond_148

    .line 1824
    or-int/lit8 v3, v3, 0x2

    .line 1827
    :cond_148
    and-int/lit16 v14, v12, 0x80

    if-eqz v14, :cond_15a

    .line 1828
    or-int/lit8 v3, v3, 0x1

    .line 1829
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v8, v1}, isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_15a

    .line 1830
    or-int/lit8 v3, v3, 0x2

    .line 1833
    :cond_15a
    and-int/lit8 v14, v3, 0x1

    if-eqz v14, :cond_166

    and-int/lit8 v14, v3, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_16c

    :cond_166
    const/4 v6, 0x1

    .line 1834
    .restart local v6    # "isAllowed":Z
    :goto_167
    if-nez v6, :cond_16e

    const/4 v7, 0x1

    .line 1835
    :goto_16a
    goto/16 :goto_79

    .line 1833
    .end local v6    # "isAllowed":Z
    :cond_16c
    const/4 v6, 0x0

    goto :goto_167

    .line 1834
    .restart local v6    # "isAllowed":Z
    :cond_16e
    const/4 v7, 0x0

    goto :goto_16a

    .line 1837
    .end local v3    # "allowedFlag":I
    .end local v6    # "isAllowed":Z
    :cond_170
    const-string/jumbo v14, "provider"

    move-object/from16 v0, p5

    if-ne v0, v14, :cond_1cb

    .line 1838
    and-int/lit16 v14, v12, 0x100

    if-eqz v14, :cond_17e

    .line 1839
    const/4 v7, 0x1

    goto/16 :goto_79

    .line 1842
    :cond_17e
    const/4 v3, 0x0

    .line 1843
    .restart local v3    # "allowedFlag":I
    and-int/lit16 v14, v12, 0x200

    if-eqz v14, :cond_18f

    .line 1844
    or-int/lit8 v3, v3, 0x1

    .line 1845
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_18f

    .line 1846
    or-int/lit8 v3, v3, 0x2

    .line 1849
    :cond_18f
    and-int/lit16 v14, v12, 0x400

    if-eqz v14, :cond_1a3

    .line 1850
    or-int/lit8 v3, v3, 0x1

    .line 1851
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v14

    if-eqz v14, :cond_1a3

    .line 1852
    or-int/lit8 v3, v3, 0x2

    .line 1855
    :cond_1a3
    and-int/lit16 v14, v12, 0x800

    if-eqz v14, :cond_1b5

    .line 1856
    or-int/lit8 v3, v3, 0x1

    .line 1857
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v4, v8, v1}, isAutoRunBlockedPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1b5

    .line 1858
    or-int/lit8 v3, v3, 0x2

    .line 1861
    :cond_1b5
    and-int/lit8 v14, v3, 0x1

    if-eqz v14, :cond_1c1

    and-int/lit8 v14, v3, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_1c7

    :cond_1c1
    const/4 v6, 0x1

    .line 1862
    .restart local v6    # "isAllowed":Z
    :goto_1c2
    if-nez v6, :cond_1c9

    const/4 v7, 0x1

    .line 1863
    :goto_1c5
    goto/16 :goto_79

    .line 1861
    .end local v6    # "isAllowed":Z
    :cond_1c7
    const/4 v6, 0x0

    goto :goto_1c2

    .line 1862
    .restart local v6    # "isAllowed":Z
    :cond_1c9
    const/4 v7, 0x0

    goto :goto_1c5

    .line 1865
    .end local v3    # "allowedFlag":I
    .end local v6    # "isAllowed":Z
    :cond_1cb
    const-string v14, "broadcast"

    move-object/from16 v0, p5

    if-ne v0, v14, :cond_2cb

    .line 1866
    if-eqz p6, :cond_1d7

    and-int/lit16 v14, v12, 0x1000

    if-eqz v14, :cond_1da

    .line 1867
    :cond_1d7
    const/4 v7, 0x1

    goto/16 :goto_79

    .line 1870
    :cond_1da
    const/4 v3, 0x0

    .line 1871
    .restart local v3    # "allowedFlag":I
    and-int/lit16 v14, v12, 0x2000

    if-eqz v14, :cond_1eb

    .line 1872
    or-int/lit8 v3, v3, 0x1

    .line 1873
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, isAppPackageForeground(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_1eb

    .line 1874
    or-int/lit8 v3, v3, 0x2

    .line 1877
    :cond_1eb
    and-int/lit16 v14, v12, 0x4000

    if-eqz v14, :cond_1ff

    .line 1878
    or-int/lit8 v3, v3, 0x1

    .line 1879
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, isSystemApp(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v14

    if-eqz v14, :cond_1ff

    .line 1880
    or-int/lit8 v3, v3, 0x2

    .line 1884
    :cond_1ff
    const v14, 0x8000

    and-int/2addr v14, v12

    if-eqz v14, :cond_218

    .line 1885
    or-int/lit8 v3, v3, 0x1

    .line 1886
    const-string v14, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_218

    .line 1887
    or-int/lit8 v3, v3, 0x2

    .line 1888
    const/4 v11, 0x1

    .line 1893
    :cond_218
    const/high16 v14, 0x10000

    and-int/2addr v14, v12

    if-eqz v14, :cond_22d

    .line 1894
    or-int/lit8 v3, v3, 0x1

    .line 1895
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, isGearManagerIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_22d

    .line 1896
    or-int/lit8 v3, v3, 0x2

    .line 1900
    :cond_22d
    const/high16 v14, 0x20000

    and-int/2addr v14, v12

    if-eqz v14, :cond_242

    .line 1901
    or-int/lit8 v3, v3, 0x1

    .line 1902
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, isSpecialIntentsForSKT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_242

    .line 1903
    or-int/lit8 v3, v3, 0x2

    .line 1907
    :cond_242
    const/high16 v14, 0x40000

    and-int/2addr v14, v12

    if-eqz v14, :cond_274

    .line 1908
    or-int/lit8 v3, v3, 0x1

    .line 1910
    iget v14, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_274

    iget v14, v13, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_274

    const-string v14, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_274

    const-string/jumbo v14, "foreground"

    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_274

    .line 1914
    or-int/lit8 v3, v3, 0x2

    .line 1919
    :cond_274
    const/high16 v14, 0x80000

    and-int/2addr v14, v12

    if-eqz v14, :cond_289

    .line 1920
    or-int/lit8 v3, v3, 0x1

    .line 1921
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isEdgeIntent(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_289

    .line 1922
    or-int/lit8 v3, v3, 0x2

    .line 1926
    :cond_289
    const/high16 v14, 0x200000

    and-int/2addr v14, v12

    if-eqz v14, :cond_29e

    .line 1927
    or-int/lit8 v3, v3, 0x1

    .line 1928
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, isKiesIntent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_29e

    .line 1929
    or-int/lit8 v3, v3, 0x2

    .line 1933
    :cond_29e
    const/high16 v14, 0x100000

    and-int/2addr v14, v12

    if-eqz v14, :cond_2b5

    .line 1934
    or-int/lit8 v3, v3, 0x1

    .line 1935
    move-object/from16 v0, p0

    iget-boolean v14, v0, mScreenOn:Z

    if-eqz v14, :cond_2b5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, isCurrentLauncherApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_2b5

    .line 1936
    or-int/lit8 v3, v3, 0x2

    .line 1939
    :cond_2b5
    and-int/lit8 v14, v3, 0x1

    if-eqz v14, :cond_2c1

    and-int/lit8 v14, v3, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_2c7

    :cond_2c1
    const/4 v6, 0x1

    .line 1940
    .restart local v6    # "isAllowed":Z
    :goto_2c2
    if-nez v6, :cond_2c9

    const/4 v7, 0x1

    .line 1941
    :goto_2c5
    goto/16 :goto_79

    .line 1939
    .end local v6    # "isAllowed":Z
    :cond_2c7
    const/4 v6, 0x0

    goto :goto_2c2

    .line 1940
    .restart local v6    # "isAllowed":Z
    :cond_2c9
    const/4 v7, 0x0

    goto :goto_2c5

    .line 1943
    .end local v3    # "allowedFlag":I
    .end local v6    # "isAllowed":Z
    :cond_2cb
    const-string v14, "backup"
    :try_end_2cd
    .catchall {:try_start_3c .. :try_end_2cd} :catchall_39

    move-object/from16 v0, p5

    if-ne v0, v14, :cond_79

    .line 1944
    const/high16 v14, 0x1000000

    and-int/2addr v14, v12

    if-eqz v14, :cond_79

    .line 1945
    const/4 v7, 0x1

    goto/16 :goto_79
.end method

.method setAllPoliciesOnOffState(I)V
    .registers 5
    .param p1, "on"    # I

    .prologue
    .line 695
    sget-boolean v0, DEBUG_MARs:Z

    if-eqz v0, :cond_1d

    .line 696
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllPoliciesOnOffState on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_1d
    iget v0, p0, mAllPoliciesOn:I

    if-eq v0, p1, :cond_29

    .line 700
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2a

    .line 701
    invoke-direct {p0}, turnOnPolicies()V

    .line 706
    :cond_27
    :goto_27
    iput p1, p0, mAllPoliciesOn:I

    .line 708
    :cond_29
    return-void

    .line 703
    :cond_2a
    if-nez p1, :cond_27

    .line 704
    invoke-direct {p0}, turnOffPolicies()V

    goto :goto_27
.end method

.method public setAppUsedRecentlyState(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 1148
    iput-boolean p1, p0, mAppUsedRecently:Z

    .line 1149
    return-void
.end method

.method public setDataConnectionConnected()V
    .registers 6

    .prologue
    .line 1037
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1038
    .local v0, "mConnManagerDoNotUseDirectly":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1039
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    :goto_17
    iput-boolean v2, p0, mDataConnectionIsConnected:Z

    .line 1040
    sget-boolean v2, DEBUG_MARs:Z

    if-eqz v2, :cond_37

    .line 1041
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mDataConnectionIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_37
    return-void

    .line 1039
    :cond_38
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public setPackageReceivedGCMIntent(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1990
    iget-object v1, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_19

    iget-object v1, p0, gcmLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v1, :cond_19

    .line 1992
    iget-object v2, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 1993
    :try_start_d
    iget-object v1, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v0

    .line 1994
    .local v0, "ps":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v0, :cond_18

    .line 1995
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/MARsPackageStatus;->receivedGcmIntent:Z

    .line 1996
    :cond_18
    monitor-exit v2

    .line 1998
    .end local v0    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_19
    return-void

    .line 1996
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method setPackagesUnusedLockingTime(I)V
    .registers 8
    .param p1, "hours"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 681
    sget-boolean v0, DEBUG_MARs:Z

    if-eqz v0, :cond_1f

    .line 682
    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1f
    iget-wide v0, p0, mUnusedLockingTime:J

    mul-int/lit8 v2, p1, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, mLockingTimeChanged:Z

    .line 689
    :cond_2e
    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    mul-long/2addr v0, v4

    iput-wide v0, p0, mUnusedLockingTime:J

    .line 690
    return-void
.end method

.method setSKTSpeicalPackages(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 712
    :try_start_3
    iget-object v0, p0, mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 713
    iget-object v0, p0, mSpecialSKTPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 714
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setScreenOnState(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .prologue
    .line 1152
    iput-boolean p1, p0, mScreenOn:Z

    .line 1153
    return-void
.end method

.method setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 719
    :try_start_3
    iget-object v0, p0, mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 720
    iget-object v0, p0, mWhiteListIntentsForSKT:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 721
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public updateDBResetTime(Lcom/android/server/am/MARsPackageStatus;)V
    .registers 8
    .param p1, "ps"    # Lcom/android/server/am/MARsPackageStatus;

    .prologue
    const/4 v5, 0x0

    .line 2477
    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_b

    iget-object v0, p0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v0, :cond_15

    :cond_b
    iget-object v0, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_2f

    iget-object v0, p0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_2f

    .line 2479
    :cond_15
    if-eqz p1, :cond_2f

    .line 2481
    iget v0, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_37

    .line 2483
    iput v5, p1, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 2484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 2485
    iget-object v0, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-object v1, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-string v4, "0"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/MARsDBManager;->updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;)V

    .line 2494
    :cond_2f
    :goto_2f
    if-eqz p1, :cond_36

    .line 2495
    iget-object v0, p1, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, cancelPolicy(Ljava/lang/String;I)V

    .line 2496
    :cond_36
    return-void

    .line 2488
    :cond_37
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    goto :goto_2f
.end method

.method public updateDBResetTimeForTimeChanged(J)V
    .registers 16
    .param p1, "changedTime"    # J

    .prologue
    .line 2506
    sget-boolean v5, DEBUG_MARs:Z

    if-eqz v5, :cond_1d

    .line 2507
    const-string v5, "MARsPolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDBResetTimeForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    :cond_1d
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v5, v6, v8

    if-gez v5, :cond_34

    .line 2511
    sget-boolean v5, DEBUG_MARs:Z

    if-eqz v5, :cond_33

    .line 2512
    const-string v5, "MARsPolicyManager"

    const-string v6, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_33
    :goto_33
    return-void

    .line 2517
    :cond_34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2519
    .local v3, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    iget-object v6, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2520
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    :try_start_3d
    iget-object v5, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_78

    .line 2521
    iget-object v5, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPackageStatus;

    .line 2523
    .local v2, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_75

    .line 2524
    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    add-long/2addr v8, p1

    iput-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 2527
    iget v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    invoke-direct {p0, v5}, covertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2528
    .local v0, "extras":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    iget-object v5, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iget-wide v8, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v0}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    .local v4, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    .end local v0    # "extras":Ljava/lang/String;
    .end local v4    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 2533
    .end local v2    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_78
    iget-object v5, p0, mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MARsDBManager;->updateResetTime(Ljava/util/ArrayList;)V

    .line 2534
    monitor-exit v6

    goto :goto_33

    :catchall_7f
    move-exception v5

    monitor-exit v6
    :try_end_81
    .catchall {:try_start_3d .. :try_end_81} :catchall_7f

    throw v5
.end method

.method updateManagedPackages(Ljava/util/ArrayList;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    .line 773
    if-eqz p1, :cond_17e

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17e

    .line 774
    sget-boolean v3, DEBUG_MARs:Z

    if-eqz v3, :cond_2e

    .line 775
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateManagedPackages! size = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_2e
    const/4 v10, 0x0

    .line 778
    .local v10, "needTriggerAppLockerPolicy":Z
    const/4 v11, 0x0

    .line 780
    .local v11, "needTriggerAutoRunPolicy":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_31
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_113

    .line 781
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 782
    .local v13, "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strIsSMFreezed:Ljava/lang/String;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, covertDBValueToState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 784
    .local v5, "newState":I
    move-object/from16 v0, p0

    iget-object v3, v0, mManagedPackages:Ljava/util/ArrayList;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getMARsPackageStatus(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/am/MARsPackageStatus;

    move-result-object v2

    .local v2, "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    if-eqz v2, :cond_be

    .line 791
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_60

    const/4 v3, 0x1

    if-ne v5, v3, :cond_60

    .line 794
    const/4 v10, 0x0

    .line 798
    :cond_60
    move-object/from16 v0, p0

    iget-object v3, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_7e

    move-object/from16 v0, p0

    iget-object v3, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_7e

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7e

    const/4 v3, 0x2

    if-ne v5, v3, :cond_7e

    .line 801
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, cancelPolicy(Ljava/lang/String;I)V

    .line 804
    :cond_7e
    iput v5, v2, Lcom/android/server/am/MARsPackageStatus;->state:I

    .line 807
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-nez v3, :cond_8a

    .line 808
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    .line 811
    :cond_8a
    move-object/from16 v0, p0

    iget-object v3, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_b3

    move-object/from16 v0, p0

    iget-object v3, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_b3

    .line 812
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_b7

    .line 813
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 814
    .local v12, "newAutoRun":I
    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_b1

    const/4 v3, 0x1

    if-ne v12, v3, :cond_b1

    .line 815
    iget-object v3, v2, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, cancelPolicy(Ljava/lang/String;I)V

    .line 817
    :cond_b1
    iput v12, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 780
    .end local v12    # "newAutoRun":I
    :cond_b3
    :goto_b3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_31

    .line 820
    :cond_b7
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_b3

    .line 874
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :catchall_bb
    move-exception v3

    monitor-exit v14
    :try_end_bd
    .catchall {:try_start_7 .. :try_end_bd} :catchall_bb

    throw v3

    .line 825
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .restart local v5    # "newState":I
    .restart local v8    # "i":I
    .restart local v10    # "needTriggerAppLockerPolicy":Z
    .restart local v11    # "needTriggerAutoRunPolicy":Z
    .restart local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_be
    const-wide/16 v6, 0x0

    .line 826
    .local v6, "time":J
    :try_start_c0
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    if-eqz v3, :cond_ca

    .line 827
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 830
    :cond_ca
    move-object/from16 v0, p0

    iget-boolean v3, v0, mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_d7

    const/4 v3, 0x1

    if-eq v5, v3, :cond_d6

    const/4 v3, 0x3

    if-ne v5, v3, :cond_d7

    .line 833
    :cond_d6
    const/4 v10, 0x1

    .line 836
    :cond_d7
    new-instance v2, Lcom/android/server/am/MARsPackageStatus;

    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    iget-object v4, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsPackageStatus;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 839
    .restart local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    move-object/from16 v0, p0

    iget-object v3, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_107

    move-object/from16 v0, p0

    iget-object v3, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_107

    .line 840
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    if-eqz v3, :cond_10f

    .line 841
    iget-object v3, v13, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    .line 845
    :goto_fc
    move-object/from16 v0, p0

    iget-boolean v3, v0, mFirstTimeUpdatePackages:Z

    if-eqz v3, :cond_107

    iget v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    if-nez v3, :cond_107

    .line 846
    const/4 v11, 0x1

    .line 850
    :cond_107
    move-object/from16 v0, p0

    iget-object v3, v0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 843
    :cond_10f
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    goto :goto_fc

    .line 854
    .end local v2    # "dstpkg":Lcom/android/server/am/MARsPackageStatus;
    .end local v5    # "newState":I
    .end local v6    # "time":J
    .end local v13    # "srcpkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_113
    move-object/from16 v0, p0

    iget-object v3, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_146

    move-object/from16 v0, p0

    iget-object v3, v0, appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_146

    if-eqz v10, :cond_146

    .line 856
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 857
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 858
    const-string v3, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 863
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_146
    move-object/from16 v0, p0

    iget-object v3, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_179

    move-object/from16 v0, p0

    iget-object v3, v0, autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v3, :cond_179

    if-eqz v11, :cond_179

    .line 865
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 866
    .restart local v9    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 867
    const-string v3, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getUserId()I

    move-result v15

    invoke-direct {v4, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 872
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_179
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mFirstTimeUpdatePackages:Z

    .line 874
    .end local v8    # "i":I
    .end local v10    # "needTriggerAppLockerPolicy":Z
    .end local v11    # "needTriggerAutoRunPolicy":Z
    :cond_17e
    monitor-exit v14
    :try_end_17f
    .catchall {:try_start_c0 .. :try_end_17f} :catchall_bb

    .line 875
    return-void
.end method

.method public updateRunningLocationPackages(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1084
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1085
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_14

    .line 1086
    iget-object v1, p0, mRunningLocationPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1087
    const-string/jumbo v1, "packagelist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, mRunningLocationPackages:Ljava/util/ArrayList;

    .line 1089
    :cond_14
    return-void
.end method

.method public updateTrafficStat()V
    .registers 16

    .prologue
    .line 1046
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, mTrigger:Lcom/android/server/am/MARsTrigger;

    const-string v7, "android.intent.action.GET_RUNNING_LOCATION"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v3, "intentGetLocaitonPkg":Landroid/content/Intent;
    sget-boolean v7, DEBUG_MARs:Z

    if-eqz v7, :cond_14

    const-string v7, "MARsPolicyManager"

    const-string v12, "GPS INTENT send"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_14
    iget-object v7, p0, mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v3, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1050
    iget-boolean v7, p0, mDataConnectionIsConnected:Z

    if-eqz v7, :cond_f1

    .line 1051
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1052
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1053
    iget-object v7, p0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1055
    iget-object v12, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    .line 1056
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    :try_start_3c
    iget-object v7, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_f0

    .line 1057
    iget-object v7, p0, mManagedPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageStatus;

    .line 1058
    .local v6, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-object v4, v6, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_ed

    .line 1060
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_4f
    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1061
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_cf

    .line 1062
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 1063
    .local v10, "txbytestime":J
    iget-object v7, p0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 1064
    iget-object v7, p0, mTrafficStatMap_LRU_TX:Ljava/util/Map;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-boolean v7, DEBUG_MARs:Z

    if-eqz v7, :cond_92

    .line 1066
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_TX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",txbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_92
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 1069
    .local v8, "rxbytestime":J
    iget-object v7, p0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cf

    .line 1070
    iget-object v7, p0, mTrafficStatMap_LRU_RX:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-boolean v7, DEBUG_MARs:Z

    if-eqz v7, :cond_cf

    .line 1072
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_RX put name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",rxbytestime:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_cf} :catch_d3
    .catchall {:try_start_4f .. :try_end_cf} :catchall_ed

    .line 1056
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "rxbytestime":J
    .end local v10    # "txbytestime":J
    :cond_cf
    :goto_cf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    .line 1075
    :catch_d3
    move-exception v1

    .line 1076
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_d4
    const-string v7, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 1079
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :catchall_ed
    move-exception v7

    monitor-exit v12
    :try_end_ef
    .catchall {:try_start_d4 .. :try_end_ef} :catchall_ed

    throw v7

    :cond_f0
    :try_start_f0
    monitor-exit v12
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ed

    .line 1081
    .end local v2    # "i":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_f1
    return-void
.end method
