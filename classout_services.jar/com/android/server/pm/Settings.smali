.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final is3LMAllowed:Z

.field private static mFirstAvailableUid:I


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 243
    sput v5, mFirstAvailableUid:I

    .line 3688
    const/high16 v0, 0x8000000

    sput v0, PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3689
    const/high16 v0, 0x10000000

    sput v0, PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3690
    const/high16 v0, 0x20000000

    sput v0, PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    .line 3691
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4518
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "SYSTEM"

    aput-object v1, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "DEBUGGABLE"

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "HAS_CODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PERSISTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0x9

    const-string v2, "FACTORY_TEST"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ALLOW_TASK_REPARENTING"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ALLOW_CLEAR_USER_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "UPDATED_SYSTEM_APP"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TEST_ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "VM_SAFE_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ALLOW_BACKUP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "KILL_AFTER_RESTORE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "RESTORE_ANY_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "LARGE_HEAP"

    aput-object v2, v0, v1

    sput-object v0, FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4536
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "PRIVILEGED"

    aput-object v1, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "FORWARD_LOCK"

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "CANT_SAVE_STATE"

    aput-object v2, v0, v1

    sput-object v0, PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x1

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPackages:Landroid/util/ArrayMap;

    .line 236
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 240
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 246
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mVersion:Landroid/util/ArrayMap;

    .line 290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mPreferredActivities:Landroid/util/SparseArray;

    .line 295
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 299
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSharedUsers:Landroid/util/ArrayMap;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mUserIds:Ljava/util/ArrayList;

    .line 305
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mOtherUserIds:Landroid/util/SparseArray;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPastSignatures:Ljava/util/ArrayList;

    .line 311
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mKeySetRefs:Landroid/util/ArrayMap;

    .line 315
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    .line 319
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPermissionTrees:Landroid/util/ArrayMap;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 330
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mRenamedPackages:Landroid/util/ArrayMap;

    .line 333
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 336
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, mReadMessages:Ljava/lang/StringBuilder;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingPackages:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    .line 363
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 364
    iput-object p3, p0, mLock:Ljava/lang/Object;

    .line 366
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 368
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mSystemDir:Ljava/io/File;

    .line 369
    iget-object v0, p0, mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 370
    iget-object v0, p0, mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 374
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mSettingsFilename:Ljava/io/File;

    .line 375
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mBackupSettingsFilename:Ljava/io/File;

    .line 376
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mPackageListFilename:Ljava/io/File;

    .line 377
    iget-object v0, p0, mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 380
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-stopped.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mStoppedPackagesFilename:Ljava/io/File;

    .line 381
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-stopped-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 382
    invoke-virtual {p0}, readPkgCmpOnlyForOwnerUser()V

    .line 383
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/Settings;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 9
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .prologue
    const/4 v4, 0x6

    .line 1080
    iget-object v2, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    if-eqz p3, :cond_52

    .line 1082
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_76

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v2, p3, :cond_76

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1087
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1096
    :cond_49
    :goto_49
    invoke-virtual {p3, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1097
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1098
    iget v2, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 1103
    :cond_52
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v2}, getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v1

    .line 1104
    .local v1, "userIdPs":Ljava/lang/Object;
    if-nez p3, :cond_bd

    .line 1105
    if-eqz v1, :cond_63

    if-eq v1, p1, :cond_63

    .line 1106
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v2, p1}, replaceUserIdLPw(ILjava/lang/Object;)V

    .line 1114
    :cond_63
    :goto_63
    iget-object v2, p0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 1115
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v0, :cond_75

    .line 1119
    iget-object v2, p0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1122
    :cond_75
    return-void

    .line 1088
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v1    # "userIdPs":Ljava/lang/Object;
    :cond_76
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v2, v3, :cond_49

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but is now user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_49

    .line 1109
    .restart local v1    # "userIdPs":Ljava/lang/Object;
    :cond_bd
    if-eqz v1, :cond_63

    if-eq v1, p3, :cond_63

    .line 1110
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v2, p3}, replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_63
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x0

    .line 1260
    const/16 v3, 0x4e1f

    if-le p1, v3, :cond_7

    .line 1287
    :goto_6
    return v2

    .line 1264
    :cond_7
    const/16 v3, 0x2710

    if-lt p1, v3, :cond_4e

    .line 1265
    iget-object v3, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1266
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1267
    .local v1, "index":I
    :goto_13
    if-lt v1, v0, :cond_1e

    .line 1268
    iget-object v3, p0, mUserIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1271
    :cond_1e
    iget-object v3, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 1277
    :cond_47
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1287
    .end local v0    # "N":I
    .end local v1    # "index":I
    :goto_4c
    const/4 v2, 0x1

    goto :goto_6

    .line 1279
    :cond_4e
    iget-object v3, p0, mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 1280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 1285
    :cond_77
    iget-object v2, p0, mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4c
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 30
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    .prologue
    .line 3366
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-virtual {v7, v0, v8, v1, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v16

    .line 3370
    .local v16, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 3371
    .local v5, "systemMatch":I
    const/16 v18, 0x0

    .line 3372
    .local v18, "thirdPartyMatch":I
    if-eqz v16, :cond_1c2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1c2

    .line 3373
    const/4 v12, 0x0

    .line 3374
    .local v12, "haveAct":Z
    const/4 v13, 0x0

    .line 3375
    .local v13, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Landroid/content/ComponentName;

    .line 3376
    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_29
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_60

    .line 3377
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3378
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v14

    .line 3379
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_9b

    .line 3380
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v7, v7, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v0, v18

    if-lt v7, v0, :cond_be

    .line 3386
    aget-object v13, v6, v14

    .line 3400
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_60
    if-eqz v13, :cond_67

    move/from16 v0, v18

    if-ge v0, v5, :cond_67

    .line 3405
    const/4 v13, 0x0

    .line 3407
    :cond_67
    if-eqz v12, :cond_140

    if-nez v13, :cond_140

    .line 3408
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 3409
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7d

    .line 3410
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3412
    :cond_7d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_c2

    .line 3413
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_8b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3414
    .local v10, "cat":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_8b

    .line 3389
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "cat":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_9b
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 3393
    const/4 v12, 0x1

    .line 3394
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v5, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 3376
    :cond_be
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_29

    .line 3417
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :cond_c2
    const/high16 v7, 0x10000

    and-int v7, v7, p3

    if-eqz v7, :cond_cd

    .line 3418
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3420
    :cond_cd
    if-eqz p5, :cond_d4

    .line 3421
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3423
    :cond_d4
    if-eqz p6, :cond_e1

    .line 3424
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3426
    :cond_e1
    if-eqz p7, :cond_e8

    .line 3427
    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3429
    :cond_e8
    if-eqz p8, :cond_ef

    .line 3430
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3432
    :cond_ef
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fc

    .line 3434
    :try_start_f5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_fc
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_f5 .. :try_end_fc} :catch_110

    .line 3439
    :cond_fc
    :goto_fc
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    const/4 v8, 0x1

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3440
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 3461
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v12    # "haveAct":Z
    .end local v13    # "haveNonSys":Landroid/content/ComponentName;
    .end local v14    # "i":I
    :goto_10f
    return-void

    .line 3435
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v12    # "haveAct":Z
    .restart local v13    # "haveNonSys":Landroid/content/ComponentName;
    .restart local v14    # "i":I
    :catch_110
    move-exception v11

    .line 3436
    .local v11, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Malformed mimetype "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, " for "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    .line 3441
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_140
    if-nez v13, :cond_192

    .line 3442
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 3443
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string v7, "No component "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3444
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3445
    const-string v7, " found setting preferred "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3446
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3447
    const-string v7, "; possible matches are "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    const/4 v14, 0x0

    :goto_16d
    array-length v7, v6

    if-ge v14, v7, :cond_187

    .line 3449
    if-lez v14, :cond_179

    const-string v7, ", "

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3450
    :cond_179
    aget-object v7, v6, v14

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    add-int/lit8 v14, v14, 0x1

    goto :goto_16d

    .line 3452
    :cond_187
    const-string v7, "PackageSettings"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    .line 3454
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_192
    const-string v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not setting preferred "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, "; found third party match "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f

    .line 3458
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v12    # "haveAct":Z
    .end local v13    # "haveNonSys":Landroid/content/ComponentName;
    .end local v14    # "i":I
    :cond_1c2
    const-string v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No potential matches found for "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, " while setting preferred "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10f
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 47
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 3261
    new-instance v37, Landroid/content/Intent;

    invoke-direct/range {v37 .. v37}, Landroid/content/Intent;-><init>()V

    .line 3262
    .local v37, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 3263
    .local v5, "flags":I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3264
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    move/from16 v0, v34

    if-ge v0, v2, :cond_3c

    .line 3265
    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v29

    .line 3266
    .local v29, "cat":Ljava/lang/String;
    const-string v2, "android.intent.category.DEFAULT"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3267
    const/high16 v2, 0x10000

    or-int/2addr v5, v2

    .line 3264
    :goto_31
    add-int/lit8 v34, v34, 0x1

    goto :goto_14

    .line 3269
    :cond_34
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_31

    .line 3273
    .end local v29    # "cat":Ljava/lang/String;
    :cond_3c
    const/16 v31, 0x1

    .line 3274
    .local v31, "doNonData":Z
    const/16 v33, 0x0

    .line 3276
    .local v33, "hasSchemes":Z
    const/16 v39, 0x0

    .local v39, "ischeme":I
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v39

    if-ge v0, v2, :cond_18c

    .line 3277
    const/16 v32, 0x1

    .line 3278
    .local v32, "doScheme":Z
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 3279
    .local v7, "scheme":Ljava/lang/String;
    if-eqz v7, :cond_5e

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 3280
    const/16 v33, 0x1

    .line 3282
    :cond_5e
    const/16 v40, 0x0

    .local v40, "issp":I
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    move/from16 v0, v40

    if-ge v0, v2, :cond_a3

    .line 3283
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 3284
    .local v28, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3285
    move-object/from16 v0, p2

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v8

    .line 3286
    .local v8, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual {v8}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3287
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3288
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3289
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3291
    const/16 v32, 0x0

    .line 3282
    add-int/lit8 v40, v40, 0x1

    goto :goto_60

    .line 3293
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v8    # "ssp":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_a3
    const/16 v35, 0x0

    .local v35, "iauth":I
    :goto_a5
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    move/from16 v0, v35

    if-ge v0, v2, :cond_155

    .line 3294
    const/16 v30, 0x1

    .line 3295
    .local v30, "doAuth":Z
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v16

    .line 3296
    .local v16, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    const/16 v38, 0x0

    .end local v30    # "doAuth":Z
    .local v38, "ipath":I
    :goto_b9
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    move/from16 v0, v38

    if-ge v0, v2, :cond_10f

    .line 3297
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 3298
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3299
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_da

    .line 3300
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3302
    :cond_da
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v17

    .line 3303
    .local v17, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3304
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3305
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3306
    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v5

    move-object/from16 v13, p3

    move-object v14, v7

    move/from16 v18, p4

    invoke-direct/range {v9 .. v18}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3308
    const/16 v32, 0x0

    move/from16 v30, v32

    .line 3296
    .local v30, "doAuth":I
    add-int/lit8 v38, v38, 0x1

    goto :goto_b9

    .line 3310
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "path":Landroid/os/PatternMatcher;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    .end local v30    # "doAuth":I
    :cond_10f
    if-eqz v30, :cond_151

    .line 3311
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 3312
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3313
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12a

    .line 3314
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3316
    :cond_12a
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3317
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3318
    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move-object/from16 v25, v16

    move/from16 v27, p4

    invoke-direct/range {v18 .. v27}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3320
    const/16 v32, 0x0

    .line 3293
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_151
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_a5

    .line 3323
    .end local v16    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v38    # "ipath":I
    :cond_155
    if-eqz v32, :cond_186

    .line 3324
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 3325
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3326
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3327
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3328
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v27, p4

    invoke-direct/range {v18 .. v27}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3331
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_186
    const/16 v31, 0x0

    .line 3276
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_42

    .line 3334
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v32    # "doScheme":Z
    .end local v35    # "iauth":I
    .end local v40    # "issp":I
    :cond_18c
    const/16 v36, 0x0

    .local v36, "idata":I
    :goto_18e
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    move/from16 v0, v36

    if-ge v0, v2, :cond_217

    .line 3335
    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v41

    .line 3336
    .local v41, "mimeType":Ljava/lang/String;
    if-eqz v33, :cond_1ee

    .line 3337
    new-instance v28, Landroid/net/Uri$Builder;

    invoke-direct/range {v28 .. v28}, Landroid/net/Uri$Builder;-><init>()V

    .line 3338
    .restart local v28    # "builder":Landroid/net/Uri$Builder;
    const/16 v39, 0x0

    :goto_1a7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v39

    if-ge v0, v2, :cond_211

    .line 3339
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 3340
    .restart local v7    # "scheme":Ljava/lang/String;
    if-eqz v7, :cond_1eb

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1eb

    .line 3341
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3342
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3343
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3344
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v27, p4

    invoke-direct/range {v18 .. v27}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3338
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :cond_1eb
    add-int/lit8 v39, v39, 0x1

    goto :goto_1a7

    .line 3349
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v28    # "builder":Landroid/net/Uri$Builder;
    :cond_1ee
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3350
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3351
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move/from16 v27, p4

    invoke-direct/range {v18 .. v27}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3354
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :cond_211
    const/16 v31, 0x0

    .line 3334
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_18e

    .line 3357
    .end local v41    # "mimeType":Ljava/lang/String;
    :cond_217
    if-eqz v31, :cond_230

    .line 3358
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v37

    move/from16 v21, v5

    move-object/from16 v22, p3

    move/from16 v27, p4

    invoke-direct/range {v18 .. v27}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3361
    :cond_230
    return-void
.end method

.method private compToString(Landroid/util/ArraySet;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4372
    .local p1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "[]"

    goto :goto_a
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 5073
    if-nez p1, :cond_9

    .line 5074
    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5093
    :goto_8
    return-void

    .line 5077
    :cond_9
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5078
    const-string v1, "base"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5079
    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    if-eqz v1, :cond_21

    .line 5080
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 5082
    :cond_21
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_4c

    .line 5083
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    .line 5084
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5086
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    if-eqz v1, :cond_49

    .line 5087
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 5083
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 5091
    .end local v0    # "i":I
    :cond_4c
    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;
    .registers 47
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p10, "nativeLibraryRootDir"    # Ljava/lang/String;
    .param p11, "nativeLibraryDir"    # Ljava/lang/String;
    .param p12, "secondaryNativeLibraryDir"    # Ljava/lang/String;
    .param p13, "nativeLibraryRootRequiresIsa"    # Z
    .param p14, "vc"    # I
    .param p15, "pkgFlags"    # I
    .param p16, "pkgPrivateFlags"    # I
    .param p17, "installUser"    # Landroid/os/UserHandle;
    .param p18, "add"    # Z
    .param p19, "allowInstall"    # Z

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 808
    .local v3, "p":Lcom/android/server/pm/PackageSetting;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v25

    .line 809
    .local v25, "userManager":Lcom/android/server/pm/UserManagerService;
    if-eqz v3, :cond_9f

    .line 821
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 823
    const/high16 v4, 0x40000

    and-int v4, v4, p15

    if-eqz v4, :cond_29

    .line 824
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 827
    :cond_29
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_127

    .line 831
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to update system app code path from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_57
    :goto_57
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p4

    if-eq v4, v0, :cond_16d

    .line 848
    const/4 v5, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " shared user changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_165

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_7d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p4, :cond_169

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_8d
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "; replacing with new"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 854
    const/4 v3, 0x0

    .line 863
    :cond_9f
    :goto_9f
    if-nez v3, :cond_29e

    .line 864
    if-eqz p2, :cond_17d

    .line 866
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 877
    .restart local v3    # "p":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v22, v0

    .line 878
    .local v22, "s":Lcom/android/server/pm/PackageSignatures;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 879
    move-object/from16 v0, v22

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 880
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 881
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 882
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 883
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 966
    .end local v22    # "s":Lcom/android/server/pm/PackageSignatures;
    :goto_102
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gez v4, :cond_290

    .line 967
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " could not be assigned a valid uid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 969
    const/4 v4, 0x0

    .line 997
    :goto_126
    return-object v4

    .line 836
    :cond_127
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " codePath changed from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; Retaining data and using new"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    move-object/from16 v0, p7

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_57

    .line 848
    :cond_165
    const-string v4, "<nothing>"

    goto/16 :goto_7d

    :cond_169
    const-string v4, "<nothing>"

    goto/16 :goto_8d

    .line 859
    :cond_16d
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v5, p15, 0x1

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 860
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v5, p16, 0x8

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    goto/16 :goto_9f

    .line 889
    :cond_17d
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 897
    .restart local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 899
    and-int/lit8 v4, p15, 0x1

    if-nez v4, :cond_203

    .line 905
    invoke-virtual/range {p0 .. p0}, getAllUsers()Ljava/util/List;

    move-result-object v26

    .line 906
    .local v26, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p17, :cond_1fe

    invoke-virtual/range {p17 .. p17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    .line 907
    .local v21, "installUserId":I
    :goto_1b1
    if-eqz v26, :cond_203

    if-eqz p19, :cond_203

    .line 908
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_1b9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_203

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    .line 915
    .local v23, "user":Landroid/content/pm/UserInfo;
    if-eqz p17, :cond_1e2

    const/4 v4, -0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_1da

    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_1e2

    :cond_1da
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_201

    :cond_1e2
    const/4 v6, 0x1

    .line 919
    .local v6, "installed":Z
    :goto_1e3
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V

    .line 927
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writePackageRestrictionsLPr(I)V

    goto :goto_1b9

    .line 906
    .end local v6    # "installed":Z
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "installUserId":I
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    :cond_1fe
    const/16 v21, 0x0

    goto :goto_1b1

    .line 915
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v21    # "installUserId":I
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    :cond_201
    const/4 v6, 0x0

    goto :goto_1e3

    .line 931
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "installUserId":I
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    .end local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_203
    if-eqz p4, :cond_20d

    .line 932
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_102

    .line 935
    :cond_20d
    move-object/from16 v0, p0

    iget-object v4, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/PackageSetting;

    .line 936
    .local v19, "dis":Lcom/android/server/pm/PackageSetting;
    if-eqz v19, :cond_286

    .line 941
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_233

    .line 942
    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Signature;

    iput-object v4, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 944
    :cond_233
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 946
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 948
    invoke-virtual/range {p0 .. p0}, getAllUsers()Ljava/util/List;

    move-result-object v26

    .line 949
    .restart local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v26, :cond_27b

    .line 950
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_24e
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    .line 951
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 952
    .local v24, "userId":I
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 954
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    goto :goto_24e

    .line 959
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v23    # "user":Landroid/content/pm/UserInfo;
    .end local v24    # "userId":I
    :cond_27b
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v3, v1}, addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_102

    .line 962
    .end local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_286
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, newUserIdLPw(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_102

    .line 971
    .end local v19    # "dis":Lcom/android/server/pm/PackageSetting;
    :cond_290
    if-eqz p18, :cond_29b

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    :cond_29b
    move-object v4, v3

    .line 997
    goto/16 :goto_126

    .line 977
    :cond_29e
    if-eqz p17, :cond_29b

    if-eqz p19, :cond_29b

    .line 981
    invoke-virtual/range {p0 .. p0}, getAllUsers()Ljava/util/List;

    move-result-object v26

    .line 982
    .restart local v26    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v26, :cond_29b

    .line 983
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_2ac
    :goto_2ac
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    .line 984
    .restart local v23    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p17 .. p17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2cd

    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_2d7

    :cond_2cd
    invoke-virtual/range {p17 .. p17}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, v23

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_2ac

    .line 987
    :cond_2d7
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    .line 988
    .restart local v6    # "installed":Z
    if-nez v6, :cond_2ac

    .line 989
    const/4 v4, 0x1

    move-object/from16 v0, v23

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 990
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writePackageRestrictionsLPr(I)V

    goto :goto_2ac
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1495
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1483
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1484
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1490
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1491
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private hasPackageDisableForGuest(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 464
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .line 465
    .local v3, "um":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->isGuest(I)Z

    move-result v6

    if-nez v6, :cond_14

    .line 466
    const-string v6, "PackageSettings"

    const-string/jumbo v7, "um.isGuest return false"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_13
    :goto_13
    return v5

    .line 470
    :cond_14
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    .line 471
    .local v4, "userState":Landroid/content/pm/PackageUserState;
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 472
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_25

    .line 473
    const-string v6, "PackageSettings"

    const-string/jumbo v7, "no pkg in packageSettings"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 477
    :cond_25
    const/16 v6, 0x80

    invoke-static {v2, v6, v4, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 479
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_36

    .line 480
    const-string v6, "PackageSettings"

    const-string/jumbo v7, "no applicationInfo"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 484
    :cond_36
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 485
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_13

    .line 486
    const-string v6, "com.samsung.android.multiuser.disable_for_guest"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_13
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4339
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4340
    .local v0, "N":I
    sget v1, mFirstAvailableUid:I

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1d

    .line 4341
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 4342
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4343
    add-int/lit16 v2, v1, 0x2710

    .line 4353
    :goto_19
    return v2

    .line 4340
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4348
    :cond_1d
    const/16 v2, 0x270f

    if-le v0, v2, :cond_23

    .line 4349
    const/4 v2, -0x1

    goto :goto_19

    .line 4352
    :cond_23
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4353
    add-int/lit16 v2, v0, 0x2710

    goto :goto_19
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 5159
    const/4 v1, 0x0

    .line 5160
    .local v1, "flagsString":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz p1, :cond_29

    .line 5161
    if-nez v1, :cond_12

    .line 5162
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "flagsString":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5163
    .restart local v1    # "flagsString":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5164
    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5166
    :cond_12
    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v0, v2, v3

    .line 5167
    .local v0, "flag":I
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr p1, v2

    .line 5168
    invoke-static {v0}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5169
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5171
    .end local v0    # "flag":I
    :cond_29
    if-eqz v1, :cond_35

    .line 5172
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5175
    :goto_34
    return-object v2

    :cond_35
    const-string v2, ""

    goto :goto_34
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .prologue
    .line 4507
    const-string v2, "[ "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p2

    if-ge v0, v2, :cond_24

    .line 4509
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4510
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_21

    .line 4511
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4512
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4508
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 4515
    .end local v1    # "mask":I
    :cond_24
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4516
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1872
    const/4 v1, 0x0

    .line 1874
    .local v1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1877
    .local v2, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3c

    if-ne v4, v7, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3c

    .line 1879
    :cond_15
    if-eq v4, v7, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 1883
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1884
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1885
    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 1887
    if-nez v1, :cond_38

    .line 1888
    new-instance v1, Landroid/util/ArraySet;

    .end local v1    # "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1890
    .restart local v1    # "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_38
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1894
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3c
    return-object v1
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1605
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1608
    .local v2, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4e

    if-ne v4, v7, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_4e

    .line 1609
    :cond_14
    if-eq v4, v7, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    .line 1612
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1613
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1614
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1615
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_5

    .line 1617
    .end local v0    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1619
    .local v1, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1620
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1623
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4e
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 3466
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3469
    .local v0, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_85

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_85

    .line 3470
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 3474
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3475
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 3476
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3477
    .local v2, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3c

    .line 3478
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v2, v4, p3}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_6

    .line 3481
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 3487
    .end local v2    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :cond_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3489
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 3492
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_85
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 4046
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 4049
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 4050
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 4054
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4055
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 4056
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4057
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 4058
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    .line 4068
    .end local v0    # "name":Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 4060
    .restart local v0    # "name":Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 4065
    .end local v0    # "name":Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 4070
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 36
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3558
    const/4 v6, 0x0

    const-string/jumbo v32, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3559
    .local v3, "name":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "realName"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3560
    .local v4, "realName":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v32, "codePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3561
    .local v18, "codePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "resourcePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3563
    .local v25, "resourcePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "requiredCpuAbi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3564
    .local v23, "legacyCpuAbiStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3566
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "primaryCpuAbi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3567
    .local v8, "primaryCpuAbiStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "secondaryCpuAbi"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3568
    .local v9, "secondaryCpuAbiStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v32, "cpuAbiOverride"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3570
    .local v10, "cpuAbiOverrideStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "nativeLibraryRootDir"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3571
    .local v11, "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "nativeLibraryDir"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3572
    .local v12, "nativeLibraryDir":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "secondaryNativeLibraryDir"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3573
    .local v13, "secondaryNativeLibraryDir":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v32, "nativeLibraryRootRequiresIsa"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 3576
    .local v14, "nativeLibraryRootRequiresIsa":Z
    if-nez v8, :cond_a4

    if-eqz v23, :cond_a4

    .line 3577
    move-object/from16 v8, v23

    .line 3580
    :cond_a4
    if-nez v25, :cond_a8

    .line 3581
    move-object/from16 v25, v18

    .line 3583
    :cond_a8
    const/4 v6, 0x0

    const-string/jumbo v32, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 3584
    .local v31, "version":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3585
    .local v15, "versionCode":I
    if-eqz v31, :cond_bb

    .line 3587
    :try_start_b7
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_ba} :catch_1c4

    move-result v15

    .line 3593
    :cond_bb
    const/16 v16, 0x0

    .line 3594
    .local v16, "pkgFlags":I
    const/16 v17, 0x0

    .line 3595
    .local v17, "pkgPrivateFlags":I
    or-int/lit8 v16, v16, 0x1

    .line 3596
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3597
    .local v5, "codePathFile":Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 3598
    or-int/lit8 v17, v17, 0x8

    .line 3600
    :cond_d0
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 3608
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v6, 0x0

    const-string/jumbo v32, "dm"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3609
    .local v19, "dexModeStr":Ljava/lang/String;
    if-eqz v19, :cond_f0

    .line 3611
    :try_start_ea
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/server/pm/PackageSetting;->dexMode:I
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_ea .. :try_end_f0} :catch_1d1

    .line 3616
    :cond_f0
    const/4 v6, 0x0

    const-string/jumbo v32, "dt"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3617
    .local v20, "dexTimeStampStr":Ljava/lang/String;
    if-eqz v20, :cond_10a

    .line 3619
    const/16 v6, 0x10

    :try_start_100
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J
    :try_end_10a
    .catch Ljava/lang/NumberFormatException; {:try_start_100 .. :try_end_10a} :catch_1de

    .line 3626
    :cond_10a
    const/4 v6, 0x0

    const-string/jumbo v32, "ft"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3627
    .local v27, "timeStampStr":Ljava/lang/String;
    if-eqz v27, :cond_1f8

    .line 3629
    const/16 v6, 0x10

    :try_start_11a
    move-object/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    .line 3630
    .local v28, "timeStamp":J
    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_125
    .catch Ljava/lang/NumberFormatException; {:try_start_11a .. :try_end_125} :catch_1eb

    .line 3645
    .end local v28    # "timeStamp":J
    :cond_125
    :goto_125
    const/4 v6, 0x0

    const-string/jumbo v32, "it"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3646
    if-eqz v27, :cond_13f

    .line 3648
    const/16 v6, 0x10

    :try_start_135
    move-object/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_13f
    .catch Ljava/lang/NumberFormatException; {:try_start_135 .. :try_end_13f} :catch_21e

    .line 3653
    :cond_13f
    const/4 v6, 0x0

    const-string/jumbo v32, "ut"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3654
    if-eqz v27, :cond_159

    .line 3656
    const/16 v6, 0x10

    :try_start_14f
    move-object/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_159
    .catch Ljava/lang/NumberFormatException; {:try_start_14f .. :try_end_159} :catch_22b

    .line 3661
    :cond_159
    const/4 v6, 0x0

    const-string/jumbo v32, "userId"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3662
    .local v22, "idStr":Ljava/lang/String;
    if-eqz v22, :cond_238

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_16b
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3663
    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v6, :cond_185

    .line 3664
    const/4 v6, 0x0

    const-string/jumbo v32, "sharedUserId"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3665
    .local v26, "sharedIdStr":Ljava/lang/String;
    if-eqz v26, :cond_23b

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_183
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3668
    .end local v26    # "sharedIdStr":Ljava/lang/String;
    :cond_185
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    .line 3671
    .local v24, "outerDepth":I
    :cond_189
    :goto_189
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    .local v30, "type":I
    const/4 v6, 0x1

    move/from16 v0, v30

    if-eq v0, v6, :cond_260

    const/4 v6, 0x3

    move/from16 v0, v30

    if-ne v0, v6, :cond_19f

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v24

    if-le v6, v0, :cond_260

    .line 3672
    :cond_19f
    const/4 v6, 0x3

    move/from16 v0, v30

    if-eq v0, v6, :cond_189

    const/4 v6, 0x4

    move/from16 v0, v30

    if-eq v0, v6, :cond_189

    .line 3676
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v32, "perms"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23e

    .line 3677
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    goto :goto_189

    .line 3588
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "codePathFile":Ljava/io/File;
    .end local v16    # "pkgFlags":I
    .end local v17    # "pkgPrivateFlags":I
    .end local v19    # "dexModeStr":Ljava/lang/String;
    .end local v20    # "dexTimeStampStr":Ljava/lang/String;
    .end local v22    # "idStr":Ljava/lang/String;
    .end local v24    # "outerDepth":I
    .end local v27    # "timeStampStr":Ljava/lang/String;
    .end local v30    # "type":I
    :catch_1c4
    move-exception v21

    .line 3589
    .local v21, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3612
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "codePathFile":Ljava/io/File;
    .restart local v16    # "pkgFlags":I
    .restart local v17    # "pkgPrivateFlags":I
    .restart local v19    # "dexModeStr":Ljava/lang/String;
    :catch_1d1
    move-exception v21

    .line 3613
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3620
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v20    # "dexTimeStampStr":Ljava/lang/String;
    :catch_1de
    move-exception v21

    .line 3621
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3631
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v27    # "timeStampStr":Ljava/lang/String;
    :catch_1eb
    move-exception v21

    .line 3632
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3635
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_1f8
    const/4 v6, 0x0

    const-string/jumbo v32, "ts"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3636
    if-eqz v27, :cond_125

    .line 3638
    :try_start_206
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 3639
    .restart local v28    # "timeStamp":J
    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_20f
    .catch Ljava/lang/NumberFormatException; {:try_start_206 .. :try_end_20f} :catch_211

    goto/16 :goto_125

    .line 3640
    .end local v28    # "timeStamp":J
    :catch_211
    move-exception v21

    .line 3641
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3649
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :catch_21e
    move-exception v21

    .line 3650
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3657
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :catch_22b
    move-exception v21

    .line 3658
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3662
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    .restart local v22    # "idStr":Ljava/lang/String;
    :cond_238
    const/4 v6, 0x0

    goto/16 :goto_16b

    .line 3665
    .restart local v26    # "sharedIdStr":Ljava/lang/String;
    :cond_23b
    const/4 v6, 0x0

    goto/16 :goto_183

    .line 3679
    .end local v26    # "sharedIdStr":Ljava/lang/String;
    .restart local v24    # "outerDepth":I
    .restart local v30    # "type":I
    :cond_23e
    const/4 v6, 0x5

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unknown element under <updated-package>: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3681
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_189

    .line 3685
    :cond_260
    move-object/from16 v0, p0

    iget-object v6, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1627
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1628
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1629
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read domain verification for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 4074
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 4077
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_72

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_72

    .line 4078
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 4082
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4083
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 4084
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4085
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 4086
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    .line 4096
    .end local v0    # "name":Ljava/lang/String;
    :goto_38
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 4088
    .restart local v0    # "name":Ljava/lang/String;
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 4093
    .end local v0    # "name":Ljava/lang/String;
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_38

    .line 4098
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_72
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ns"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 3495
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3497
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 3500
    .end local p4    # "defValue":I
    :goto_6
    return p4

    .restart local p4    # "defValue":I
    :cond_7
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p4

    goto :goto_6

    .line 3501
    :catch_c
    move-exception v0

    .line 3502
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3506
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 57
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3694
    const/16 v40, 0x0

    .line 3695
    .local v40, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3696
    .local v6, "realName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 3697
    .local v34, "idStr":Ljava/lang/String;
    const/16 v45, 0x0

    .line 3698
    .local v45, "sharedIdStr":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3699
    .local v22, "codePathStr":Ljava/lang/String;
    const/16 v44, 0x0

    .line 3700
    .local v44, "resourcePathStr":Ljava/lang/String;
    const/16 v37, 0x0

    .line 3701
    .local v37, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3702
    .local v9, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3703
    .local v10, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3704
    .local v11, "secondaryCpuAbiString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3706
    .local v12, "cpuAbiOverrideString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3707
    .local v13, "nativeLibraryRootDir":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3708
    .local v14, "nativeLibraryDir":Ljava/lang/String;
    const/4 v15, 0x0

    .line 3709
    .local v15, "secondaryNativeLibraryDir":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3712
    .local v16, "nativeLibraryRootRequiresIsa":Z
    const/16 v25, 0x0

    .line 3713
    .local v25, "dm":I
    const-wide/16 v26, 0x0

    .line 3715
    .local v26, "dt":J
    const/16 v46, 0x0

    .line 3716
    .local v46, "systemStr":Ljava/lang/String;
    const/16 v36, 0x0

    .line 3717
    .local v36, "installerPackageName":Ljava/lang/String;
    const/16 v54, 0x0

    .line 3718
    .local v54, "volumeUuid":Ljava/lang/String;
    const/16 v52, 0x0

    .line 3719
    .local v52, "uidError":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3720
    .local v19, "pkgFlags":I
    const/16 v20, 0x0

    .line 3721
    .local v20, "pkgPrivateFlags":I
    const-wide/16 v48, 0x0

    .line 3722
    .local v48, "timeStamp":J
    const-wide/16 v30, 0x0

    .line 3723
    .local v30, "firstInstallTime":J
    const-wide/16 v38, 0x0

    .line 3724
    .local v38, "lastUpdateTime":J
    const/16 v42, 0x0

    .line 3725
    .local v42, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    const/16 v53, 0x0

    .line 3726
    .local v53, "version":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3728
    .local v18, "versionCode":I
    const/4 v5, 0x0

    :try_start_33
    const-string/jumbo v7, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 3729
    const/4 v5, 0x0

    const-string/jumbo v7, "realName"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3730
    const/4 v5, 0x0

    const-string/jumbo v7, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3731
    const/4 v5, 0x0

    const-string/jumbo v7, "uidError"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 3732
    const/4 v5, 0x0

    const-string/jumbo v7, "sharedUserId"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3733
    const/4 v5, 0x0

    const-string v7, "codePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3734
    const/4 v5, 0x0

    const-string/jumbo v7, "resourcePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 3736
    const/4 v5, 0x0

    const-string/jumbo v7, "requiredCpuAbi"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 3738
    const/4 v5, 0x0

    const-string/jumbo v7, "nativeLibraryPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3739
    const/4 v5, 0x0

    const-string/jumbo v7, "primaryCpuAbi"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3740
    const/4 v5, 0x0

    const-string/jumbo v7, "secondaryCpuAbi"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3741
    const/4 v5, 0x0

    const-string v7, "cpuAbiOverride"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3744
    const/4 v5, 0x0

    const-string/jumbo v7, "nativeLibraryRootDir"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3745
    const/4 v5, 0x0

    const-string/jumbo v7, "nativeLibraryDir"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3746
    const/4 v5, 0x0

    const-string/jumbo v7, "secondaryNativeLibraryDir"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3747
    const/4 v5, 0x0

    const-string/jumbo v7, "nativeLibraryRootRequiresIsa"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 3750
    const/4 v5, 0x0

    const-string/jumbo v7, "dm"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_dd} :catch_250

    move-result-object v23

    .line 3751
    .local v23, "dexModeStr":Ljava/lang/String;
    if-eqz v23, :cond_e4

    .line 3753
    :try_start_e0
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_e3} :catch_245

    move-result v25

    .line 3758
    :cond_e4
    const/4 v5, 0x0

    :try_start_e5
    const-string/jumbo v7, "dt"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_ed} :catch_250

    move-result-object v24

    .line 3759
    .local v24, "dexTimeStampStr":Ljava/lang/String;
    if-eqz v24, :cond_f8

    .line 3761
    const/16 v5, 0x10

    :try_start_f2
    move-object/from16 v0, v24

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_f7
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_f7} :catch_290

    move-result-wide v26

    .line 3767
    :cond_f8
    if-nez v10, :cond_fe

    if-eqz v37, :cond_fe

    .line 3768
    move-object/from16 v10, v37

    .line 3771
    :cond_fe
    const/4 v5, 0x0

    :try_start_ff
    const-string/jumbo v7, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_ff .. :try_end_107} :catch_250

    move-result-object v53

    .line 3772
    if-eqz v53, :cond_10e

    .line 3774
    :try_start_10a
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_10a .. :try_end_10d} :catch_29b

    move-result v18

    .line 3779
    :cond_10e
    const/4 v5, 0x0

    :try_start_10f
    const-string/jumbo v7, "installer"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3780
    const/4 v5, 0x0

    const-string/jumbo v7, "volumeUuid"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 3782
    const/4 v5, 0x0

    const-string/jumbo v7, "publicFlags"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12b
    .catch Ljava/lang/NumberFormatException; {:try_start_10f .. :try_end_12b} :catch_250

    move-result-object v46

    .line 3783
    if-eqz v46, :cond_2b1

    .line 3785
    :try_start_12e
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_131
    .catch Ljava/lang/NumberFormatException; {:try_start_12e .. :try_end_131} :catch_2a6

    move-result v19

    .line 3789
    const/4 v5, 0x0

    :try_start_133
    const-string/jumbo v7, "privateFlags"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13b
    .catch Ljava/lang/NumberFormatException; {:try_start_133 .. :try_end_13b} :catch_250

    move-result-object v46

    .line 3790
    if-eqz v46, :cond_142

    .line 3792
    :try_start_13e
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_141
    .catch Ljava/lang/NumberFormatException; {:try_start_13e .. :try_end_141} :catch_666

    move-result v20

    .line 3833
    :cond_142
    :goto_142
    const/4 v5, 0x0

    :try_start_143
    const-string/jumbo v7, "ft"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_14b
    .catch Ljava/lang/NumberFormatException; {:try_start_143 .. :try_end_14b} :catch_250

    move-result-object v50

    .line 3834
    .local v50, "timeStampStr":Ljava/lang/String;
    if-eqz v50, :cond_31f

    .line 3836
    const/16 v5, 0x10

    :try_start_150
    move-object/from16 v0, v50

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_155
    .catch Ljava/lang/NumberFormatException; {:try_start_150 .. :try_end_155} :catch_314

    move-result-wide v48

    .line 3850
    :cond_156
    :goto_156
    const/4 v5, 0x0

    :try_start_157
    const-string/jumbo v7, "it"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_15f
    .catch Ljava/lang/NumberFormatException; {:try_start_157 .. :try_end_15f} :catch_250

    move-result-object v50

    .line 3851
    if-eqz v50, :cond_16a

    .line 3853
    const/16 v5, 0x10

    :try_start_164
    move-object/from16 v0, v50

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_169
    .catch Ljava/lang/NumberFormatException; {:try_start_164 .. :try_end_169} :catch_33c

    move-result-wide v30

    .line 3858
    :cond_16a
    const/4 v5, 0x0

    :try_start_16b
    const-string/jumbo v7, "ut"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_173
    .catch Ljava/lang/NumberFormatException; {:try_start_16b .. :try_end_173} :catch_250

    move-result-object v50

    .line 3859
    if-eqz v50, :cond_17e

    .line 3861
    const/16 v5, 0x10

    :try_start_178
    move-object/from16 v0, v50

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_178 .. :try_end_17d} :catch_347

    move-result-wide v38

    .line 3869
    :cond_17e
    if-eqz v34, :cond_352

    :try_start_180
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 3870
    .local v17, "userId":I
    :goto_184
    if-nez v44, :cond_188

    .line 3871
    move-object/from16 v44, v22

    .line 3873
    :cond_188
    if-eqz v6, :cond_18e

    .line 3874
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 3876
    :cond_18e
    if-nez v40, :cond_356

    .line 3877
    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1ab
    .catch Ljava/lang/NumberFormatException; {:try_start_180 .. :try_end_1ab} :catch_250

    move-object/from16 v4, v42

    .line 3938
    .end local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .local v4, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :goto_1ad
    if-eqz v4, :cond_662

    .line 3939
    const-string/jumbo v5, "true"

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 3940
    move-object/from16 v0, v36

    iput-object v0, v4, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 3941
    move-object/from16 v0, v54

    iput-object v0, v4, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 3942
    iput-object v9, v4, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3943
    iput-object v10, v4, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 3944
    iput-object v11, v4, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3946
    iput-object v13, v4, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3947
    iput-object v14, v4, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryDir:Ljava/lang/String;

    .line 3948
    iput-object v15, v4, Lcom/android/server/pm/PackageSettingBase;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 3949
    move/from16 v0, v16

    iput-boolean v0, v4, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryRootRequiresIsa:Z

    .line 3952
    move/from16 v0, v25

    iput v0, v4, Lcom/android/server/pm/PackageSettingBase;->dexMode:I

    .line 3953
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->dexTimeStamp:J

    .line 3956
    const/4 v5, 0x0

    const-string/jumbo v7, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3957
    .local v29, "enabledStr":Ljava/lang/String;
    if-eqz v29, :cond_4f1

    .line 3959
    :try_start_1e6
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V
    :try_end_1ef
    .catch Ljava/lang/NumberFormatException; {:try_start_1e6 .. :try_end_1ef} :catch_47a

    .line 3979
    :goto_1ef
    const/4 v5, 0x0

    const-string/jumbo v7, "installStatus"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3980
    .local v35, "installStatusStr":Ljava/lang/String;
    if-eqz v35, :cond_209

    .line 3981
    const-string/jumbo v5, "false"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f9

    .line 3982
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 3987
    :cond_209
    :goto_209
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v41

    .line 3990
    .local v41, "outerDepth":I
    :cond_20d
    :goto_20d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v51

    .local v51, "type":I
    const/4 v5, 0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_665

    const/4 v5, 0x3

    move/from16 v0, v51

    if-ne v0, v5, :cond_223

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v41

    if-le v5, v0, :cond_665

    .line 3991
    :cond_223
    const/4 v5, 0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_20d

    const/4 v5, 0x4

    move/from16 v0, v51

    if-eq v0, v5, :cond_20d

    .line 3995
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v47

    .line 3997
    .local v47, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "disabled-components"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4fe

    .line 3998
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_20d

    .line 3754
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v17    # "userId":I
    .end local v24    # "dexTimeStampStr":Ljava/lang/String;
    .end local v29    # "enabledStr":Ljava/lang/String;
    .end local v35    # "installStatusStr":Ljava/lang/String;
    .end local v41    # "outerDepth":I
    .end local v47    # "tagName":Ljava/lang/String;
    .end local v50    # "timeStampStr":Ljava/lang/String;
    .end local v51    # "type":I
    .restart local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_245
    move-exception v28

    .line 3755
    .local v28, "e":Ljava/lang/NumberFormatException;
    :try_start_246
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_250
    .catch Ljava/lang/NumberFormatException; {:try_start_246 .. :try_end_250} :catch_250

    .line 3932
    .end local v23    # "dexModeStr":Ljava/lang/String;
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :catch_250
    move-exception v28

    move-object/from16 v4, v42

    .line 3933
    .end local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    :goto_253
    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has bad userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3936
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3762
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    .restart local v23    # "dexModeStr":Ljava/lang/String;
    .restart local v24    # "dexTimeStampStr":Ljava/lang/String;
    .restart local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_290
    move-exception v28

    .line 3763
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    :try_start_291
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3775
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :catch_29b
    move-exception v28

    .line 3776
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3786
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :catch_2a6
    move-exception v28

    .line 3787
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3798
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :cond_2b1
    const/4 v5, 0x0

    const-string/jumbo v7, "flags"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2ba
    .catch Ljava/lang/NumberFormatException; {:try_start_291 .. :try_end_2ba} :catch_250

    move-result-object v46

    .line 3799
    if-eqz v46, :cond_2f2

    .line 3801
    :try_start_2bd
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c0
    .catch Ljava/lang/NumberFormatException; {:try_start_2bd .. :try_end_2c0} :catch_669

    move-result v19

    .line 3804
    :goto_2c1
    :try_start_2c1
    sget v5, PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v5, v5, v19

    if-eqz v5, :cond_2c9

    .line 3805
    or-int/lit8 v20, v20, 0x1

    .line 3807
    :cond_2c9
    sget v5, PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v5, v5, v19

    if-eqz v5, :cond_2d1

    .line 3808
    or-int/lit8 v20, v20, 0x2

    .line 3810
    :cond_2d1
    sget v5, PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    and-int v5, v5, v19

    if-eqz v5, :cond_2d9

    .line 3811
    or-int/lit8 v20, v20, 0x4

    .line 3813
    :cond_2d9
    sget v5, PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v5, v5, v19

    if-eqz v5, :cond_2e1

    .line 3814
    or-int/lit8 v20, v20, 0x8

    .line 3816
    :cond_2e1
    sget v5, PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v7, PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int/2addr v5, v7

    sget v7, PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    or-int/2addr v5, v7

    sget v7, PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    or-int/2addr v5, v7

    xor-int/lit8 v5, v5, -0x1

    and-int v19, v19, v5

    goto/16 :goto_142

    .line 3822
    :cond_2f2
    const/4 v5, 0x0

    const-string/jumbo v7, "system"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3823
    if-eqz v46, :cond_310

    .line 3824
    const-string/jumbo v5, "true"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30e

    const/4 v5, 0x1

    :goto_30a
    or-int v19, v19, v5

    goto/16 :goto_142

    :cond_30e
    const/4 v5, 0x0

    goto :goto_30a

    .line 3829
    :cond_310
    or-int/lit8 v19, v19, 0x1

    goto/16 :goto_142

    .line 3837
    .restart local v50    # "timeStampStr":Ljava/lang/String;
    :catch_314
    move-exception v28

    .line 3838
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3841
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :cond_31f
    const/4 v5, 0x0

    const-string/jumbo v7, "ts"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_328
    .catch Ljava/lang/NumberFormatException; {:try_start_2c1 .. :try_end_328} :catch_250

    move-result-object v50

    .line 3842
    if-eqz v50, :cond_156

    .line 3844
    :try_start_32b
    invoke-static/range {v50 .. v50}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_32e
    .catch Ljava/lang/NumberFormatException; {:try_start_32b .. :try_end_32e} :catch_331

    move-result-wide v48

    goto/16 :goto_156

    .line 3845
    :catch_331
    move-exception v28

    .line 3846
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    :try_start_332
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3854
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :catch_33c
    move-exception v28

    .line 3855
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3862
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :catch_347
    move-exception v28

    .line 3863
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3869
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :cond_352
    const/16 v17, 0x0

    goto/16 :goto_184

    .line 3880
    .restart local v17    # "userId":I
    :cond_356
    if-nez v22, :cond_377

    .line 3881
    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v4, v42

    .end local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_1ad

    .line 3884
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_377
    if-lez v17, :cond_3ce

    .line 3885
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v44

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v20}, addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIII)Lcom/android/server/pm/PackageSetting;
    :try_end_390
    .catch Ljava/lang/NumberFormatException; {:try_start_332 .. :try_end_390} :catch_250

    move-result-object v4

    .line 3895
    .end local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    if-nez v4, :cond_3bf

    .line 3896
    const/4 v5, 0x6

    :try_start_394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure adding uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " while parsing settings at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_1ad

    .line 3932
    :catch_3bc
    move-exception v28

    goto/16 :goto_253

    .line 3900
    :cond_3bf
    move-wide/from16 v0, v48

    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 3901
    move-wide/from16 v0, v30

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 3902
    move-wide/from16 v0, v38

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_3cc
    .catch Ljava/lang/NumberFormatException; {:try_start_394 .. :try_end_3cc} :catch_3bc

    goto/16 :goto_1ad

    .line 3904
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_3ce
    if-eqz v45, :cond_443

    .line 3905
    if-eqz v45, :cond_409

    :try_start_3d2
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 3906
    :goto_3d6
    if-lez v17, :cond_40c

    .line 3907
    new-instance v4, Lcom/android/server/pm/PendingPackage;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v44

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v4 .. v20}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIII)V
    :try_end_3ef
    .catch Ljava/lang/NumberFormatException; {:try_start_3d2 .. :try_end_3ef} :catch_250

    .line 3914
    .end local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :try_start_3ef
    move-wide/from16 v0, v48

    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 3915
    move-wide/from16 v0, v30

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 3916
    move-wide/from16 v0, v38

    iput-wide v0, v4, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 3917
    move-object/from16 v0, p0

    iget-object v7, v0, mPendingPackages:Ljava/util/ArrayList;

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/PendingPackage;

    move-object v5, v0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_407
    .catch Ljava/lang/NumberFormatException; {:try_start_3ef .. :try_end_407} :catch_3bc

    goto/16 :goto_1ad

    .line 3905
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_409
    const/16 v17, 0x0

    goto :goto_3d6

    .line 3922
    :cond_40c
    const/4 v5, 0x5

    :try_start_40d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has bad sharedId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v4, v42

    .end local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_1ad

    .line 3928
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_443
    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has bad userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_476
    .catch Ljava/lang/NumberFormatException; {:try_start_40d .. :try_end_476} :catch_250

    move-object/from16 v4, v42

    .end local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_1ad

    .line 3960
    .restart local v29    # "enabledStr":Ljava/lang/String;
    :catch_47a
    move-exception v28

    .line 3961
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "true"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48e

    .line 3962
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_1ef

    .line 3963
    :cond_48e
    const-string/jumbo v5, "false"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a1

    .line 3964
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_1ef

    .line 3965
    :cond_4a1
    const-string/jumbo v5, "default"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b4

    .line 3966
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_1ef

    .line 3968
    :cond_4b4
    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has bad enabled value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3972
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3976
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :cond_4f1
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_1ef

    .line 3984
    .restart local v35    # "installStatusStr":Ljava/lang/String;
    :cond_4f9
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    goto/16 :goto_209

    .line 3999
    .restart local v41    # "outerDepth":I
    .restart local v47    # "tagName":Ljava/lang/String;
    .restart local v51    # "type":I
    :cond_4fe
    const-string/jumbo v5, "enabled-components"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_513

    .line 4000
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v5}, readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_20d

    .line 4001
    :cond_513
    const-string/jumbo v5, "sigs"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52b

    .line 4002
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p0

    iget-object v7, v0, mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v7}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_20d

    .line 4003
    :cond_52b
    const-string/jumbo v5, "perms"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_546

    .line 4004
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    .line 4006
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    goto/16 :goto_20d

    .line 4007
    :cond_546
    const-string/jumbo v5, "proper-signing-keyset"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59e

    .line 4008
    const/4 v5, 0x0

    const-string/jumbo v7, "identifier"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 4009
    .local v32, "id":J
    move-object/from16 v0, p0

    iget-object v5, v0, mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    .line 4010
    .local v43, "refCt":Ljava/lang/Integer;
    if-eqz v43, :cond_58d

    .line 4011
    move-object/from16 v0, p0

    iget-object v5, v0, mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4015
    :goto_584
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto/16 :goto_20d

    .line 4013
    :cond_58d
    move-object/from16 v0, p0

    iget-object v5, v0, mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_584

    .line 4016
    .end local v32    # "id":J
    .end local v43    # "refCt":Ljava/lang/Integer;
    :cond_59e
    const-string/jumbo v5, "signing-keyset"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20d

    .line 4018
    const-string/jumbo v5, "upgrade-keyset"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5cb

    .line 4019
    const/4 v5, 0x0

    const-string/jumbo v7, "identifier"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 4020
    .restart local v32    # "id":J
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    goto/16 :goto_20d

    .line 4021
    .end local v32    # "id":J
    :cond_5cb
    const-string/jumbo v5, "defined-keyset"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62e

    .line 4022
    const/4 v5, 0x0

    const-string/jumbo v7, "identifier"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 4023
    .restart local v32    # "id":J
    const/4 v5, 0x0

    const-string v7, "alias"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 4024
    .local v21, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    .line 4025
    .restart local v43    # "refCt":Ljava/lang/Integer;
    if-eqz v43, :cond_61d

    .line 4026
    move-object/from16 v0, p0

    iget-object v5, v0, mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4030
    :goto_612
    iget-object v5, v4, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v32

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_20d

    .line 4028
    :cond_61d
    move-object/from16 v0, p0

    iget-object v5, v0, mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_612

    .line 4031
    .end local v21    # "alias":Ljava/lang/String;
    .end local v32    # "id":J
    .end local v43    # "refCt":Ljava/lang/Integer;
    :cond_62e
    const-string/jumbo v5, "domain-verification"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_642

    .line 4032
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_20d

    .line 4034
    :cond_642
    const/4 v5, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <package>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4036
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_20d

    .line 4040
    .end local v29    # "enabledStr":Ljava/lang/String;
    .end local v35    # "installStatusStr":Ljava/lang/String;
    .end local v41    # "outerDepth":I
    .end local v47    # "tagName":Ljava/lang/String;
    .end local v51    # "type":I
    :cond_662
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4042
    :cond_665
    return-void

    .line 3793
    .end local v4    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v17    # "userId":I
    .end local v50    # "timeStampStr":Ljava/lang/String;
    .restart local v42    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_666
    move-exception v5

    goto/16 :goto_142

    .line 3802
    :catch_669
    move-exception v5

    goto/16 :goto_2c1
.end method

.method private readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 3512
    .local p1, "out":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3515
    .local v3, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_e9

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_e9

    .line 3516
    :cond_14
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 3520
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3521
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bf

    .line 3522
    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3523
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3524
    .local v6, "sourcePackage":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3525
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v2, :cond_a3

    if-eqz v6, :cond_a3

    .line 3526
    const-string/jumbo v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3527
    .local v1, "dynamic":Z
    new-instance v0, Lcom/android/server/pm/BasePermission;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_a1

    const/4 v9, 0x2

    :goto_53
    invoke-direct {v0, v10, v6, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3529
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    const/4 v9, 0x0

    const-string/jumbo v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 3531
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 3532
    if-eqz v1, :cond_97

    .line 3533
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 3534
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 3535
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 3536
    const/4 v9, 0x0

    const-string/jumbo v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 3537
    const/4 v9, 0x0

    const-string/jumbo v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3538
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3539
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 3541
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_97
    iget-object v9, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3552
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "dynamic":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :goto_9c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 3527
    .restart local v1    # "dynamic":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "ptype":Ljava/lang/String;
    .restart local v6    # "sourcePackage":Ljava/lang/String;
    :cond_a1
    const/4 v9, 0x0

    goto :goto_53

    .line 3543
    .end local v1    # "dynamic":Z
    :cond_a3
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9c

    .line 3548
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :cond_bf
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9c

    .line 3554
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_e9
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1583
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1586
    .local v0, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_52

    if-ne v3, v7, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_52

    .line 1587
    :cond_14
    if-eq v3, v7, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 1590
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1591
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1592
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1593
    .local v1, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_5

    .line 1595
    .end local v1    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_33
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1598
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1601
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_52
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1634
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1637
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    if-ne v3, v7, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    .line 1638
    :cond_14
    if-eq v3, v7, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 1641
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1642
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "domain-verification"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1643
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1648
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    iget-object v4, p0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1650
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_35
    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1654
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4101
    const/4 v2, 0x0

    .line 4102
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4103
    .local v1, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4104
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 4105
    .local v5, "pkgPrivateFlags":I
    const/4 v6, 0x0

    .line 4107
    .local v6, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v10, 0x0

    :try_start_6
    const-string/jumbo v11, "name"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4108
    const/4 v10, 0x0

    const-string/jumbo v11, "userId"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4109
    if-eqz v1, :cond_7c

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 4110
    .local v9, "userId":I
    :goto_1b
    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    const-string/jumbo v12, "system"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 4111
    or-int/lit8 v4, v4, 0x1

    .line 4113
    :cond_2e
    if-nez v2, :cond_7e

    .line 4114
    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_4b} :catch_b0

    .line 4137
    :cond_4b
    :goto_4b
    if-eqz v6, :cond_143

    .line 4138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 4141
    .local v3, "outerDepth":I
    :cond_51
    :goto_51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_146

    const/4 v10, 0x3

    if-ne v8, v10, :cond_61

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_146

    .line 4142
    :cond_61
    const/4 v10, 0x3

    if-eq v8, v10, :cond_51

    const/4 v10, 0x4

    if-eq v8, v10, :cond_51

    .line 4146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4147
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "sigs"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_111

    .line 4148
    iget-object v10, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v11, p0, mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v10, p1, v11}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_51

    .line 4109
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "userId":I
    :cond_7c
    const/4 v9, 0x0

    goto :goto_1b

    .line 4117
    .restart local v9    # "userId":I
    :cond_7e
    if-nez v9, :cond_ea

    .line 4118
    const/4 v10, 0x5

    :try_start_81
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in package manager settings: shared-user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has bad userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_af
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_af} :catch_b0

    goto :goto_4b

    .line 4130
    .end local v9    # "userId":I
    :catch_b0
    move-exception v0

    .line 4131
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in package manager settings: package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has bad userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4134
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4123
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "userId":I
    :cond_ea
    :try_start_ea
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9, v4, v5}, addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    if-nez v6, :cond_4b

    .line 4125
    const/4 v10, 0x6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Occurred while parsing settings at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/NumberFormatException; {:try_start_ea .. :try_end_10f} :catch_b0

    goto/16 :goto_4b

    .line 4149
    .restart local v3    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_111
    const-string/jumbo v10, "perms"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_123

    .line 4150
    invoke-virtual {v6}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V

    goto/16 :goto_51

    .line 4152
    :cond_123
    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <shared-user>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4154
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_51

    .line 4158
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_143
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4160
    :cond_146
    return-void
.end method

.method private removeUserIdLPw(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 1301
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1a

    .line 1302
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1303
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1304
    .local v1, "index":I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1308
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_14
    :goto_14
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, setFirstAvailableUid(I)V

    .line 1309
    return-void

    .line 1306
    :cond_1a
    iget-object v2, p0, mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newp"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 1247
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1248
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_18

    .line 1249
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_1e

    .line 1250
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1251
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1256
    :cond_18
    :goto_18
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    return-void

    .line 1253
    :cond_1e
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_18
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1312
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_14

    .line 1313
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1314
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1315
    .local v1, "index":I
    if-ge v1, v0, :cond_13

    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1319
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_13
    :goto_13
    return-void

    .line 1317
    :cond_14
    iget-object v2, p0, mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13
.end method

.method private setFirstAvailableUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 4331
    sget v0, mFirstAvailableUid:I

    if-le p1, v0, :cond_6

    .line 4332
    sput p1, mFirstAvailableUid:I

    .line 4334
    :cond_6
    return-void
.end method


# virtual methods
.method addComponentOnlyForOwnerUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cmpName"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v1, p0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 563
    iget-object v1, p0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 564
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_21

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 565
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v1, p0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :goto_20
    return-void

    .line 568
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v1, p0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 573
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v1, p0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIII)Lcom/android/server/pm/PackageSetting;
    .registers 36
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "nativeLibraryRootDir"    # Ljava/lang/String;
    .param p10, "nativeLibraryDir"    # Ljava/lang/String;
    .param p11, "secondaryNativeLibraryDir"    # Ljava/lang/String;
    .param p12, "nativeLibraryRootRequiresIsa"    # Z
    .param p13, "uid"    # I
    .param p14, "vc"    # I
    .param p15, "pkgFlags"    # I
    .param p16, "pkgPrivateFlags"    # I

    .prologue
    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 708
    .local v3, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_31

    .line 709
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, p13

    if-ne v4, v0, :cond_16

    move-object v4, v3

    .line 728
    :goto_15
    return-object v4

    .line 712
    :cond_16
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding duplicate package, keeping first: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 714
    const/4 v4, 0x0

    goto :goto_15

    .line 716
    :cond_31
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-direct/range {v3 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    .line 723
    .restart local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p13

    iput v0, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 724
    move-object/from16 v0, p0

    move/from16 v1, p13

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v3, v2}, addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 726
    goto :goto_15

    .line 728
    :cond_6f
    const/4 v4, 0x0

    goto :goto_15
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/PackageCleanItem;

    .prologue
    .line 2876
    iget-object v0, p0, mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2877
    iget-object v0, p0, mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2879
    :cond_d
    return-void
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 732
    iget-object v2, p0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 733
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_29

    .line 734
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_11

    move-object v1, v0

    .line 747
    :cond_10
    :goto_10
    return-object v1

    .line 737
    :cond_11
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_10

    .line 741
    :cond_29
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 742
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 743
    invoke-direct {p0, p2, v0, p1}, addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 744
    iget-object v1, p0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 745
    goto :goto_10
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 24
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I

    .prologue
    .line 3179
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 3180
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    iget v0, v14, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_e

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 3182
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3184
    .local v10, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_e

    .line 3185
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3186
    .local v4, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v4, v2, v3}, applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3184
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    .line 3193
    .end local v4    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v8    # "i":I
    .end local v10    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v14    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6c
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v18

    const-string/jumbo v19, "etc/preferred-apps"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3194
    .local v13, "preferredDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_88

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_89

    .line 3249
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_88
    :goto_88
    return-void

    .line 3197
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_89
    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_b0

    .line 3198
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Directory "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be read"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 3203
    :cond_b0
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .local v5, "arr$":[Ljava/io/File;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_b6
    if-ge v9, v11, :cond_88

    aget-object v7, v5, v9

    .line 3204
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f5

    .line 3205
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Non-xml file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " directory, ignoring"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    :cond_f2
    :goto_f2
    add-int/lit8 v9, v9, 0x1

    goto :goto_b6

    .line 3208
    :cond_f5
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_11c

    .line 3209
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be read"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 3214
    :cond_11c
    const/4 v15, 0x0

    .line 3216
    .local v15, "str":Ljava/io/FileInputStream;
    :try_start_11d
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11d .. :try_end_124} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_124} :catch_1e9
    .catchall {:try_start_11d .. :try_end_124} :catchall_212

    .line 3217
    .end local v15    # "str":Ljava/io/FileInputStream;
    .local v16, "str":Ljava/io/FileInputStream;
    :try_start_124
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 3218
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3222
    :cond_131
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_145

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_131

    .line 3226
    :cond_145
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_176

    .line 3227
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not have start tag"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_124 .. :try_end_16d} :catch_223
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_16d} :catch_21f
    .catchall {:try_start_124 .. :try_end_16d} :catchall_21b

    .line 3241
    if-eqz v16, :cond_f2

    .line 3243
    :try_start_16f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_173

    goto :goto_f2

    .line 3244
    :catch_173
    move-exception v18

    goto/16 :goto_f2

    .line 3230
    :cond_176
    :try_start_176
    const-string/jumbo v18, "preferred-activities"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1ad

    .line 3231
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not start with \'preferred-activities\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_176 .. :try_end_1a3} :catch_223
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_1a3} :catch_21f
    .catchall {:try_start_176 .. :try_end_1a3} :catchall_21b

    .line 3241
    if-eqz v16, :cond_f2

    .line 3243
    :try_start_1a5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1aa

    goto/16 :goto_f2

    .line 3244
    :catch_1aa
    move-exception v18

    goto/16 :goto_f2

    .line 3235
    :cond_1ad
    :try_start_1ad
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ad .. :try_end_1b6} :catch_223
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b6} :catch_21f
    .catchall {:try_start_1ad .. :try_end_1b6} :catchall_21b

    .line 3241
    if-eqz v16, :cond_f2

    .line 3243
    :try_start_1b8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1bd

    goto/16 :goto_f2

    .line 3244
    :catch_1bd
    move-exception v18

    goto/16 :goto_f2

    .line 3236
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "str":Ljava/io/FileInputStream;
    .end local v17    # "type":I
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catch_1c0
    move-exception v6

    .line 3237
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1c1
    :try_start_1c1
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1df
    .catchall {:try_start_1c1 .. :try_end_1df} :catchall_212

    .line 3241
    if-eqz v15, :cond_f2

    .line 3243
    :try_start_1e1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_1e6

    goto/16 :goto_f2

    .line 3244
    :catch_1e6
    move-exception v18

    goto/16 :goto_f2

    .line 3238
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1e9
    move-exception v6

    .line 3239
    .local v6, "e":Ljava/io/IOException;
    :goto_1ea
    :try_start_1ea
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_208
    .catchall {:try_start_1ea .. :try_end_208} :catchall_212

    .line 3241
    if-eqz v15, :cond_f2

    .line 3243
    :try_start_20a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_20d} :catch_20f

    goto/16 :goto_f2

    .line 3244
    :catch_20f
    move-exception v18

    goto/16 :goto_f2

    .line 3241
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_212
    move-exception v18

    :goto_213
    if-eqz v15, :cond_218

    .line 3243
    :try_start_215
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_218} :catch_219

    .line 3245
    :cond_218
    :goto_218
    throw v18

    .line 3244
    :catch_219
    move-exception v19

    goto :goto_218

    .line 3241
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    :catchall_21b
    move-exception v18

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    goto :goto_213

    .line 3238
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    :catch_21f
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    goto :goto_1ea

    .line 3236
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    :catch_223
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    goto :goto_1c1
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1515
    iget-object v0, p0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimPermissionsGrantedLPr(I)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    .prologue
    .line 1368
    .local p2, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1369
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_c

    .line 1373
    const/4 v0, 0x0

    .line 1391
    :goto_b
    return-object v0

    .line 1375
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v0

    .line 1376
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v0, :cond_1b

    .line 1377
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-direct {v0, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1378
    .restart local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_b

    .line 1384
    :cond_1b
    invoke-virtual {v0, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Ljava/util/ArrayList;)V

    goto :goto_b
.end method

.method createNewPersonaLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)V
    .registers 14
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 4208
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z

    .line 4209
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4211
    if-eqz p5, :cond_84

    .line 4212
    iget-object v4, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4213
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4214
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_80

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 4215
    const/4 v4, 0x1

    invoke-virtual {v2, v4, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4219
    :goto_3e
    const/4 v3, 0x0

    .line 4220
    .local v3, "seinfo":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_4f

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_4f

    .line 4221
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 4224
    :cond_4f
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-virtual {p2, v4, v5, p3, v3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    .line 4227
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_1a

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1a

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v4, :cond_1a

    .line 4229
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, v4, v5, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_1a

    .line 4217
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_80
    invoke-virtual {v2, v7, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_3e

    .line 4234
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_84
    iget-object v4, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_8e
    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4235
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, v7, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4236
    const/4 v3, 0x0

    .line 4237
    .restart local v3    # "seinfo":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_ae

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_ae

    .line 4238
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 4241
    :cond_ae
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-virtual {p2, v4, v5, p3, v3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    .line 4244
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_8e

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_8e

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_8e

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v4, :cond_8e

    .line 4246
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, v4, v5, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_8e

    .line 4251
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_df
    invoke-virtual {p0, p1, p3}, applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 4252
    invoke-virtual {p0, p3}, writePackageRestrictionsLPr(I)V

    .line 4253
    return-void
.end method

.method createNewUserLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I

    .prologue
    .line 4257
    iget-object v0, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4258
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_a

    .line 4262
    iget v0, v8, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6e

    const/4 v7, 0x1

    .line 4264
    .local v7, "installed":Z
    :goto_27
    if-eqz v7, :cond_30

    invoke-direct {p0, v8, p3}, hasPackageDisableForGuest(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4265
    const/4 v7, 0x0

    .line 4268
    :cond_30
    invoke-virtual {v8, v7, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4270
    iget-object v1, v8, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v0, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object v0, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    .line 4273
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 4275
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_a

    .line 4262
    .end local v7    # "installed":Z
    :cond_6e
    const/4 v7, 0x0

    goto :goto_27

    .line 4279
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_70
    invoke-virtual {p0, p1, p3}, applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 4280
    invoke-virtual {p0, p3}, writePackageRestrictionsLPr(I)V

    .line 4281
    invoke-virtual {p0, p3}, writePackageListLPr(I)V

    .line 4282
    return-void
.end method

.method disableSystemPackageLPw(Ljava/lang/String;)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 642
    iget-object v4, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 643
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2a

    .line 644
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an installed package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_29
    :goto_29
    return v3

    .line 647
    :cond_2a
    iget-object v4, p0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 649
    .local v0, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_29

    .line 650
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_48

    .line 651
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 653
    :cond_48
    iget-object v3, p0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 660
    .local v1, "newp":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 661
    const/4 v3, 0x1

    goto :goto_29
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .prologue
    .line 5096
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 5097
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5098
    const-string/jumbo v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5101
    :cond_16
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PermissionsState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5181
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v2

    .line 5182
    .local v2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 5183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "install permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5184
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5185
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 5189
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5190
    const-string v3, ", granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5191
    const-string v3, ", flags=0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    .line 5195
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_5b
    return-void
.end method

.method dumpNotGrantedlist(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5107
    .local p3, "requestPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "installPerState":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .local p5, "runtimePerStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_85

    .line 5108
    const/4 v5, 0x1

    .line 5109
    .local v5, "printHeader":Z
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5110
    .local v4, "name":Ljava/lang/String;
    iget-object v8, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 5111
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_b

    .line 5114
    iget v8, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 5115
    const/4 v3, 0x0

    .line 5116
    .local v3, "installGranted":Z
    const/4 v6, 0x0

    .line 5117
    .local v6, "runtimeGranted":Z
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5118
    .local v7, "state":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-virtual {v7}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-virtual {v7}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 5119
    const/4 v6, 0x1

    .line 5123
    .end local v7    # "state":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_49
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5124
    .restart local v7    # "state":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-virtual {v7}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-virtual {v7}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 5125
    const/4 v3, 0x1

    .line 5129
    .end local v7    # "state":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_6a
    if-nez v3, :cond_b

    if-nez v6, :cond_b

    .line 5130
    if-eqz v5, :cond_79

    .line 5131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Not granted runtime permissions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5132
    const/4 v5, 0x0

    .line 5134
    :cond_79
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 5139
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "installGranted":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "printHeader":Z
    .end local v6    # "runtimeGranted":Z
    :cond_85
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V
    .registers 33
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .param p9, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4568
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p3, :cond_1cc

    .line 4569
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4570
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4571
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_f2

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    :goto_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4572
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4573
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4574
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4575
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4576
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4577
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4578
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4579
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 4580
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4581
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_f8

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    :goto_70
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4582
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4583
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_fc

    .line 4584
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "splt,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4585
    const-string v4, "base,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4586
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4587
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v4, :cond_fc

    .line 4588
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_af
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v13, v4, :cond_fc

    .line 4589
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "splt,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v4, v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4591
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v4, v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4588
    add-int/lit8 v13, v13, 0x1

    goto :goto_af

    .line 4571
    .end local v13    # "i":I
    :cond_f2
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    goto/16 :goto_1a

    .line 4581
    :cond_f8
    const-string v4, "?"

    goto/16 :goto_70

    .line 4595
    :cond_fc
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_100
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a41

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 4596
    .local v22, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4597
    const-string v4, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4598
    const-string/jumbo v4, "usr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4599
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4600
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4601
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4602
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_1bb

    const-string v4, "I"

    :goto_147
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4603
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v4

    if-eqz v4, :cond_1bf

    const-string v4, "B"

    :goto_15a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4604
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_1c2

    const-string v4, "S"

    :goto_16d
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4605
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v4

    if-eqz v4, :cond_1c6

    const-string/jumbo v4, "l"

    :goto_181
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4606
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4607
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4608
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v16

    .line 4609
    .local v16, "lastDisabledAppCaller":Ljava/lang/String;
    const-string v4, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4610
    if-eqz v16, :cond_1c9

    .end local v16    # "lastDisabledAppCaller":Ljava/lang/String;
    :goto_1af
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4611
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_100

    .line 4602
    :cond_1bb
    const-string/jumbo v4, "i"

    goto :goto_147

    .line 4603
    :cond_1bf
    const-string v4, "b"

    goto :goto_15a

    .line 4604
    :cond_1c2
    const-string/jumbo v4, "s"

    goto :goto_16d

    .line 4605
    :cond_1c6
    const-string v4, "L"

    goto :goto_181

    .line 4610
    .restart local v16    # "lastDisabledAppCaller":Ljava/lang/String;
    :cond_1c9
    const-string v16, "?"

    goto :goto_1af

    .line 4616
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_1cc
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Package ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4617
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_566

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    :goto_1e0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4618
    const-string v4, "] ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4619
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4620
    const-string v4, "):"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4622
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lcom/android/server/pm/PackageSetting;->frozen:Z

    if-eqz v4, :cond_210

    .line 4623
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  FROZEN!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4626
    :cond_210
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_229

    .line 4627
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  compat name="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4628
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4631
    :cond_229
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4633
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_255

    .line 4634
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  sharedUser="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4636
    :cond_255
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  pkg="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4637
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->mLastScanError:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_295

    .line 4638
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mLastScanError="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->mLastScanError:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4639
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mLastScanErrorMessage="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->mLastScanErrorMessage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4641
    :cond_295
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  codePath="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4642
    if-nez p4, :cond_342

    .line 4643
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  resourcePath="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4644
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  legacyNativeLibraryDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4645
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  primaryCpuAbi="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4646
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  secondaryCpuAbi="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4648
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  nativeLibraryRootDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4649
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  nativeLibraryDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4650
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  secondaryNativeLibraryDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->secondaryNativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4651
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  nativeLibraryRootRequiresIsa="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-boolean v4, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootRequiresIsa:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 4655
    :cond_342
    const-string v11, ""

    .line 4656
    .local v11, "dexMode":Ljava/lang/String;
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    packed-switch v4, :pswitch_data_a42

    .line 4673
    :goto_34b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  dexMode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4674
    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_368

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->dexMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_384

    .line 4676
    :cond_368
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  dexTimeStamp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4677
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4678
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4682
    :cond_384
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  versionCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4683
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_3b1

    .line 4684
    const-string v4, " targetSdk="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4686
    :cond_3b1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4687
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_655

    .line 4688
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  versionName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4689
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  splits="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4690
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  applicationInfo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4691
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4692
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  flags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v5, FLAG_DUMP_SPEC:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4693
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4694
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v4, :cond_440

    .line 4695
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  privateFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v5, PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4696
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4698
    :cond_440
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  dataDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4699
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  supportsScreens=["

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4700
    const/4 v12, 0x1

    .line 4701
    .local v12, "first":Z
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_480

    .line 4702
    if-nez v12, :cond_477

    .line 4703
    const-string v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4704
    :cond_477
    const/4 v12, 0x0

    .line 4705
    const-string/jumbo v4, "small"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4707
    :cond_480
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_49e

    .line 4708
    if-nez v12, :cond_495

    .line 4709
    const-string v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4710
    :cond_495
    const/4 v12, 0x0

    .line 4711
    const-string/jumbo v4, "medium"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4713
    :cond_49e
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_4bc

    .line 4714
    if-nez v12, :cond_4b3

    .line 4715
    const-string v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4716
    :cond_4b3
    const/4 v12, 0x0

    .line 4717
    const-string/jumbo v4, "large"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4719
    :cond_4bc
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_4db

    .line 4720
    if-nez v12, :cond_4d2

    .line 4721
    const-string v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4722
    :cond_4d2
    const/4 v12, 0x0

    .line 4723
    const-string/jumbo v4, "xlarge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4725
    :cond_4db
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_4f9

    .line 4726
    if-nez v12, :cond_4f0

    .line 4727
    const-string v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4728
    :cond_4f0
    const/4 v12, 0x0

    .line 4729
    const-string/jumbo v4, "resizeable"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4731
    :cond_4f9
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_516

    .line 4732
    if-nez v12, :cond_50e

    .line 4733
    const-string v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4734
    :cond_50e
    const/4 v12, 0x0

    .line 4735
    const-string v4, "anyDensity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4737
    :cond_516
    const-string v4, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_584

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_584

    .line 4739
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  libraries:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_53c
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_584

    .line 4741
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4740
    add-int/lit8 v13, v13, 0x1

    goto :goto_53c

    .line 4617
    .end local v11    # "dexMode":Ljava/lang/String;
    .end local v12    # "first":Z
    .end local v13    # "i":I
    :cond_566
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    goto/16 :goto_1e0

    .line 4658
    .restart local v11    # "dexMode":Ljava/lang/String;
    :pswitch_56c
    const-string/jumbo v11, "failed to dexopt"

    .line 4659
    goto/16 :goto_34b

    .line 4661
    :pswitch_571
    const-string/jumbo v11, "unknown"

    .line 4662
    goto/16 :goto_34b

    .line 4664
    :pswitch_576
    const-string/jumbo v11, "small art"

    .line 4665
    goto/16 :goto_34b

    .line 4667
    :pswitch_57b
    const-string/jumbo v11, "full art"

    .line 4668
    goto/16 :goto_34b

    .line 4670
    :pswitch_580
    const-string v11, "Not running dexopt due to low memory"

    goto/16 :goto_34b

    .line 4744
    .restart local v12    # "first":Z
    :cond_584
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v4, :cond_5cd

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5cd

    .line 4745
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraries:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5a3
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_5cd

    .line 4747
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4746
    add-int/lit8 v13, v13, 0x1

    goto :goto_5a3

    .line 4750
    .end local v13    # "i":I
    :cond_5cd
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v4, :cond_616

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_616

    .line 4752
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesOptionalLibraries:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4753
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5ec
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_616

    .line 4754
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4755
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4753
    add-int/lit8 v13, v13, 0x1

    goto :goto_5ec

    .line 4758
    .end local v13    # "i":I
    :cond_616
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v4, :cond_655

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_655

    .line 4760
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraryFiles:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_632
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v4, v4

    if-ge v13, v4, :cond_655

    .line 4762
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v4, v4, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4761
    add-int/lit8 v13, v13, 0x1

    goto :goto_632

    .line 4766
    .end local v12    # "first":Z
    .end local v13    # "i":I
    :cond_655
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  timeStamp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4767
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4768
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4769
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  firstInstallTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4770
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4771
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4772
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  lastUpdateTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4773
    move-object/from16 v0, p5

    iget-wide v4, v0, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 4774
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4775
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_6c2

    .line 4776
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  installerPackageName="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4777
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4779
    :cond_6c2
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v4, :cond_6db

    .line 4780
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  volumeUuid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4781
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4783
    :cond_6db
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  signatures="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4784
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  installPermissionsFixed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4785
    move-object/from16 v0, p5

    iget-boolean v4, v0, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4786
    const-string v4, " installStatus="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->installStatus:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4787
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  pkgFlags="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v5, FLAG_DUMP_SPEC:[Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4788
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4790
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_7da

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v4, :cond_7da

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7da

    .line 4791
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 4792
    .local v19, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  declared permissions:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4793
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_756
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_7da

    .line 4794
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/PackageParser$Permission;

    .line 4795
    .local v17, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz p4, :cond_777

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_777

    .line 4793
    :goto_774
    add-int/lit8 v13, v13, 0x1

    goto :goto_756

    .line 4799
    :cond_777
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4800
    const-string v4, ": prot="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4801
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4802
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7b3

    .line 4803
    const-string v4, ", COSTS_MONEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4805
    :cond_7b3
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7c4

    .line 4806
    const-string v4, ", HIDDEN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4808
    :cond_7c4
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_7d6

    .line 4809
    const-string v4, ", INSTALLED"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4811
    :cond_7d6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_774

    .line 4815
    .end local v13    # "i":I
    .end local v17    # "perm":Landroid/content/pm/PackageParser$Permission;
    .end local v19    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    :cond_7da
    if-nez p4, :cond_7de

    if-eqz p9, :cond_834

    :cond_7de
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v4, :cond_834

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_834

    .line 4817
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 4818
    .local v20, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  requested permissions:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4819
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_805
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_834

    .line 4820
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 4821
    .local v17, "perm":Ljava/lang/String;
    if-eqz p4, :cond_822

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_822

    .line 4819
    :goto_81f
    add-int/lit8 v13, v13, 0x1

    goto :goto_805

    .line 4825
    :cond_822
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_81f

    .line 4829
    .end local v13    # "i":I
    .end local v17    # "perm":Ljava/lang/String;
    .end local v20    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_834
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_83e

    if-nez p4, :cond_83e

    if-eqz p9, :cond_862

    .line 4830
    :cond_83e
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v18

    .line 4831
    .local v18, "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v4, v2, v3}, dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    .line 4834
    .end local v18    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_862
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_866
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a41

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/UserInfo;

    .line 4835
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  User "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4836
    const-string v4, " installed="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4837
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4838
    const-string v4, " hidden="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4839
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4840
    const-string v4, " stopped="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4841
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4842
    const-string v4, " notLaunched="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4843
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 4844
    const-string v4, " enabled="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4845
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 4846
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v16

    .line 4847
    .restart local v16    # "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v16, :cond_917

    .line 4848
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    lastDisabledCaller: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4852
    :cond_917
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v4, :cond_9a7

    .line 4853
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v18

    .line 4854
    .restart local v18    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4855
    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_9e7

    .line 4856
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, dumpNotGrantedlist(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 4863
    :goto_97d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move/from16 v9, p9

    invoke-virtual/range {v4 .. v9}, dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 4867
    .end local v18    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_9a7
    if-nez p4, :cond_866

    .line 4868
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 4869
    .local v10, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v10, :cond_a03

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_a03

    .line 4870
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    disabledComponents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4871
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_9c9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a03

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 4872
    .local v21, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9c9

    .line 4861
    .end local v10    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v21    # "s":Ljava/lang/String;
    .restart local v18    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    :cond_9e7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    ps.pkg is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_97d

    .line 4875
    .end local v18    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .restart local v10    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a03
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v10

    .line 4876
    if-eqz v10, :cond_866

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_866

    .line 4877
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    enabledComponents:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4878
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_a23
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_866

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 4879
    .restart local v21    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a23

    .line 4884
    .end local v10    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "dexMode":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v21    # "s":Ljava/lang/String;
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    :cond_a41
    return-void

    .line 4656
    :pswitch_data_a42
    .packed-switch -0x1
        :pswitch_56c
        :pswitch_571
        :pswitch_576
        :pswitch_57b
        :pswitch_580
    .end packed-switch
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4888
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4889
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 4890
    .local v8, "date":Ljava/util/Date;
    const/16 v16, 0x0

    .line 4891
    .local v16, "printedSomething":Z
    invoke-virtual/range {p0 .. p0}, getAllUsers()Ljava/util/List;

    move-result-object v9

    .line 4892
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 4893
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_41

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4897
    :cond_41
    if-eqz p3, :cond_4f

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4902
    :cond_4f
    if-nez p5, :cond_5a

    if-eqz p2, :cond_5a

    .line 4903
    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 4906
    :cond_5a
    if-nez p5, :cond_70

    if-nez v16, :cond_70

    .line 4907
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 4908
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4909
    :cond_67
    const-string v1, "Packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4910
    const/16 v16, 0x1

    .line 4912
    :cond_70
    const-string v3, "  "

    if-eqz p5, :cond_84

    const-string/jumbo v4, "pkg"

    :goto_77
    if-eqz p2, :cond_86

    const/4 v10, 0x1

    :goto_7a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v10}, dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    goto :goto_1f

    :cond_84
    const/4 v4, 0x0

    goto :goto_77

    :cond_86
    const/4 v10, 0x0

    goto :goto_7a

    .line 4916
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_88
    const/16 v16, 0x0

    .line 4917
    move-object/from16 v0, p0

    iget-object v1, v0, mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_111

    if-nez p3, :cond_111

    .line 4918
    move-object/from16 v0, p0

    iget-object v1, v0, mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a2
    :goto_a2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_111

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4919
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_c8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 4923
    :cond_c8
    if-nez p5, :cond_105

    .line 4924
    if-nez v16, :cond_de

    .line 4925
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 4926
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4927
    :cond_d5
    const-string v1, "Renamed packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4928
    const/16 v16, 0x1

    .line 4930
    :cond_de
    const-string v1, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4934
    :goto_e5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4935
    if-eqz p5, :cond_10e

    const-string v1, " -> "

    :goto_f4
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4936
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a2

    .line 4932
    :cond_105
    const-string/jumbo v1, "ren,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e5

    .line 4935
    :cond_10e
    const-string v1, ","

    goto :goto_f4

    .line 4940
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_111
    const/16 v16, 0x0

    .line 4941
    move-object/from16 v0, p0

    iget-object v1, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_17b

    if-nez p3, :cond_17b

    .line 4942
    move-object/from16 v0, p0

    iget-object v1, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_12b
    :goto_12b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 4943
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_14d

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14d

    iget-object v1, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 4947
    :cond_14d
    if-nez p5, :cond_163

    if-nez v16, :cond_163

    .line 4948
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 4949
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4950
    :cond_15a
    const-string v1, "Hidden system packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4951
    const/16 v16, 0x1

    .line 4953
    :cond_163
    const-string v3, "  "

    if-eqz p5, :cond_177

    const-string/jumbo v4, "dis"

    :goto_16a
    if-eqz p2, :cond_179

    const/4 v10, 0x1

    :goto_16d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v10}, dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    goto :goto_12b

    :cond_177
    const/4 v4, 0x0

    goto :goto_16a

    :cond_179
    const/4 v10, 0x0

    goto :goto_16d

    .line 4957
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_17b
    const-string/jumbo v1, "mPackagesOnlyForOwnerUser:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4958
    move-object/from16 v0, p0

    iget-object v1, v0, mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_18b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 4959
    .local v17, "skipPackage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18b

    .line 4962
    .end local v17    # "skipPackage":Ljava/lang/String;
    :cond_1b2
    const-string/jumbo v1, "mComponentsOnlyForOwnerUser:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4963
    move-object/from16 v0, p0

    iget-object v1, v0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1c6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4964
    .local v15, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4965
    move-object/from16 v0, p0

    iget-object v1, v0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1f8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4966
    .local v11, "cmp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    cmp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f8

    .line 4969
    .end local v11    # "cmp":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "key":Ljava/lang/String;
    :cond_21d
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4973
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 4974
    .local v2, "printedSomething":Z
    iget-object v3, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 4975
    .local v1, "p":Lcom/android/server/pm/BasePermission;
    if-eqz p2, :cond_21

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4978
    :cond_21
    if-eqz p3, :cond_2b

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4981
    :cond_2b
    if-nez v2, :cond_3c

    .line 4982
    invoke-virtual {p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 4983
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4984
    :cond_36
    const-string v3, "Permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4985
    const/4 v2, 0x1

    .line 4987
    :cond_3c
    const-string v3, "  Permission ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "] ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4988
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4989
    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    const-string v3, "    sourcePackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    const-string v3, "    uid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4992
    const-string v3, " gids="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4994
    const-string v3, " type="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4995
    const-string v3, " prot="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4996
    iget v3, v1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_cd

    .line 4998
    const-string v3, "    perm="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4999
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_bb

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_cd

    .line 5001
    :cond_bb
    const-string v3, "    flags=0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5004
    :cond_cd
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v3, :cond_db

    .line 5005
    const-string v3, "    packageSetting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5007
    :cond_db
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    iget-object v4, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5008
    const-string v3, "    enforced="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5009
    iget-object v3, p0, mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 5012
    .end local v1    # "p":Lcom/android/server/pm/BasePermission;
    :cond_f1
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 5068
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5069
    iget-object v0, p0, mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 5143
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p5, :cond_59

    .line 5144
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "runtime permissions:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5145
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5146
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz p3, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5150
    :cond_2d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5151
    const-string v2, ", granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5152
    const-string v2, ", flags=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 5156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_59
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageManagerService$DumpState;Z)V
    .registers 32
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService$DumpState;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 5016
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .line 5017
    .local v23, "printedSomething":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_e
    :goto_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_187

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/pm/SharedUserSetting;

    .line 5018
    .local v24, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_24

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    move-object/from16 v0, v24

    if-ne v0, v5, :cond_e

    .line 5021
    :cond_24
    if-eqz p3, :cond_32

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/pm/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5025
    :cond_32
    if-nez p5, :cond_164

    .line 5026
    if-nez v23, :cond_48

    .line 5027
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 5028
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 5029
    :cond_3f
    const-string v5, "Shared users:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5030
    const/16 v23, 0x1

    .line 5032
    :cond_48
    const-string v5, "  SharedUser ["

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5033
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5034
    const-string v5, "] ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5035
    invoke-static/range {v24 .. v24}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5036
    const-string v5, "):"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5038
    const-string v22, "    "

    .line 5039
    .local v22, "prefix":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "userId="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 5041
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v21

    .line 5042
    .local v21, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PermissionsState;)V

    .line 5044
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v16

    .local v16, "arr$":[I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_ad
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    aget v25, v16, v19

    .line 5045
    .local v25, "userId":I
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v17

    .line 5046
    .local v17, "gids":[I
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v9

    .line 5048
    .local v9, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12c

    .line 5049
    :cond_d1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "User "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5050
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v5, v2}, dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5051
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_162

    const/4 v10, 0x1

    :goto_123
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 5054
    :cond_12c
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/pm/SharedUserSetting;->getRequestedPermissions()Ljava/util/ArrayList;

    move-result-object v13

    .line 5055
    .local v13, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15e

    .line 5056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, dumpNotGrantedlist(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)V

    .line 5044
    :cond_15e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_ad

    .line 5051
    .end local v13    # "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_162
    const/4 v10, 0x0

    goto :goto_123

    .line 5062
    .end local v9    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v16    # "arr$":[I
    .end local v17    # "gids":[I
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .end local v21    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v25    # "userId":I
    :cond_164
    const-string/jumbo v5, "suid,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 5065
    .end local v24    # "su":Lcom/android/server/pm/SharedUserSetting;
    :cond_187
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 4543
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v3, p0, mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_84

    .line 4545
    iget-object v3, p0, mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4546
    .local v2, "volumeUuid":Ljava/lang/String;
    iget-object v3, p0, mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4547
    .local v1, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 4548
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4554
    :goto_29
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4555
    const-string/jumbo v3, "sdkVersion"

    iget v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4556
    const-string/jumbo v3, "databaseVersion"

    iget v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4557
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4558
    const-string/jumbo v3, "fingerprint"

    iget-object v4, v1, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4559
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4560
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4544
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4549
    :cond_58
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 4550
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29

    .line 4552
    :cond_67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29

    .line 4562
    .end local v1    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v2    # "volumeUuid":Ljava/lang/String;
    :cond_84
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4563
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1340
    iget-object v1, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1341
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_14

    .line 1342
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .end local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    .line 1343
    .restart local v0    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    iget-object v1, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1345
    :cond_14
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1331
    iget-object v1, p0, mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1332
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_14

    .line 1333
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .end local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 1334
    .restart local v0    # "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    iget-object v1, p0, mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1336
    :cond_14
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1322
    iget-object v1, p0, mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1323
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_14

    .line 1324
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 1325
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v1, p0, mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1327
    :cond_14
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 22
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/pm/PackageSetting;

    .line 668
    .local v18, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v18, :cond_31

    .line 669
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/16 v19, 0x0

    .line 689
    :goto_30
    return-object v19

    .line 673
    :cond_31
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_4b

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4b

    .line 674
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 676
    :cond_4b
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootDir:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->secondaryNativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-boolean v13, v0, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootRequiresIsa:Z

    move-object/from16 v0, v18

    iget v14, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, v18

    iget v15, v0, Lcom/android/server/pm/PackageSetting;->versionCode:I

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v16, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    move/from16 v17, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v17}, addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIII)Lcom/android/server/pm/PackageSetting;

    move-result-object v19

    .line 684
    .local v19, "ret":Lcom/android/server/pm/PackageSetting;
    if-eqz v19, :cond_af

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_af

    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_af

    .line 685
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 688
    :cond_af
    move-object/from16 v0, p0

    iget-object v1, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 1525
    iget-object v1, p0, mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1526
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_17

    .line 1527
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    .end local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    .line 1528
    .restart local v0    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 1529
    iget-object v1, p0, mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    :cond_17
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getAllUsers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4481
    .local v0, "id":J
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_c} :catch_11
    .catchall {:try_start_4 .. :try_end_c} :catchall_17

    move-result-object v2

    .line 4485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4487
    :goto_10
    return-object v2

    .line 4482
    :catch_11
    move-exception v2

    .line 4485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4487
    const/4 v2, 0x0

    goto :goto_10

    .line 4485
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4425
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4426
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_23

    .line 4427
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4429
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 4433
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4434
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4435
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_27

    .line 4436
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4438
    :cond_27
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 4439
    .local v0, "classNameStr":Ljava/lang/String;
    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method getComponentsOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Ljava/util/ArrayList;
    .registers 19
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    if-nez p1, :cond_c

    .line 494
    const-string v13, "PackageSettings"

    const-string/jumbo v14, "getComponentsOnlyForOwnerUser needs PackageSetting Object"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v5, 0x0

    .line 557
    :cond_b
    :goto_b
    return-object v5

    .line 497
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, mComponentsOnlyForOwnerUser:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 500
    .local v4, "cmp":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_31

    .line 501
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 508
    .end local v4    # "cmp":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_47
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v12

    .line 509
    .local v12, "userState":Landroid/content/pm/PackageUserState;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 510
    .local v7, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v3, 0x0

    .line 513
    .local v3, "bundle":Landroid/os/Bundle;
    if-nez v7, :cond_77

    .line 514
    const-string v13, "PackageSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has not package object"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v5, 0x0

    goto :goto_b

    .line 517
    :cond_77
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7d
    :goto_7d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 518
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    const/16 v13, 0x80

    move/from16 v0, p2

    invoke-static {v1, v13, v12, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 520
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_7d

    .line 521
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 522
    if-eqz v3, :cond_7d

    const-string v13, "com.samsung.android.multiuser.install_only_owner"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 523
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7d

    .line 524
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 531
    .end local v1    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_ae
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b4
    :goto_b4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Service;

    .line 532
    .local v10, "service":Landroid/content/pm/PackageParser$Service;
    const/16 v13, 0x80

    move/from16 v0, p2

    invoke-static {v10, v13, v12, v0}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    .line 534
    .local v11, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v11, :cond_b4

    .line 535
    iget-object v3, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 536
    if-eqz v3, :cond_b4

    const-string v13, "com.samsung.android.multiuser.install_only_owner"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_b4

    .line 537
    iget-object v13, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b4

    .line 538
    iget-object v13, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 545
    .end local v10    # "service":Landroid/content/pm/PackageParser$Service;
    .end local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_e5
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_eb
    :goto_eb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Activity;

    .line 546
    .local v8, "receiver":Landroid/content/pm/PackageParser$Activity;
    const/16 v13, 0x80

    move/from16 v0, p2

    invoke-static {v8, v13, v12, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 548
    .local v9, "receiverInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_eb

    .line 549
    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 550
    if-eqz v3, :cond_eb

    const-string v13, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_eb

    .line 551
    iget-object v13, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_eb

    .line 552
    iget-object v13, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_eb
.end method

.method getDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1477
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4367
    iget-object v1, p0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4368
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .prologue
    .line 1539
    iget-object v0, p0, mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4417
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4418
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_23

    .line 4419
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4421
    :cond_23
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1355
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1356
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 1360
    const/4 v1, 0x0

    .line 1362
    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    goto :goto_b
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1395
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1396
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 1400
    const/4 v1, 0x0

    .line 1402
    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v2

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    goto :goto_b
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1432
    if-nez p1, :cond_7

    .line 1433
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 1444
    :cond_6
    return-object v3

    .line 1435
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v4, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1437
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    .line 1438
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1442
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .prologue
    .line 1535
    iget-object v0, p0, mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2862
    new-instance v1, Landroid/util/ArraySet;

    iget-object v5, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 2863
    .local v1, "kList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2864
    .local v0, "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2865
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2866
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2867
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2868
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_14

    .line 2869
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 2872
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_32
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILandroid/os/UserHandle;Z)Lcom/android/server/pm/PackageSetting;
    .registers 40
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "primaryCpuAbi"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p10, "nativeLibraryRootDir"    # Ljava/lang/String;
    .param p11, "nativeLibraryDir"    # Ljava/lang/String;
    .param p12, "secondaryNativeLibraryDir"    # Ljava/lang/String;
    .param p13, "nativeLibraryRootRequiresIsa"    # Z
    .param p14, "pkgFlags"    # I
    .param p15, "pkgPrivateFlags"    # I
    .param p16, "user"    # Landroid/os/UserHandle;
    .param p17, "add"    # Z

    .prologue
    .line 586
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 587
    .local v2, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v15, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const/16 v20, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move/from16 v19, p17

    invoke-direct/range {v1 .. v20}, getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v21

    .line 593
    .local v21, "p":Lcom/android/server/pm/PackageSetting;
    return-object v21
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z

    .prologue
    .line 618
    iget-object v1, p0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 619
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_46

    .line 620
    if-nez p4, :cond_e

    .line 621
    const/4 v1, 0x0

    .line 633
    :goto_d
    return-object v1

    .line 623
    :cond_e
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 624
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 625
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_46

    .line 629
    iget-object v1, p0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move-object v1, v0

    .line 633
    goto :goto_d
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1291
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_17

    .line 1292
    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1293
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1294
    .local v1, "index":I
    if-ge v1, v0, :cond_15

    iget-object v2, p0, mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1296
    .end local v0    # "N":I
    .end local v1    # "index":I
    :goto_14
    return-object v2

    .line 1294
    .restart local v0    # "N":I
    .restart local v1    # "index":I
    :cond_15
    const/4 v2, 0x0

    goto :goto_14

    .line 1296
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_17
    iget-object v2, p0, mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_14
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .prologue
    .line 4357
    iget-object v0, p0, mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 4358
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4360
    invoke-virtual {p0}, writeLPr()V

    .line 4363
    :cond_d
    iget-object v0, p0, mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4495
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4497
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v3, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    .line 4498
    iget-object v3, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4499
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4500
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4497
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4503
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_27
    return-object v1
.end method

.method hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    if-nez p1, :cond_d

    .line 427
    const-string v5, "PackageSettings"

    const-string/jumbo v6, "hasPackageOnlyForOwnerUser needs PackageSetting Object"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_c
    :goto_c
    return v4

    .line 431
    :cond_d
    iget-object v6, p0, mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move v4, v5

    .line 432
    goto :goto_c

    .line 437
    :cond_19
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 438
    .local v3, "userState":Landroid/content/pm/PackageUserState;
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 439
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    .line 441
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_c

    .line 445
    const/16 v6, 0x80

    invoke-static {v2, v6, v3, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 448
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_c

    .line 452
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 453
    if-eqz v1, :cond_c

    const-string v6, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    move v4, v5

    .line 454
    goto :goto_c
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 10
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1006
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 1009
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1010
    .local v3, "volumeUuid":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "codePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    .line 1012
    .local v2, "resourcePath":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 1014
    .local v1, "legacyNativeLibraryPath":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1015
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Volume for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changing from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iput-object v3, p1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 1020
    :cond_52
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 1021
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Code path for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changing from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 1024
    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 1027
    :cond_95
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    .line 1028
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_141

    .line 1029
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cahnge pkg.application.resourcePath to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 1031
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 1041
    :cond_cd
    :goto_cd
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d7

    .line 1042
    iput-object v1, p1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 1046
    :cond_d7
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 1047
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 1048
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    .line 1050
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->nativeLibraryDir:Ljava/lang/String;

    .line 1051
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootDir:Ljava/lang/String;

    .line 1052
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 1053
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootRequiresIsa:Z

    iput-boolean v4, p1, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootRequiresIsa:Z

    .line 1056
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-eq v4, v5, :cond_109

    .line 1057
    iget v4, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v4, p1, Lcom/android/server/pm/PackageSetting;->versionCode:I

    .line 1060
    :cond_109
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_116

    .line 1061
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 1064
    :cond_116
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    if-eq v4, v5, :cond_124

    .line 1065
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v4, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 1069
    :cond_124
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_139

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v4, :cond_139

    .line 1070
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 1072
    :cond_139
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v4, v5}, addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    .line 1073
    return-void

    .line 1034
    :cond_141
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource path for pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " changing from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 1037
    iput-object v2, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    goto/16 :goto_cd
.end method

.method installApplicationsForPersonaLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4164
    .local p5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_5d

    .line 4165
    iget-object v3, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4167
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4168
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_28

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_48

    .line 4169
    :cond_28
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "for KNOX due to missing metadata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4172
    :cond_48
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4173
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_c

    .line 4176
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_57
    invoke-virtual {p0, p1, p3}, applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 4177
    invoke-virtual {p0, p3}, writePackageRestrictionsLPr(I)V

    .line 4179
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5d
    return-void
.end method

.method isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 4
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    .prologue
    .line 1001
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 693
    iget-object v0, p0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z
    .registers 12
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4376
    and-int/lit16 v5, p2, 0x200

    if-eqz v5, :cond_8

    .line 4413
    :cond_7
    :goto_7
    return v3

    .line 4379
    :cond_8
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 4380
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v5, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4389
    .local v0, "packageSettings":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_16

    move v3, v4

    .line 4390
    goto :goto_7

    .line 4392
    :cond_16
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 4393
    .local v2, "ustate":Landroid/content/pm/PackageUserState;
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_24

    .line 4394
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_7

    .line 4398
    :cond_24
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_42

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_42

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_42

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_44

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_44

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v5, :cond_44

    :cond_42
    move v3, v4

    .line 4403
    goto :goto_7

    .line 4405
    :cond_44
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v5, :cond_52

    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4409
    :cond_52
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_62

    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    move v3, v4

    .line 4411
    goto :goto_7

    .line 4413
    :cond_62
    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_7
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1520
    iget-object v0, p0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 1522
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 1543
    iget-object v0, p0, mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    return-void
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 597
    iget-object v0, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method pruneSharedUsersLPw()V
    .registers 10

    .prologue
    .line 751
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v5, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 753
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    .line 754
    .local v6, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v6, :cond_2b

    .line 755
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 759
    :cond_2b
    iget-object v7, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 760
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 761
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v7, p0, mPackages:Landroid/util/ArrayMap;

    iget-object v8, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_31

    .line 762
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    .line 765
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4b
    iget-object v7, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-nez v7, :cond_f

    .line 766
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 769
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v6    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_5b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6e

    .line 770
    iget-object v7, p0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 772
    :cond_6e
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 1976
    iget-object v6, p0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 1978
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1981
    .local v1, "outerDepth":I
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_67

    if-ne v5, v9, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_67

    .line 1982
    :cond_19
    if-eq v5, v9, :cond_a

    const/4 v6, 0x4

    if-eq v5, v6, :cond_a

    .line 1986
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1987
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v6, "domain-verification"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1988
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1989
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v0}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1990
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v6, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1991
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_42

    .line 1993
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_a

    .line 1999
    :cond_42
    iget-object v6, p0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 2006
    .end local v0    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_48
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2009
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    .line 2012
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_67
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1658
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1661
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_53

    if-ne v4, v7, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_53

    .line 1662
    :cond_14
    if-eq v4, v7, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    .line 1665
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1666
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "default-browser"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1667
    const/4 v5, 0x0

    const-string/jumbo v6, "packageName"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 1670
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under default-apps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1672
    .local v0, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1673
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1676
    .end local v0    # "msg":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_53
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2212
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2215
    .local v6, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_f5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v6, :cond_f5

    .line 2217
    :cond_14
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 2221
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2222
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 2223
    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2225
    .local v5, "name":Ljava/lang/String;
    iget-object v9, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 2226
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_55

    .line 2227
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown permission: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 2232
    :cond_55
    const/4 v9, 0x0

    const-string/jumbo v10, "granted"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2233
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_65

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9c

    :cond_65
    const/4 v3, 0x1

    .line 2236
    .local v3, "granted":Z
    :goto_66
    const/4 v9, 0x0

    const-string/jumbo v10, "flags"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2237
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_9e

    const/16 v9, 0x10

    invoke-static {v2, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2240
    .local v1, "flags":I
    :goto_76
    if-eqz v3, :cond_a8

    .line 2241
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/BasePermission;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_a0

    .line 2243
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2233
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v3    # "granted":Z
    :cond_9c
    const/4 v3, 0x0

    goto :goto_66

    .line 2237
    .restart local v2    # "flagsStr":Ljava/lang/String;
    .restart local v3    # "granted":Z
    :cond_9e
    const/4 v1, 0x0

    goto :goto_76

    .line 2246
    .restart local v1    # "flags":I
    :cond_a0
    const/4 v9, -0x1

    const/16 v10, 0xff

    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_4

    .line 2250
    :cond_a8
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_cc

    .line 2252
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2255
    :cond_cc
    const/4 v9, -0x1

    const/16 v10, 0xff

    invoke-virtual {p2, v0, v9, v10, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_4

    .line 2260
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v3    # "granted":Z
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_d4
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <permissions>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2265
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_f5
    return-void
.end method

.method readLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;IZ)Z
    .registers 68
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "sdkVersion"    # I
    .param p4, "onlyCore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 2883
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v53, 0x0

    .line 2884
    .local v53, "str":Ljava/io/FileInputStream;
    const/16 v52, 0x0

    .line 2885
    .local v52, "spFile":Ljava/io/File;
    const/16 v46, 0x0

    .line 2886
    .local v46, "pw":Ljava/io/PrintWriter;
    const/16 v50, 0x0

    .line 2888
    .local v50, "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v0, p0

    iget-object v3, v0, mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2889
    move-object/from16 v0, p0

    iget-object v3, v0, mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2890
    move-object/from16 v0, p0

    iget-object v3, v0, mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 2893
    :try_start_1d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v52

    .line 2894
    new-instance v47, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    move-object/from16 v0, v52

    invoke-direct {v3, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_30} :catch_766
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_30} :catch_75e
    .catchall {:try_start_1d .. :try_end_30} :catchall_756

    .line 2895
    .end local v46    # "pw":Ljava/io/PrintWriter;
    .local v47, "pw":Ljava/io/PrintWriter;
    :try_start_30
    new-instance v51, Landroid/util/XmlMoreAtomicFile;

    move-object/from16 v0, p0

    iget-object v3, v0, mSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v51

    move-object/from16 v1, v47

    invoke-direct {v0, v3, v1}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_3d} :catch_769
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3d} :catch_761
    .catchall {:try_start_30 .. :try_end_3d} :catchall_759

    .line 2897
    .end local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .local v51, "settingsFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_3d
    invoke-virtual/range {v51 .. v51}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_16f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_40} :catch_6d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_1f8
    .catchall {:try_start_3d .. :try_end_40} :catchall_2fc

    move-result-object v53

    .line 2915
    :try_start_41
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v44

    .line 2916
    .local v44, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2920
    :cond_52
    invoke-interface/range {v44 .. v44}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v55

    .local v55, "type":I
    const/4 v3, 0x2

    move/from16 v0, v55

    if-eq v0, v3, :cond_60

    const/4 v3, 0x1

    move/from16 v0, v55

    if-ne v0, v3, :cond_52

    .line 2924
    :cond_60
    const/4 v3, 0x2

    move/from16 v0, v55

    if-eq v0, v3, :cond_1bd

    .line 2925
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found in packages file"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_6d} :catch_6d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_6d} :catch_1f8
    .catchall {:try_start_41 .. :try_end_6d} :catchall_2fc

    .line 3054
    .end local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v55    # "type":I
    :catch_6d
    move-exception v29

    move-object/from16 v50, v51

    .end local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v46, v47

    .line 3055
    .end local v47    # "pw":Ljava/io/PrintWriter;
    .local v29, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    :goto_72
    :try_start_72
    invoke-virtual/range {v50 .. v50}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 3056
    move-object/from16 v0, p0

    iget-object v3, v0, mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3057
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3058
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3059
    invoke-virtual/range {p0 .. p0}, resetSystemServer()V
    :try_end_b8
    .catchall {:try_start_72 .. :try_end_b8} :catchall_756

    .line 3068
    if-eqz v46, :cond_bd

    invoke-virtual/range {v46 .. v46}, Ljava/io/PrintWriter;->close()V

    .line 3069
    :cond_bd
    if-eqz v53, :cond_c2

    .line 3070
    :try_start_bf
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_74d

    .line 3072
    :cond_c2
    :goto_c2
    if-eqz v52, :cond_cf

    .line 3073
    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fc

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3097
    .end local v29    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_cf
    :goto_cf
    move-object/from16 v0, p0

    iget-object v3, v0, mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 3099
    .local v23, "N":I
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_d9
    move/from16 v0, v33

    move/from16 v1, v23

    if-ge v0, v1, :cond_65c

    .line 3100
    move-object/from16 v0, p0

    iget-object v3, v0, mPendingPackages:Ljava/util/ArrayList;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/pm/PendingPackage;

    .line 3101
    .local v45, "pp":Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v45

    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v36

    .line 3102
    .local v36, "idObj":Ljava/lang/Object;
    if-eqz v36, :cond_5e2

    move-object/from16 v0, v36

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_5e2

    .line 3103
    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/server/pm/PendingPackage;->realName:Ljava/lang/String;

    move-object/from16 v7, v36

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/server/pm/PendingPackage;->codePath:Ljava/io/File;

    move-object/from16 v0, v45

    iget-object v9, v0, Lcom/android/server/pm/PendingPackage;->resourcePath:Ljava/io/File;

    move-object/from16 v0, v45

    iget-object v10, v0, Lcom/android/server/pm/PendingPackage;->legacyNativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v11, v0, Lcom/android/server/pm/PendingPackage;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v12, v0, Lcom/android/server/pm/PendingPackage;->secondaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v13, v0, Lcom/android/server/pm/PendingPackage;->nativeLibraryRootDir:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v14, v0, Lcom/android/server/pm/PendingPackage;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v15, v0, Lcom/android/server/pm/PendingPackage;->secondaryNativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-boolean v0, v0, Lcom/android/server/pm/PendingPackage;->nativeLibraryRootRequiresIsa:Z

    move/from16 v16, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/pm/PendingPackage;->versionCode:I

    move/from16 v17, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/pm/PendingPackage;->pkgFlags:I

    move/from16 v18, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/pm/PendingPackage;->pkgPrivateFlags:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v22}, getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v43

    .line 3112
    .local v43, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v43, :cond_5d9

    .line 3113
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3099
    .end local v43    # "p":Lcom/android/server/pm/PackageSetting;
    :goto_16b
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_d9

    .line 2898
    .end local v23    # "N":I
    .end local v33    # "i":I
    .end local v36    # "idObj":Ljava/lang/Object;
    .end local v45    # "pp":Lcom/android/server/pm/PendingPackage;
    .end local v46    # "pw":Ljava/io/PrintWriter;
    .end local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    :catch_16f
    move-exception v32

    .line 2899
    .local v32, "fne":Ljava/io/FileNotFoundException;
    :try_start_170
    move-object/from16 v0, p0

    iget-object v3, v0, mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    const/4 v3, 0x4

    const-string v4, "No settings file; creating initial state"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2904
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2905
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    .line 2906
    if-eqz v47, :cond_193

    invoke-virtual/range {v47 .. v47}, Ljava/io/PrintWriter;->close()V

    .line 2907
    :cond_193
    if-eqz v52, :cond_1a0

    .line 2908
    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fc

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_170 .. :try_end_1a0} :catch_6d
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_1a0} :catch_1f8
    .catchall {:try_start_170 .. :try_end_1a0} :catchall_2fc

    .line 2913
    :cond_1a0
    const/4 v3, 0x0

    .line 3068
    if-eqz v47, :cond_1a6

    invoke-virtual/range {v47 .. v47}, Ljava/io/PrintWriter;->close()V

    .line 3069
    :cond_1a6
    if-eqz v53, :cond_1ab

    .line 3070
    :try_start_1a8
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ab} :catch_747

    .line 3072
    :cond_1ab
    :goto_1ab
    if-eqz v52, :cond_1b8

    .line 3073
    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fc

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1b8
    move-object/from16 v50, v51

    .end local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v46, v47

    .line 3174
    .end local v32    # "fne":Ljava/io/FileNotFoundException;
    .end local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    :goto_1bc
    return v3

    .line 2928
    .end local v46    # "pw":Ljava/io/PrintWriter;
    .end local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v55    # "type":I
    :cond_1bd
    :try_start_1bd
    invoke-interface/range {v44 .. v44}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v42

    .line 2930
    .local v42, "outerDepth":I
    :cond_1c1
    :goto_1c1
    invoke-interface/range {v44 .. v44}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v55

    const/4 v3, 0x1

    move/from16 v0, v55

    if-eq v0, v3, :cond_5bc

    const/4 v3, 0x3

    move/from16 v0, v55

    if-ne v0, v3, :cond_1d7

    invoke-interface/range {v44 .. v44}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v42

    if-le v3, v0, :cond_5bc

    .line 2931
    :cond_1d7
    const/4 v3, 0x3

    move/from16 v0, v55

    if-eq v0, v3, :cond_1c1

    const/4 v3, 0x4

    move/from16 v0, v55

    if-eq v0, v3, :cond_1c1

    .line 2935
    invoke-interface/range {v44 .. v44}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v54

    .line 2936
    .local v54, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "package"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25c

    .line 2937
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1f7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1bd .. :try_end_1f7} :catch_6d
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1f7} :catch_1f8
    .catchall {:try_start_1bd .. :try_end_1f7} :catchall_2fc

    goto :goto_1c1

    .line 3061
    .end local v42    # "outerDepth":I
    .end local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v54    # "tagName":Ljava/lang/String;
    .end local v55    # "type":I
    :catch_1f8
    move-exception v29

    move-object/from16 v50, v51

    .end local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v46, v47

    .line 3062
    .end local v47    # "pw":Ljava/io/PrintWriter;
    .local v29, "e":Ljava/io/IOException;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    :goto_1fd
    :try_start_1fd
    invoke-virtual/range {v50 .. v50}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 3063
    move-object/from16 v0, p0

    iget-object v3, v0, mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3065
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3066
    invoke-virtual/range {p0 .. p0}, resetSystemServer()V
    :try_end_243
    .catchall {:try_start_1fd .. :try_end_243} :catchall_756

    .line 3068
    if-eqz v46, :cond_248

    invoke-virtual/range {v46 .. v46}, Ljava/io/PrintWriter;->close()V

    .line 3069
    :cond_248
    if-eqz v53, :cond_24d

    .line 3070
    :try_start_24a
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_24d
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_24d} :catch_750

    .line 3072
    :cond_24d
    :goto_24d
    if-eqz v52, :cond_cf

    .line 3073
    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fc

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_cf

    .line 2938
    .end local v29    # "e":Ljava/io/IOException;
    .end local v46    # "pw":Ljava/io/PrintWriter;
    .end local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v42    # "outerDepth":I
    .restart local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v54    # "tagName":Ljava/lang/String;
    .restart local v55    # "type":I
    :cond_25c
    :try_start_25c
    const-string/jumbo v3, "permissions"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_319

    .line 2939
    move-object/from16 v0, p0

    iget-object v3, v0, mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v3, v1}, readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2940
    const-string v62, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2941
    .local v62, "write_external_storage":Ljava/lang/String;
    const-string v49, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2942
    .local v49, "read_external_storage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/server/pm/BasePermission;

    .line 2943
    .local v61, "wbp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    iget-object v3, v0, mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/pm/BasePermission;

    .line 2944
    .local v48, "rbp":Lcom/android/server/pm/BasePermission;
    if-nez v61, :cond_2c4

    .line 2945
    new-instance v61, Lcom/android/server/pm/BasePermission;

    .end local v61    # "wbp":Lcom/android/server/pm/BasePermission;
    const-string v3, "android"

    const/4 v4, 0x0

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2947
    .restart local v61    # "wbp":Lcom/android/server/pm/BasePermission;
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "put basePermission for FOTA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    move-object/from16 v0, p0

    iget-object v3, v0, mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    move-object/from16 v0, v61

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    :cond_2c4
    if-nez v48, :cond_1c1

    .line 2951
    new-instance v48, Lcom/android/server/pm/BasePermission;

    .end local v48    # "rbp":Lcom/android/server/pm/BasePermission;
    const-string v3, "android"

    const/4 v4, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2953
    .restart local v48    # "rbp":Lcom/android/server/pm/BasePermission;
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "put basePermission for FOTA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    move-object/from16 v0, p0

    iget-object v3, v0, mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25c .. :try_end_2fa} :catch_6d
    .catch Ljava/io/IOException; {:try_start_25c .. :try_end_2fa} :catch_1f8
    .catchall {:try_start_25c .. :try_end_2fa} :catchall_2fc

    goto/16 :goto_1c1

    .line 3068
    .end local v42    # "outerDepth":I
    .end local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v48    # "rbp":Lcom/android/server/pm/BasePermission;
    .end local v49    # "read_external_storage":Ljava/lang/String;
    .end local v54    # "tagName":Ljava/lang/String;
    .end local v55    # "type":I
    .end local v61    # "wbp":Lcom/android/server/pm/BasePermission;
    .end local v62    # "write_external_storage":Ljava/lang/String;
    :catchall_2fc
    move-exception v3

    move-object/from16 v50, v51

    .end local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v46, v47

    .end local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    :goto_301
    if-eqz v46, :cond_306

    invoke-virtual/range {v46 .. v46}, Ljava/io/PrintWriter;->close()V

    .line 3069
    :cond_306
    if-eqz v53, :cond_30b

    .line 3070
    :try_start_308
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_30b} :catch_753

    .line 3072
    :cond_30b
    :goto_30b
    if-eqz v52, :cond_318

    .line 3073
    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fc

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_318
    throw v3

    .line 2956
    .end local v46    # "pw":Ljava/io/PrintWriter;
    .end local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v42    # "outerDepth":I
    .restart local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v54    # "tagName":Ljava/lang/String;
    .restart local v55    # "type":I
    :cond_319
    :try_start_319
    const-string/jumbo v3, "permission-trees"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_331

    .line 2957
    move-object/from16 v0, p0

    iget-object v3, v0, mPermissionTrees:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v3, v1}, readPermissionsLPw(Landroid/util/ArrayMap;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1c1

    .line 2958
    :cond_331
    const-string/jumbo v3, "shared-user"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_345

    .line 2959
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1c1

    .line 2960
    :cond_345
    const-string/jumbo v3, "preferred-packages"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c1

    .line 2962
    const-string/jumbo v3, "preferred-activities"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_365

    .line 2965
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v3}, readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1c1

    .line 2966
    :cond_365
    const-string/jumbo v3, "persistent-preferred-activities"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37a

    .line 2969
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v3}, readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1c1

    .line 2970
    :cond_37a
    const-string/jumbo v3, "crossProfile-intent-filters"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38f

    .line 2973
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v3}, readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1c1

    .line 2974
    :cond_38f
    const-string/jumbo v3, "default-browser"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a4

    .line 2975
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v3}, readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_1c1

    .line 2976
    :cond_3a4
    const-string/jumbo v3, "updated-package"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b8

    .line 2977
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1c1

    .line 2978
    :cond_3b8
    const-string v3, "cleaning-package"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40e

    .line 2979
    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    move-object/from16 v0, v44

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 2980
    .local v39, "name":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "user"

    move-object/from16 v0, v44

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 2981
    .local v58, "userStr":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "code"

    move-object/from16 v0, v44

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_319 .. :try_end_3de} :catch_6d
    .catch Ljava/io/IOException; {:try_start_319 .. :try_end_3de} :catch_1f8
    .catchall {:try_start_319 .. :try_end_3de} :catchall_2fc

    move-result-object v25

    .line 2982
    .local v25, "codeStr":Ljava/lang/String;
    if-eqz v39, :cond_1c1

    .line 2983
    const/16 v57, 0x0

    .line 2984
    .local v57, "userId":I
    const/16 v24, 0x1

    .line 2986
    .local v24, "andCode":Z
    if-eqz v58, :cond_3eb

    .line 2987
    :try_start_3e7
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3ea
    .catch Ljava/lang/NumberFormatException; {:try_start_3e7 .. :try_end_3ea} :catch_403
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e7 .. :try_end_3ea} :catch_6d
    .catch Ljava/io/IOException; {:try_start_3e7 .. :try_end_3ea} :catch_1f8
    .catchall {:try_start_3e7 .. :try_end_3ea} :catchall_2fc

    move-result v57

    .line 2992
    :cond_3eb
    if-eqz v25, :cond_3f1

    .line 2993
    :try_start_3ed
    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 2995
    :cond_3f1
    new-instance v3, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v57

    move-object/from16 v1, v39

    move/from16 v2, v24

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    goto/16 :goto_1c1

    .line 2989
    :catch_403
    move-exception v29

    .line 2990
    .local v29, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2997
    .end local v24    # "andCode":Z
    .end local v25    # "codeStr":Ljava/lang/String;
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .end local v39    # "name":Ljava/lang/String;
    .end local v57    # "userId":I
    .end local v58    # "userStr":Ljava/lang/String;
    :cond_40e
    const-string/jumbo v3, "renamed-package"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43e

    .line 2998
    const/4 v3, 0x0

    const-string/jumbo v4, "new"

    move-object/from16 v0, v44

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 2999
    .local v40, "nname":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "old"

    move-object/from16 v0, v44

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 3000
    .local v41, "oname":Ljava/lang/String;
    if-eqz v40, :cond_1c1

    if-eqz v41, :cond_1c1

    .line 3001
    move-object/from16 v0, p0

    iget-object v3, v0, mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c1

    .line 3003
    .end local v40    # "nname":Ljava/lang/String;
    .end local v41    # "oname":Ljava/lang/String;
    :cond_43e
    const-string/jumbo v3, "restored-ivi"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_452

    .line 3004
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1c1

    .line 3005
    :cond_452
    const-string/jumbo v3, "last-platform-version"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49d

    .line 3007
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v37

    .line 3009
    .local v37, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v31

    .line 3012
    .local v31, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v37

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3013
    const-string/jumbo v3, "external"

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3014
    const-string/jumbo v3, "fingerprint"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_1c1

    .line 3017
    .end local v31    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v37    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_49d
    const-string/jumbo v3, "database-version"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d7

    .line 3019
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v37

    .line 3021
    .restart local v37    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "primary_physical"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v31

    .line 3024
    .restart local v31    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "internal"

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v37

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3025
    const-string/jumbo v3, "external"

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    goto/16 :goto_1c1

    .line 3027
    .end local v31    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v37    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    :cond_4d7
    const-string/jumbo v3, "verifier"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_515

    .line 3028
    const/4 v3, 0x0

    const-string/jumbo v4, "device"

    move-object/from16 v0, v44

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3ed .. :try_end_4eb} :catch_6d
    .catch Ljava/io/IOException; {:try_start_3ed .. :try_end_4eb} :catch_1f8
    .catchall {:try_start_3ed .. :try_end_4eb} :catchall_2fc

    move-result-object v26

    .line 3030
    .local v26, "deviceIdentity":Ljava/lang/String;
    :try_start_4ec
    invoke-static/range {v26 .. v26}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_4f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4ec .. :try_end_4f4} :catch_4f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4ec .. :try_end_4f4} :catch_6d
    .catch Ljava/io/IOException; {:try_start_4ec .. :try_end_4f4} :catch_1f8
    .catchall {:try_start_4ec .. :try_end_4f4} :catchall_2fc

    goto/16 :goto_1c1

    .line 3031
    :catch_4f6
    move-exception v29

    .line 3032
    .local v29, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4f7
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discard invalid verifier device id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c1

    .line 3035
    .end local v26    # "deviceIdentity":Ljava/lang/String;
    .end local v29    # "e":Ljava/lang/IllegalArgumentException;
    :cond_515
    const-string/jumbo v3, "read-external-storage"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53c

    .line 3036
    const/4 v3, 0x0

    const-string/jumbo v4, "enforcement"

    move-object/from16 v0, v44

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3037
    .local v30, "enforcement":Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, mReadExternalStorageEnforced:Ljava/lang/Boolean;

    goto/16 :goto_1c1

    .line 3038
    .end local v30    # "enforcement":Ljava/lang/String;
    :cond_53c
    const-string/jumbo v3, "keyset-settings"

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_556

    .line 3039
    move-object/from16 v0, p0

    iget-object v3, v0, mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, mKeySetRefs:Landroid/util/ArrayMap;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto/16 :goto_1c1

    .line 3040
    :cond_556
    const-string/jumbo v3, "version"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59b

    .line 3041
    const-string/jumbo v3, "volumeUuid"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 3043
    .local v60, "volumeUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v59

    .line 3044
    .local v59, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v3, "sdkVersion"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v59

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3045
    const-string/jumbo v3, "sdkVersion"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v59

    iput v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3046
    const-string/jumbo v3, "fingerprint"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v59

    iput-object v3, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_1c1

    .line 3049
    .end local v59    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v60    # "volumeUuid":Ljava/lang/String;
    :cond_59b
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v44 .. v44}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    invoke-static/range {v44 .. v44}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5ba
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f7 .. :try_end_5ba} :catch_6d
    .catch Ljava/io/IOException; {:try_start_4f7 .. :try_end_5ba} :catch_1f8
    .catchall {:try_start_4f7 .. :try_end_5ba} :catchall_2fc

    goto/16 :goto_1c1

    .line 3068
    .end local v54    # "tagName":Ljava/lang/String;
    :cond_5bc
    if-eqz v47, :cond_5c1

    invoke-virtual/range {v47 .. v47}, Ljava/io/PrintWriter;->close()V

    .line 3069
    :cond_5c1
    if-eqz v53, :cond_5c6

    .line 3070
    :try_start_5c3
    invoke-virtual/range {v53 .. v53}, Ljava/io/FileInputStream;->close()V
    :try_end_5c6
    .catch Ljava/io/IOException; {:try_start_5c3 .. :try_end_5c6} :catch_74a

    .line 3072
    :cond_5c6
    :goto_5c6
    if-eqz v52, :cond_76e

    .line 3073
    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fc

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-object/from16 v50, v51

    .end local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v46, v47

    .end local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_cf

    .line 3117
    .end local v42    # "outerDepth":I
    .end local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v55    # "type":I
    .restart local v23    # "N":I
    .restart local v33    # "i":I
    .restart local v36    # "idObj":Ljava/lang/Object;
    .restart local v43    # "p":Lcom/android/server/pm/PackageSetting;
    .restart local v45    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_5d9
    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_16b

    .line 3118
    .end local v43    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_5e2
    if-eqz v36, :cond_620

    .line 3119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 3121
    .local v38, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    const/4 v3, 0x6

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_16b

    .line 3124
    .end local v38    # "msg":Ljava/lang/String;
    :cond_620
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    iget-object v4, v0, Lcom/android/server/pm/PendingPackage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 3126
    .restart local v38    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    const/4 v3, 0x6

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_16b

    .line 3130
    .end local v36    # "idObj":Ljava/lang/Object;
    .end local v38    # "msg":Ljava/lang/String;
    .end local v45    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_65c
    move-object/from16 v0, p0

    iget-object v3, v0, mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3132
    move-object/from16 v0, p0

    iget-object v3, v0, mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_677

    move-object/from16 v0, p0

    iget-object v3, v0, mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6cb

    .line 3135
    :cond_677
    invoke-virtual/range {p0 .. p0}, readStoppedLPw()V

    .line 3136
    move-object/from16 v0, p0

    iget-object v3, v0, mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3137
    move-object/from16 v0, p0

    iget-object v3, v0, mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3139
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, writePackageRestrictionsLPr(I)V

    .line 3150
    :cond_68e
    :goto_68e
    if-nez p2, :cond_6ee

    .line 3151
    move-object/from16 v0, p0

    iget-object v3, v0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3162
    :cond_698
    move-object/from16 v0, p0

    iget-object v3, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 3163
    .local v27, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_6a4
    :goto_6a4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70a

    .line 3164
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/pm/PackageSetting;

    .line 3165
    .local v28, "disabledPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v35

    .line 3166
    .local v35, "id":Ljava/lang/Object;
    if-eqz v35, :cond_6a4

    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_6a4

    .line 3167
    check-cast v35, Lcom/android/server/pm/SharedUserSetting;

    .end local v35    # "id":Ljava/lang/Object;
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    goto :goto_6a4

    .line 3141
    .end local v27    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v28    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_6cb
    if-nez p2, :cond_6d4

    .line 3142
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, readPackageRestrictionsLPr(I)V

    goto :goto_68e

    .line 3144
    :cond_6d4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "i$":Ljava/util/Iterator;
    :goto_6d8
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68e

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/pm/UserInfo;

    .line 3145
    .local v56, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v56

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, readPackageRestrictionsLPr(I)V

    goto :goto_6d8

    .line 3153
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v56    # "user":Landroid/content/pm/UserInfo;
    :cond_6ee
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .restart local v34    # "i$":Ljava/util/Iterator;
    :goto_6f2
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_698

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/content/pm/UserInfo;

    .line 3154
    .restart local v56    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    move-object/from16 v0, v56

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    goto :goto_6f2

    .line 3171
    .end local v34    # "i$":Ljava/util/Iterator;
    .end local v56    # "user":Landroid/content/pm/UserInfo;
    .restart local v27    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_70a
    move-object/from16 v0, p0

    iget-object v3, v0, mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3174
    const/4 v3, 0x1

    goto/16 :goto_1bc

    .line 3070
    .end local v23    # "N":I
    .end local v27    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v33    # "i":I
    .end local v46    # "pw":Ljava/io/PrintWriter;
    .end local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v32    # "fne":Ljava/io/FileNotFoundException;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    :catch_747
    move-exception v4

    goto/16 :goto_1ab

    .end local v32    # "fne":Ljava/io/FileNotFoundException;
    .restart local v42    # "outerDepth":I
    .restart local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v55    # "type":I
    :catch_74a
    move-exception v3

    goto/16 :goto_5c6

    .end local v42    # "outerDepth":I
    .end local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v47    # "pw":Ljava/io/PrintWriter;
    .end local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v55    # "type":I
    .local v29, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    .restart local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    :catch_74d
    move-exception v3

    goto/16 :goto_c2

    .local v29, "e":Ljava/io/IOException;
    :catch_750
    move-exception v3

    goto/16 :goto_24d

    .end local v29    # "e":Ljava/io/IOException;
    :catch_753
    move-exception v4

    goto/16 :goto_30b

    .line 3068
    :catchall_756
    move-exception v3

    goto/16 :goto_301

    .end local v46    # "pw":Ljava/io/PrintWriter;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    :catchall_759
    move-exception v3

    move-object/from16 v46, v47

    .end local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_301

    .line 3061
    :catch_75e
    move-exception v29

    goto/16 :goto_1fd

    .end local v46    # "pw":Ljava/io/PrintWriter;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    :catch_761
    move-exception v29

    move-object/from16 v46, v47

    .end local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_1fd

    .line 3054
    :catch_766
    move-exception v29

    goto/16 :goto_72

    .end local v46    # "pw":Ljava/io/PrintWriter;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    :catch_769
    move-exception v29

    move-object/from16 v46, v47

    .end local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_72

    .end local v46    # "pw":Ljava/io/PrintWriter;
    .end local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v42    # "outerDepth":I
    .restart local v44    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v55    # "type":I
    :cond_76e
    move-object/from16 v50, v51

    .end local v51    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v50    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v46, v47

    .end local v47    # "pw":Ljava/io/PrintWriter;
    .restart local v46    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_cf
.end method

.method readPackageRestrictionsLPr(I)V
    .registers 48
    .param p1, "userId"    # I

    .prologue
    .line 1682
    const/16 v36, 0x0

    .line 1683
    .local v36, "str":Ljava/io/FileInputStream;
    const/16 v34, 0x0

    .line 1684
    .local v34, "spFile":Ljava/io/File;
    const/16 v32, 0x0

    .line 1685
    .local v32, "pw":Ljava/io/PrintWriter;
    const/16 v39, 0x0

    .line 1688
    .local v39, "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v34

    .line 1689
    new-instance v33, Lcom/android/internal/util/FastPrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    const/16 v42, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-direct {v5, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1e} :catch_465
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_45d
    .catchall {:try_start_8 .. :try_end_1e} :catchall_455

    .line 1690
    .end local v32    # "pw":Ljava/io/PrintWriter;
    .local v33, "pw":Ljava/io/PrintWriter;
    :try_start_1e
    new-instance v40, Landroid/util/XmlMoreAtomicFile;

    invoke-direct/range {p0 .. p1}, getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-direct {v0, v5, v1}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_2b} :catch_468
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2b} :catch_460
    .catchall {:try_start_1e .. :try_end_2b} :catchall_458

    .line 1693
    .end local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .local v40, "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_2b
    invoke-virtual/range {v40 .. v40}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2e} :catch_d0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_2e} :catch_5d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_138
    .catchall {:try_start_2b .. :try_end_2e} :catchall_1be

    move-result-object v36

    .line 1727
    :try_start_2f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v31

    .line 1728
    .local v31, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1732
    :cond_40
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v38

    .local v38, "type":I
    const/4 v5, 0x2

    move/from16 v0, v38

    if-eq v0, v5, :cond_4e

    const/4 v5, 0x1

    move/from16 v0, v38

    if-ne v0, v5, :cond_40

    .line 1736
    :cond_4e
    const/4 v5, 0x2

    move/from16 v0, v38

    if-eq v0, v5, :cond_202

    .line 1737
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v42, "No start tag found in package-restrictions file"

    move-object/from16 v0, v42

    invoke-direct {v5, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_5d} :catch_5d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_5d} :catch_138
    .catchall {:try_start_2f .. :try_end_5d} :catchall_1be

    .line 1841
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v38    # "type":I
    :catch_5d
    move-exception v19

    move-object/from16 v39, v40

    .end local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v32, v33

    .line 1842
    .end local v33    # "pw":Ljava/io/PrintWriter;
    .local v19, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    :goto_62
    :try_start_62
    invoke-virtual/range {v39 .. v39}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1843
    move-object/from16 v0, p0

    iget-object v5, v0, mReadMessages:Ljava/lang/StringBuilder;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Error reading: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    const/4 v5, 0x6

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Error reading stopped packages: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1846
    const-string v5, "PackageManager"

    const-string v42, "Error reading package manager stopped packages"

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    invoke-virtual/range {p0 .. p0}, resetSystemServer()V
    :try_end_b0
    .catchall {:try_start_62 .. :try_end_b0} :catchall_455

    .line 1857
    if-eqz v32, :cond_b5

    invoke-virtual/range {v32 .. v32}, Ljava/io/PrintWriter;->close()V

    .line 1858
    :cond_b5
    if-eqz v36, :cond_ba

    .line 1859
    :try_start_b7
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_44c

    .line 1861
    :cond_ba
    :goto_ba
    if-eqz v34, :cond_cf

    .line 1862
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v42, 0x1fc

    const/16 v43, -0x1

    const/16 v44, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v5, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1868
    .end local v19    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_cf
    :goto_cf
    return-void

    .line 1694
    .end local v32    # "pw":Ljava/io/PrintWriter;
    .end local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :catch_d0
    move-exception v21

    .line 1695
    .local v21, "fne":Ljava/io/FileNotFoundException;
    :try_start_d1
    move-object/from16 v0, p0

    iget-object v5, v0, mReadMessages:Ljava/lang/StringBuilder;

    const-string v42, "No restricted packages file found\n"

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1696
    const/4 v5, 0x4

    const-string v42, "No restricted packages file; assuming all started"

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v5, v0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_f0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1dd

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1704
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz p1, :cond_1ac

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v5

    if-eqz v5, :cond_1ac

    .line 1705
    const-string v5, "PackageSettings"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "set to uninstalled : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_137
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d1 .. :try_end_137} :catch_5d
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_137} :catch_138
    .catchall {:try_start_d1 .. :try_end_137} :catchall_1be

    goto :goto_f0

    .line 1849
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "fne":Ljava/io/FileNotFoundException;
    .end local v23    # "i$":Ljava/util/Iterator;
    :catch_138
    move-exception v19

    move-object/from16 v39, v40

    .end local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v32, v33

    .line 1850
    .end local v33    # "pw":Ljava/io/PrintWriter;
    .local v19, "e":Ljava/io/IOException;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    :goto_13d
    :try_start_13d
    invoke-virtual/range {v39 .. v39}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1851
    move-object/from16 v0, p0

    iget-object v5, v0, mReadMessages:Ljava/lang/StringBuilder;

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Error reading: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const/4 v5, 0x6

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Error reading settings: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1853
    const-string v5, "PackageManager"

    const-string v42, "Error reading package manager stopped packages"

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    invoke-virtual/range {p0 .. p0}, resetSystemServer()V
    :try_end_18b
    .catchall {:try_start_13d .. :try_end_18b} :catchall_455

    .line 1857
    if-eqz v32, :cond_190

    invoke-virtual/range {v32 .. v32}, Ljava/io/PrintWriter;->close()V

    .line 1858
    :cond_190
    if-eqz v36, :cond_195

    .line 1859
    :try_start_192
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_44f

    .line 1861
    :cond_195
    :goto_195
    if-eqz v34, :cond_cf

    .line 1862
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v42, 0x1fc

    const/16 v43, -0x1

    const/16 v44, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v5, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_cf

    .line 1715
    .end local v19    # "e":Ljava/io/IOException;
    .end local v32    # "pw":Ljava/io/PrintWriter;
    .end local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "fne":Ljava/io/FileNotFoundException;
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :cond_1ac
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v4, p1

    :try_start_1b9
    invoke-virtual/range {v3 .. v15}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V
    :try_end_1bc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b9 .. :try_end_1bc} :catch_5d
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_138
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_1be

    goto/16 :goto_f0

    .line 1857
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "fne":Ljava/io/FileNotFoundException;
    .end local v23    # "i$":Ljava/util/Iterator;
    :catchall_1be
    move-exception v5

    move-object/from16 v39, v40

    .end local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v32, v33

    .end local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    :goto_1c3
    if-eqz v32, :cond_1c8

    invoke-virtual/range {v32 .. v32}, Ljava/io/PrintWriter;->close()V

    .line 1858
    :cond_1c8
    if-eqz v36, :cond_1cd

    .line 1859
    :try_start_1ca
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_452

    .line 1861
    :cond_1cd
    :goto_1cd
    if-eqz v34, :cond_1dc

    .line 1862
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x1fc

    const/16 v44, -0x1

    const/16 v45, -0x1

    invoke-static/range {v42 .. v45}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1dc
    throw v5

    .line 1857
    .end local v32    # "pw":Ljava/io/PrintWriter;
    .end local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v21    # "fne":Ljava/io/FileNotFoundException;
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :cond_1dd
    if-eqz v33, :cond_1e2

    invoke-virtual/range {v33 .. v33}, Ljava/io/PrintWriter;->close()V

    .line 1858
    :cond_1e2
    if-eqz v36, :cond_1e7

    .line 1859
    :try_start_1e4
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_447

    .line 1861
    :cond_1e7
    :goto_1e7
    if-eqz v34, :cond_1fc

    .line 1862
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v42, 0x1fc

    const/16 v43, -0x1

    const/16 v44, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v5, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1fc
    move-object/from16 v39, v40

    .end local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v32, v33

    .end local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_cf

    .line 1741
    .end local v21    # "fne":Ljava/io/FileNotFoundException;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v32    # "pw":Ljava/io/PrintWriter;
    .end local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v38    # "type":I
    .restart local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :cond_202
    const/16 v26, 0x0

    .line 1743
    .local v26, "maxAppLinkGeneration":I
    :try_start_204
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v29

    .line 1744
    .local v29, "outerDepth":I
    const/4 v4, 0x0

    .line 1746
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    :cond_209
    :goto_209
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v38

    const/4 v5, 0x1

    move/from16 v0, v38

    if-eq v0, v5, :cond_415

    const/4 v5, 0x3

    move/from16 v0, v38

    if-ne v0, v5, :cond_21f

    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v29

    if-le v5, v0, :cond_415

    .line 1748
    :cond_21f
    const/4 v5, 0x3

    move/from16 v0, v38

    if-eq v0, v5, :cond_209

    const/4 v5, 0x4

    move/from16 v0, v38

    if-eq v0, v5, :cond_209

    .line 1753
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v37

    .line 1754
    .local v37, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "pkg"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39a

    .line 1755
    const/4 v5, 0x0

    const-string/jumbo v42, "name"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1756
    .local v27, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1757
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_274

    .line 1758
    const-string v5, "PackageManager"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "No package known for stopped package: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_209

    .line 1763
    :cond_274
    const/4 v5, 0x0

    const-string/jumbo v42, "enabled"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1764
    .local v20, "enabledStr":Ljava/lang/String;
    if-nez v20, :cond_34a

    const/4 v6, 0x0

    .line 1766
    .local v6, "enabled":I
    :goto_283
    const/4 v5, 0x0

    const-string/jumbo v42, "enabledCaller"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1768
    .local v11, "enabledCaller":Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v42, "inst"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1769
    .local v24, "installedStr":Ljava/lang/String;
    if-nez v24, :cond_350

    const/4 v7, 0x1

    .line 1771
    .local v7, "installed":Z
    :goto_29e
    const/4 v5, 0x0

    const-string/jumbo v42, "stopped"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1772
    .local v35, "stoppedStr":Ljava/lang/String;
    if-nez v35, :cond_356

    const/4 v8, 0x0

    .line 1776
    .local v8, "stopped":Z
    :goto_2ad
    const/4 v5, 0x0

    const-string v42, "blocked"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1777
    .local v18, "blockedStr":Ljava/lang/String;
    if-nez v18, :cond_35c

    const/4 v10, 0x0

    .line 1779
    .local v10, "hidden":Z
    :goto_2bb
    const/4 v5, 0x0

    const-string/jumbo v42, "hidden"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1780
    .local v22, "hiddenStr":Ljava/lang/String;
    if-nez v22, :cond_362

    .line 1782
    :goto_2c9
    const/4 v5, 0x0

    const-string/jumbo v42, "nl"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1783
    .local v28, "notLaunchedStr":Ljava/lang/String;
    if-nez v35, :cond_368

    const/4 v9, 0x0

    .line 1785
    .local v9, "notLaunched":Z
    :goto_2d8
    const/4 v5, 0x0

    const-string v42, "blockUninstall"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1787
    .local v17, "blockUninstallStr":Ljava/lang/String;
    if-nez v17, :cond_36e

    const/4 v14, 0x0

    .line 1790
    .local v14, "blockUninstall":Z
    :goto_2e6
    const/4 v5, 0x0

    const-string/jumbo v42, "domainVerificationStatus"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1792
    .local v41, "verifStateStr":Ljava/lang/String;
    if-nez v41, :cond_374

    const/4 v15, 0x0

    .line 1796
    .local v15, "verifState":I
    :goto_2f5
    const/4 v5, 0x0

    const-string v42, "app-link-generation"

    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1797
    .local v25, "linkGenStr":Ljava/lang/String;
    if-nez v25, :cond_37a

    const/16 v16, 0x0

    .line 1798
    .local v16, "linkGeneration":I
    :goto_304
    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_30c

    .line 1799
    move/from16 v26, v16

    .line 1802
    :cond_30c
    const/4 v12, 0x0

    .line 1803
    .local v12, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1805
    .local v13, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v30

    .line 1807
    .local v30, "packageDepth":I
    :cond_312
    :goto_312
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v38

    const/4 v5, 0x1

    move/from16 v0, v38

    if-eq v0, v5, :cond_393

    const/4 v5, 0x3

    move/from16 v0, v38

    if-ne v0, v5, :cond_328

    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v30

    if-le v5, v0, :cond_393

    .line 1809
    :cond_328
    const/4 v5, 0x3

    move/from16 v0, v38

    if-eq v0, v5, :cond_312

    const/4 v5, 0x4

    move/from16 v0, v38

    if-eq v0, v5, :cond_312

    .line 1813
    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v37

    .line 1814
    const-string/jumbo v5, "enabled-components"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37f

    .line 1815
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v12

    goto :goto_312

    .line 1764
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v12    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "blockUninstall":Z
    .end local v15    # "verifState":I
    .end local v16    # "linkGeneration":I
    .end local v17    # "blockUninstallStr":Ljava/lang/String;
    .end local v18    # "blockedStr":Ljava/lang/String;
    .end local v22    # "hiddenStr":Ljava/lang/String;
    .end local v24    # "installedStr":Ljava/lang/String;
    .end local v25    # "linkGenStr":Ljava/lang/String;
    .end local v28    # "notLaunchedStr":Ljava/lang/String;
    .end local v30    # "packageDepth":I
    .end local v35    # "stoppedStr":Ljava/lang/String;
    .end local v41    # "verifStateStr":Ljava/lang/String;
    :cond_34a
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_283

    .line 1769
    .restart local v6    # "enabled":I
    .restart local v11    # "enabledCaller":Ljava/lang/String;
    .restart local v24    # "installedStr":Ljava/lang/String;
    :cond_350
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_29e

    .line 1772
    .restart local v7    # "installed":Z
    .restart local v35    # "stoppedStr":Ljava/lang/String;
    :cond_356
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_2ad

    .line 1777
    .restart local v8    # "stopped":Z
    .restart local v18    # "blockedStr":Ljava/lang/String;
    :cond_35c
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2bb

    .line 1780
    .restart local v10    # "hidden":Z
    .restart local v22    # "hiddenStr":Ljava/lang/String;
    :cond_362
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2c9

    .line 1783
    .restart local v28    # "notLaunchedStr":Ljava/lang/String;
    :cond_368
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_2d8

    .line 1787
    .restart local v9    # "notLaunched":Z
    .restart local v17    # "blockUninstallStr":Ljava/lang/String;
    :cond_36e
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_2e6

    .line 1792
    .restart local v14    # "blockUninstall":Z
    .restart local v41    # "verifStateStr":Ljava/lang/String;
    :cond_374
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_2f5

    .line 1797
    .restart local v15    # "verifState":I
    .restart local v25    # "linkGenStr":Ljava/lang/String;
    :cond_37a
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto :goto_304

    .line 1816
    .restart local v12    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "linkGeneration":I
    .restart local v30    # "packageDepth":I
    :cond_37f
    const-string/jumbo v5, "disabled-components"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_312

    .line 1817
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v13

    goto :goto_312

    :cond_393
    move/from16 v5, p1

    .line 1821
    invoke-virtual/range {v4 .. v16}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V

    goto/16 :goto_209

    .line 1824
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v12    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "blockUninstall":Z
    .end local v15    # "verifState":I
    .end local v16    # "linkGeneration":I
    .end local v17    # "blockUninstallStr":Ljava/lang/String;
    .end local v18    # "blockedStr":Ljava/lang/String;
    .end local v20    # "enabledStr":Ljava/lang/String;
    .end local v22    # "hiddenStr":Ljava/lang/String;
    .end local v24    # "installedStr":Ljava/lang/String;
    .end local v25    # "linkGenStr":Ljava/lang/String;
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "notLaunchedStr":Ljava/lang/String;
    .end local v30    # "packageDepth":I
    .end local v35    # "stoppedStr":Ljava/lang/String;
    .end local v41    # "verifStateStr":Ljava/lang/String;
    :cond_39a
    const-string/jumbo v5, "preferred-activities"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b0

    .line 1825
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_209

    .line 1826
    :cond_3b0
    const-string/jumbo v5, "persistent-preferred-activities"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c6

    .line 1827
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_209

    .line 1828
    :cond_3c6
    const-string/jumbo v5, "crossProfile-intent-filters"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3dc

    .line 1829
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_209

    .line 1830
    :cond_3dc
    const-string/jumbo v5, "default-apps"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f2

    .line 1831
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_209

    .line 1833
    :cond_3f2
    const-string v5, "PackageManager"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Unknown element under <stopped-packages>: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-interface/range {v31 .. v31}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    invoke-static/range {v31 .. v31}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_209

    .line 1839
    .end local v37    # "tagName":Ljava/lang/String;
    :cond_415
    move-object/from16 v0, p0

    iget-object v5, v0, mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v42, v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_422
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_204 .. :try_end_422} :catch_5d
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_422} :catch_138
    .catchall {:try_start_204 .. :try_end_422} :catchall_1be

    .line 1857
    if-eqz v33, :cond_427

    invoke-virtual/range {v33 .. v33}, Ljava/io/PrintWriter;->close()V

    .line 1858
    :cond_427
    if-eqz v36, :cond_42c

    .line 1859
    :try_start_429
    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->close()V
    :try_end_42c
    .catch Ljava/io/IOException; {:try_start_429 .. :try_end_42c} :catch_44a

    .line 1861
    :cond_42c
    :goto_42c
    if-eqz v34, :cond_46d

    .line 1862
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v42, 0x1fc

    const/16 v43, -0x1

    const/16 v44, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v5, v0, v1, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-object/from16 v39, v40

    .end local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v32, v33

    .end local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_cf

    .line 1859
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "maxAppLinkGeneration":I
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v32    # "pw":Ljava/io/PrintWriter;
    .end local v38    # "type":I
    .end local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v21    # "fne":Ljava/io/FileNotFoundException;
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :catch_447
    move-exception v5

    goto/16 :goto_1e7

    .end local v21    # "fne":Ljava/io/FileNotFoundException;
    .end local v23    # "i$":Ljava/util/Iterator;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "maxAppLinkGeneration":I
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v38    # "type":I
    :catch_44a
    move-exception v5

    goto :goto_42c

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "maxAppLinkGeneration":I
    .end local v29    # "outerDepth":I
    .end local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "pw":Ljava/io/PrintWriter;
    .end local v38    # "type":I
    .end local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .local v19, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    .restart local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :catch_44c
    move-exception v5

    goto/16 :goto_ba

    .local v19, "e":Ljava/io/IOException;
    :catch_44f
    move-exception v5

    goto/16 :goto_195

    .end local v19    # "e":Ljava/io/IOException;
    :catch_452
    move-exception v42

    goto/16 :goto_1cd

    .line 1857
    :catchall_455
    move-exception v5

    goto/16 :goto_1c3

    .end local v32    # "pw":Ljava/io/PrintWriter;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    :catchall_458
    move-exception v5

    move-object/from16 v32, v33

    .end local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_1c3

    .line 1849
    :catch_45d
    move-exception v19

    goto/16 :goto_13d

    .end local v32    # "pw":Ljava/io/PrintWriter;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    :catch_460
    move-exception v19

    move-object/from16 v32, v33

    .end local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_13d

    .line 1841
    :catch_465
    move-exception v19

    goto/16 :goto_62

    .end local v32    # "pw":Ljava/io/PrintWriter;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    :catch_468
    move-exception v19

    move-object/from16 v32, v33

    .end local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_62

    .end local v32    # "pw":Ljava/io/PrintWriter;
    .end local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "maxAppLinkGeneration":I
    .restart local v29    # "outerDepth":I
    .restart local v31    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v38    # "type":I
    .restart local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :cond_46d
    move-object/from16 v39, v40

    .end local v40    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v39    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v32, v33

    .end local v33    # "pw":Ljava/io/PrintWriter;
    .restart local v32    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_cf
.end method

.method readPkgCmpOnlyForOwnerUser()V
    .registers 10

    .prologue
    .line 392
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, "lines":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_5e

    aget-object v4, v0, v2

    .line 395
    .local v4, "line":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {p0, v4, v7}, splitByToken(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v6

    .line 396
    .local v6, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_5b

    .line 397
    const-string/jumbo v7, "package"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 398
    iget-object v7, p0, mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_32
    const-string v7, "component"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 402
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {p0, v7, v8}, splitByToken(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 403
    .local v1, "cmpPair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_5b

    .line 404
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, addComponentOnlyForOwnerUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .end local v1    # "cmpPair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 410
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5e
    return-void
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 1554
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1557
    .local v0, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_85

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_85

    .line 1558
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1562
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1563
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1564
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1565
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3c

    .line 1566
    invoke-virtual {p0, p2}, editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_6

    .line 1568
    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 1574
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1576
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1579
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_85
    return-void
.end method

.method readStoppedLPw()V
    .registers 15

    .prologue
    .line 2289
    const/4 v7, 0x0

    .line 2290
    .local v7, "str":Ljava/io/FileInputStream;
    iget-object v11, p0, mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1c1

    .line 2292
    :try_start_9
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v11, p0, mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_b9

    .line 2293
    .end local v7    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :try_start_10
    iget-object v11, p0, mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "Reading from backup stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2294
    const/4 v11, 0x4

    const-string v12, "Need to read from backup stopped packages file"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2296
    iget-object v11, p0, mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_44

    .line 2300
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cleaning up stopped packages file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget-object v11, p0, mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_44} :catch_1ba

    .line 2310
    :cond_44
    :goto_44
    if-nez v8, :cond_1be

    .line 2311
    :try_start_46
    iget-object v11, p0, mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_be

    .line 2312
    iget-object v11, p0, mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No stopped packages file found\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    const/4 v11, 0x4

    const-string v12, "No stopped packages file file; assuming all started"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2318
    iget-object v11, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2319
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2320
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V
    :try_end_7b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_7b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_7b} :catch_1b7

    goto :goto_65

    .line 2371
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    :catch_7c
    move-exception v0

    move-object v7, v8

    .line 2372
    .end local v8    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_7e
    iget-object v11, p0, mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading stopped packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2375
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2385
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b8
    return-void

    .line 2304
    :catch_b9
    move-exception v11

    :goto_ba
    move-object v8, v7

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto :goto_44

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_bc
    move-object v7, v8

    .line 2322
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_b8

    .line 2324
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :cond_be
    :try_start_be
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v11, p0, mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_be .. :try_end_c5} :catch_7c
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c5} :catch_1b7

    .line 2326
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_c5
    :try_start_c5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2327
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2331
    :cond_cd
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_d7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_cd

    .line 2335
    :cond_d7
    const/4 v11, 0x2

    if-eq v10, v11, :cond_e4

    .line 2336
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v12, "No start tag found in stopped packages file"

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2371
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    :catch_e2
    move-exception v0

    goto :goto_7e

    .line 2339
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "type":I
    :cond_e4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2341
    .local v3, "outerDepth":I
    :cond_e8
    :goto_e8
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1b2

    const/4 v11, 0x3

    if-ne v10, v11, :cond_f8

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v3, :cond_1b2

    .line 2343
    :cond_f8
    const/4 v11, 0x3

    if-eq v10, v11, :cond_e8

    const/4 v11, 0x4

    if-eq v10, v11, :cond_e8

    .line 2348
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2349
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v11, "pkg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_191

    .line 2350
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2351
    .local v2, "name":Ljava/lang/String;
    iget-object v11, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 2352
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_178

    .line 2353
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2354
    const-string v11, "1"

    const/4 v12, 0x0

    const-string/jumbo v13, "nl"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_137

    .line 2355
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2361
    :cond_137
    :goto_137
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_13a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_13a} :catch_e2
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_13a} :catch_13b

    goto :goto_e8

    .line 2378
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "type":I
    :catch_13b
    move-exception v0

    .line 2379
    .local v0, "e":Ljava/io/IOException;
    :goto_13c
    iget-object v11, p0, mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading settings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2381
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b8

    .line 2358
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_178
    :try_start_178
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package known for stopped package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137

    .line 2363
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_191
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <stopped-packages>: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_e8

    .line 2369
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_1b2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_178 .. :try_end_1b5} :catch_e2
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_1b5} :catch_13b

    goto/16 :goto_b8

    .line 2378
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "str":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_1b7
    move-exception v0

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_13c

    .line 2304
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_1ba
    move-exception v11

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_ba

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :cond_1be
    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_c5

    :cond_1c1
    move-object v8, v7

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_44
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 4302
    iget-object v9, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v9

    .line 4304
    :try_start_3
    iget-object v8, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 4305
    iget-object v8, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4306
    invoke-virtual {p0, p1}, writePackageRestrictionsLPr(I)V

    .line 4309
    :cond_13
    iget-object v8, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4310
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v0, :cond_5a

    .line 4311
    iget-object v8, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 4312
    .local v7, "sourceUserId":I
    iget-object v8, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4313
    .local v3, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v6, 0x0

    .line 4314
    .local v6, "needsWriting":Z
    new-instance v2, Landroid/util/ArraySet;

    invoke-virtual {v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4316
    .local v2, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4317
    .local v1, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v8

    if-ne v8, p1, :cond_38

    .line 4318
    const/4 v6, 0x1

    .line 4319
    invoke-virtual {v3, v1}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    goto :goto_38

    .line 4326
    .end local v0    # "count":I
    .end local v1    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v2    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v3    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "needsWriting":Z
    .end local v7    # "sourceUserId":I
    :catchall_4f
    move-exception v8

    monitor-exit v9
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v8

    .line 4322
    .restart local v0    # "count":I
    .restart local v2    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .restart local v3    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "needsWriting":Z
    .restart local v7    # "sourceUserId":I
    :cond_52
    if-eqz v6, :cond_57

    .line 4323
    :try_start_54
    invoke-virtual {p0, v7}, writePackageRestrictionsLPr(I)V

    .line 4310
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 4326
    .end local v2    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    .end local v3    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "needsWriting":Z
    .end local v7    # "sourceUserId":I
    :cond_5a
    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_4f

    .line 4327
    return-void
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 697
    iget-object v0, p0, mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1448
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1449
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 1453
    const/4 v1, 0x0

    .line 1456
    :goto_b
    return v1

    .line 1455
    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1456
    const/4 v1, 0x1

    goto :goto_b
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .prologue
    .line 1460
    const/4 v3, 0x0

    .line 1461
    .local v3, "result":Z
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_10

    aget v4, v0, v1

    .line 1462
    .local v4, "userId":I
    invoke-virtual {p0, p1, v4}, removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 1461
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1464
    .end local v4    # "userId":I
    :cond_10
    return v3
.end method

.method removePackageLPw(Lcom/android/server/pm/PackageSetting;)I
    .registers 4
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 1230
    if-eqz p1, :cond_34

    .line 1231
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_2c

    .line 1232
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1233
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_34

    .line 1234
    iget-object v0, p0, mSharedUsers:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v0}, removeUserIdLPw(I)V

    .line 1236
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 1243
    :goto_2b
    return v0

    .line 1239
    :cond_2c
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v0}, removeUserIdLPw(I)V

    .line 1240
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_2b

    .line 1243
    :cond_34
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1211
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1212
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3f

    .line 1213
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_37

    .line 1215
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1216
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_3f

    .line 1217
    iget-object v1, p0, mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, removeUserIdLPw(I)V

    .line 1219
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 1226
    :goto_36
    return v1

    .line 1222
    :cond_37
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, removeUserIdLPw(I)V

    .line 1223
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_36

    .line 1226
    :cond_3f
    const/4 v1, -0x1

    goto :goto_36
.end method

.method removeUserLPw(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 4285
    iget-object v4, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4286
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4287
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_a

    .line 4289
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_20
    iget-object v4, p0, mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4290
    invoke-direct {p0, p1}, getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 4291
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4292
    invoke-direct {p0, p1}, getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v2

    .line 4293
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4294
    invoke-virtual {p0, p1}, removeCrossProfileIntentFiltersLPw(I)V

    .line 4296
    iget-object v4, p0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    # invokes: Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemoved(I)V
    invoke-static {v4, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$000(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4298
    invoke-virtual {p0}, writePackageListLPr()V

    .line 4299
    return-void
.end method

.method resetSystemServer()V
    .registers 2

    .prologue
    .line 5550
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 5551
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 5552
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1468
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 1469
    const/4 v0, 0x0

    .line 1473
    :goto_4
    return v0

    .line 1471
    :cond_5
    iget-object v0, p0, mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1472
    invoke-virtual {p0, p2}, writePackageRestrictionsLPr(I)V

    .line 1473
    const/4 v0, 0x1

    goto :goto_4
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 601
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 602
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_13

    .line 603
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_13

    .line 604
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    .line 607
    :cond_13
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    .prologue
    .line 610
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 611
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 612
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 614
    :cond_d
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .registers 16
    .param p1, "yucky"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .prologue
    .line 4444
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 4445
    .local v7, "appId":I
    iget-object v0, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4446
    .local v8, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v8, :cond_27

    .line 4447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4449
    :cond_27
    if-nez p4, :cond_60

    iget v0, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v7, v0, :cond_60

    .line 4450
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4462
    :cond_60
    invoke-virtual {v8, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    if-eq v0, p3, :cond_8b

    .line 4463
    invoke-virtual {v8, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4465
    invoke-virtual {v8, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 4466
    iget-object v0, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_85

    .line 4467
    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    iget-object v2, v8, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput p6, v6, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 4471
    :cond_85
    const/4 v0, 0x0

    invoke-virtual {v8, v0, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4473
    :cond_89
    const/4 v0, 0x1

    .line 4475
    :goto_8a
    return v0

    :cond_8b
    const/4 v0, 0x0

    goto :goto_8a
.end method

.method splitByToken(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 413
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, "last":I
    if-ne v1, v5, :cond_d

    move-object v0, p1

    .line 415
    .local v0, "key":Ljava/lang/String;
    :goto_9
    if-nez v0, :cond_16

    move-object v3, v4

    .line 422
    :goto_c
    return-object v3

    .line 414
    .end local v0    # "key":Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_9

    .line 418
    .restart local v0    # "key":Ljava/lang/String;
    :cond_16
    if-ne v1, v5, :cond_29

    move-object v2, v4

    .line 419
    .local v2, "value":Ljava/lang/String;
    :goto_19
    if-eqz v2, :cond_1f

    .line 420
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_1f
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 418
    .end local v2    # "value":Ljava/lang/String;
    :cond_29
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_19
.end method

.method transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "origPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 777
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    const/4 v4, 0x2

    if-ge v1, v4, :cond_40

    .line 778
    if-nez v1, :cond_3a

    iget-object v3, p0, mPermissionTrees:Landroid/util/ArrayMap;

    .line 780
    .local v3, "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_a
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 781
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 786
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 787
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 788
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 789
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_34

    .line 790
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 792
    :cond_34
    iput v6, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 793
    invoke-virtual {v0, v5, v6}, Lcom/android/server/pm/BasePermission;->setGids([IZ)V

    goto :goto_12

    .line 778
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3a
    iget-object v3, p0, mPermissions:Landroid/util/ArrayMap;

    goto :goto_a

    .line 777
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 797
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "permissions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_40
    return-void
.end method

.method unInstallSystemApplicationsForPersonaLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)I
    .registers 12
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4182
    .local p5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 4183
    .local v2, "result":I
    if-eqz p5, :cond_ad

    .line 4184
    iget-object v3, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4186
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_3d

    .line 4187
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "for KNOX due to missing metadata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 4190
    :cond_3d
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4191
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ps.pkgFlags"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_89

    .line 4193
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4194
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " uninstalled system package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    const/4 v2, 0x0

    goto :goto_d

    .line 4197
    :cond_89
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Ignored pkg. Not a system package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 4201
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a7
    invoke-virtual {p0, p1, p3}, applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 4202
    invoke-virtual {p0, p3}, writePackageRestrictionsLPr(I)V

    .line 4204
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_ad
    return v2
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1407
    iget-object v2, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1408
    .local v1, "current":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_c

    .line 1412
    const/4 v2, 0x0

    .line 1424
    :goto_b
    return v2

    .line 1416
    :cond_c
    const/4 v2, 0x2

    if-ne p2, v2, :cond_21

    .line 1417
    iget-object v2, p0, mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1418
    .local v0, "alwaysGeneration":I
    iget-object v2, p0, mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1423
    :goto_1c
    invoke-virtual {v1, p2, v0, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1424
    const/4 v2, 0x1

    goto :goto_b

    .line 1420
    .end local v0    # "alwaysGeneration":I
    :cond_21
    const/4 v0, 0x0

    .restart local v0    # "alwaysGeneration":I
    goto :goto_1c
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .registers 16
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .prologue
    .line 1133
    if-eqz p1, :cond_6

    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v11, :cond_10

    .line 1134
    :cond_6
    const-string v11, "PackageManager"

    const-string v12, "Trying to update info for null package. Just ignoring"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/16 p2, -0x2710

    .line 1207
    .end local p2    # "userId":I
    :goto_f
    return p2

    .line 1140
    .restart local p2    # "userId":I
    :cond_10
    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v11, :cond_17

    .line 1141
    const/16 p2, -0x2710

    goto :goto_f

    .line 1144
    :cond_17
    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1147
    .local v9, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ba

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1148
    .local v2, "eachPerm":Ljava/lang/String;
    iget-object v11, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 1149
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_21

    .line 1154
    invoke-virtual {v9}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 1159
    const/4 v10, 0x0

    .line 1160
    .local v10, "used":Z
    iget-object v11, v9, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1161
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v11, :cond_4a

    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4a

    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4a

    .line 1164
    const/4 v10, 0x1

    .line 1168
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_73
    if-nez v10, :cond_21

    .line 1172
    invoke-virtual {v9}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v6

    .line 1173
    .local v6, "permissionsState":Lcom/android/server/pm/PermissionsState;
    iget-object v11, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v11}, getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1177
    .local v1, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_a1

    .line 1178
    const/4 v8, 0x0

    .line 1179
    .local v8, "reqByDisabledSysPkg":Z
    iget-object v11, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1180
    .local v5, "permission":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 1181
    const/4 v8, 0x1

    .line 1185
    .end local v5    # "permission":Ljava/lang/String;
    :cond_9f
    if-nez v8, :cond_21

    .line 1192
    .end local v8    # "reqByDisabledSysPkg":Z
    :cond_a1
    const/16 v11, 0xff

    const/4 v12, 0x0

    invoke-virtual {v6, v0, p2, v11, v12}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    .line 1195
    invoke-virtual {v6, v0}, Lcom/android/server/pm/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b1

    .line 1197
    const/4 p2, -0x1

    goto/16 :goto_f

    .line 1201
    :cond_b1
    invoke-virtual {v6, v0, p2}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_21

    goto/16 :goto_f

    .line 1207
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "eachPerm":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v10    # "used":Z
    :cond_ba
    const/16 p2, -0x2710

    goto/16 :goto_f
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1961
    const-string v4, "all-intent-filter-verifications"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1962
    iget-object v4, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1963
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_23

    .line 1964
    iget-object v4, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1965
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v2

    .line 1966
    .local v2, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v2, :cond_20

    .line 1967
    invoke-virtual {p0, p1, v2}, writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1963
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1970
    .end local v2    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_23
    const-string v4, "all-intent-filter-verifications"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1971
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .registers 6

    .prologue
    .line 1509
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_16

    aget v3, v0, v1

    .line 1510
    .local v3, "userId":I
    iget-object v4, p0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1509
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1512
    .end local v3    # "userId":I
    :cond_16
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .registers 5

    .prologue
    .line 1500
    invoke-virtual {p0}, getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 1501
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_7

    .line 1506
    :cond_6
    return-void

    .line 1503
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1504
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, writePackageRestrictionsLPr(I)V

    goto :goto_b
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1932
    const-string/jumbo v3, "crossProfile-intent-filters"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1933
    iget-object v3, p0, mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1934
    .local v1, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v1, :cond_35

    .line 1935
    invoke-virtual {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1936
    .local v0, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1937
    invoke-virtual {v0, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1938
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 1941
    .end local v0    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_35
    const-string/jumbo v3, "crossProfile-intent-filters"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1942
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2016
    const-string/jumbo v1, "default-apps"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    iget-object v1, p0, mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2018
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2019
    const-string/jumbo v1, "default-browser"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2020
    const-string/jumbo v1, "packageName"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2021
    const-string/jumbo v1, "default-browser"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2023
    :cond_27
    const-string/jumbo v1, "default-apps"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2658
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2659
    const-string/jumbo v0, "name"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2660
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 2661
    const-string/jumbo v0, "realName"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2663
    :cond_1c
    const-string v0, "codePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2664
    const-string/jumbo v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2665
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2666
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2667
    const-string/jumbo v0, "version"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2669
    const-string/jumbo v0, "dm"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->dexMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2670
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->dexMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_68

    iget v0, p2, Lcom/android/server/pm/PackageSetting;->dexMode:I

    if-ne v0, v5, :cond_74

    .line 2672
    :cond_68
    const-string/jumbo v0, "dt"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2675
    :cond_74
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 2676
    const-string/jumbo v0, "resourcePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2678
    :cond_86
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_92

    .line 2679
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2681
    :cond_92
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_9e

    .line 2682
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2684
    :cond_9e
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_aa

    .line 2685
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2687
    :cond_aa
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_b5

    .line 2688
    const-string v0, "cpuAbiOverride"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2691
    :cond_b5
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_c1

    .line 2692
    const-string/jumbo v0, "nativeLibraryDir"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2694
    :cond_c1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootDir:Ljava/lang/String;

    if-eqz v0, :cond_cd

    .line 2695
    const-string/jumbo v0, "nativeLibraryRootDir"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2697
    :cond_cd
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootRequiresIsa:Z

    if-ne v0, v5, :cond_da

    .line 2698
    const-string/jumbo v0, "nativeLibraryRootRequiresIsa"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2700
    :cond_da
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryNativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_e6

    .line 2701
    const-string/jumbo v0, "secondaryNativeLibraryDir"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2705
    :cond_e6
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_10c

    .line 2706
    const-string/jumbo v0, "userId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2712
    :goto_f6
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_105

    .line 2713
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2717
    :cond_105
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2718
    return-void

    .line 2708
    :cond_10c
    const-string/jumbo v0, "sharedUserId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f6
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"    # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1947
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1948
    const-string/jumbo v0, "domain-verification"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1949
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1954
    const-string/jumbo v0, "domain-verification"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1956
    :cond_18
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2825
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2826
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string/jumbo v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2827
    const-string v3, "alias"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2828
    const-string/jumbo v3, "identifier"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2829
    const-string/jumbo v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d

    .line 2831
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_45
    return-void
.end method

.method writeLPr()V
    .registers 30

    .prologue
    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 2390
    const/16 v18, 0x0

    .line 2391
    .local v18, "spFile":Ljava/io/File;
    const/4 v13, 0x0

    .line 2392
    .local v13, "pw":Ljava/io/PrintWriter;
    const/16 v16, 0x0

    .line 2393
    .local v16, "settingsFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v6, 0x0

    .line 2394
    .local v6, "fstr":Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .line 2397
    .local v19, "str":Ljava/io/BufferedOutputStream;
    :try_start_11
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v18

    .line 2398
    new-instance v14, Lcom/android/internal/util/FastPrintWriter;

    new-instance v25, Ljava/io/FileOutputStream;

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_29} :catch_4b4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_29} :catch_4a7

    .line 2399
    .end local v13    # "pw":Ljava/io/PrintWriter;
    .local v14, "pw":Ljava/io/PrintWriter;
    :try_start_29
    new-instance v17, Landroid/util/XmlMoreAtomicFile;

    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_38
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_38} :catch_4b7
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_38} :catch_4aa

    .line 2400
    .end local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .local v17, "settingsFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_38
    invoke-virtual/range {v17 .. v17}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    .line 2401
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_43} :catch_4bb
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_4ae

    .line 2404
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    .local v20, "str":Ljava/io/BufferedOutputStream;
    :try_start_43
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2405
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v25, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v25 .. v25}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2406
    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2407
    const-string/jumbo v25, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2409
    const/16 v25, 0x0

    const-string/jumbo v26, "packages"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2411
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7d
    move-object/from16 v0, p0

    iget-object v0, v0, mVersion:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v7, v0, :cond_fc

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, mVersion:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 2413
    .local v24, "volumeUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mVersion:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2415
    .local v23, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const/16 v25, 0x0

    const-string/jumbo v26, "version"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2416
    const-string/jumbo v25, "volumeUuid"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v15, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    const-string/jumbo v25, "sdkVersion"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2418
    const-string/jumbo v25, "databaseVersion"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2419
    const-string/jumbo v25, "fingerprint"

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v15, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const/16 v25, 0x0

    const-string/jumbo v26, "version"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2411
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 2423
    .end local v23    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v24    # "volumeUuid":Ljava/lang/String;
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v25, v0

    if-eqz v25, :cond_134

    .line 2424
    const/16 v25, 0x0

    const-string/jumbo v26, "verifier"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2425
    const/16 v25, 0x0

    const-string/jumbo v26, "device"

    move-object/from16 v0, p0

    iget-object v0, v0, mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2426
    const/16 v25, 0x0

    const-string/jumbo v26, "verifier"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2429
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    if-eqz v25, :cond_170

    .line 2430
    const/16 v25, 0x0

    const-string/jumbo v26, "read-external-storage"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2431
    const/16 v26, 0x0

    const-string/jumbo v27, "enforcement"

    move-object/from16 v0, p0

    iget-object v0, v0, mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_1df

    const-string v25, "1"

    :goto_15b
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2433
    const/16 v25, 0x0

    const-string/jumbo v26, "read-external-storage"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2436
    :cond_170
    const/16 v25, 0x0

    const-string/jumbo v26, "permission-trees"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, mPermissionTrees:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_18a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1e3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/BasePermission;

    .line 2438
    .local v3, "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_19b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_19b} :catch_19c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_19b} :catch_21b

    goto :goto_18a

    .line 2531
    .end local v3    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_19c
    move-exception v4

    move-object/from16 v19, v20

    .end local v20    # "str":Ljava/io/BufferedOutputStream;
    .restart local v19    # "str":Ljava/io/BufferedOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object v13, v14

    .line 2532
    .end local v14    # "pw":Ljava/io/PrintWriter;
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    :goto_1a2
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2533
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    .line 2534
    if-eqz v18, :cond_1b9

    .line 2535
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1fc

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2540
    :cond_1b9
    const/16 v25, 0x6

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to write package manager settings, current changes will be lost at reboot: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2543
    const-string v25, "PackageManager"

    const-string v26, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2561
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1de
    return-void

    .line 2431
    .end local v13    # "pw":Ljava/io/PrintWriter;
    .end local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    .restart local v7    # "i":I
    .restart local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v20    # "str":Ljava/io/BufferedOutputStream;
    :cond_1df
    :try_start_1df
    const-string v25, "0"

    goto/16 :goto_15b

    .line 2440
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_1e3
    const/16 v25, 0x0

    const-string/jumbo v26, "permission-trees"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2442
    const/16 v25, 0x0

    const-string/jumbo v26, "permissions"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_209
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_25e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/BasePermission;

    .line 2444
    .restart local v3    # "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_21a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1df .. :try_end_21a} :catch_19c
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_21a} :catch_21b

    goto :goto_209

    .line 2545
    .end local v3    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_21b
    move-exception v4

    move-object/from16 v19, v20

    .end local v20    # "str":Ljava/io/BufferedOutputStream;
    .restart local v19    # "str":Ljava/io/BufferedOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object v13, v14

    .line 2546
    .end local v14    # "pw":Ljava/io/PrintWriter;
    .local v4, "e":Ljava/io/IOException;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    :goto_221
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2547
    invoke-virtual {v13}, Ljava/io/PrintWriter;->close()V

    .line 2548
    if-eqz v18, :cond_238

    .line 2549
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1fc

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2554
    :cond_238
    const/16 v25, 0x6

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to write package manager settings, current changes will be lost at reboot: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2557
    const-string v25, "PackageManager"

    const-string v26, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1de

    .line 2446
    .end local v4    # "e":Ljava/io/IOException;
    .end local v13    # "pw":Ljava/io/PrintWriter;
    .end local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v19    # "str":Ljava/io/BufferedOutputStream;
    .restart local v7    # "i":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v20    # "str":Ljava/io/BufferedOutputStream;
    :cond_25e
    const/16 v25, 0x0

    :try_start_260
    const-string/jumbo v26, "permissions"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_278
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_28a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 2449
    .local v12, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_278

    .line 2452
    .end local v12    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_28a
    move-object/from16 v0, p0

    iget-object v0, v0, mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_298
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2aa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 2453
    .restart local v12    # "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_298

    .line 2456
    .end local v12    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2b8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_330

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/SharedUserSetting;

    .line 2457
    .local v22, "usr":Lcom/android/server/pm/SharedUserSetting;
    const/16 v25, 0x0

    const-string/jumbo v26, "shared-user"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2458
    const/16 v25, 0x0

    const-string/jumbo v26, "name"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2459
    const/16 v25, 0x0

    const-string/jumbo v26, "userId"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2461
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v25, v0

    const-string/jumbo v26, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2462
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v15, v1}, writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2464
    const/16 v25, 0x0

    const-string/jumbo v26, "shared-user"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2b8

    .line 2467
    .end local v22    # "usr":Lcom/android/server/pm/SharedUserSetting;
    :cond_330
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_3ab

    .line 2468
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_346
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3ab

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageCleanItem;

    .line 2469
    .local v9, "item":Landroid/content/pm/PackageCleanItem;
    iget v0, v9, Landroid/content/pm/PackageCleanItem;->userId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 2470
    .local v21, "userStr":Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "cleaning-package"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2471
    const/16 v25, 0x0

    const-string/jumbo v26, "name"

    iget-object v0, v9, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    const/16 v26, 0x0

    const-string v27, "code"

    iget-boolean v0, v9, Landroid/content/pm/PackageCleanItem;->andCode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3a7

    const-string/jumbo v25, "true"

    :goto_384
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    const/16 v25, 0x0

    const-string/jumbo v26, "user"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2474
    const/16 v25, 0x0

    const-string v26, "cleaning-package"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_346

    .line 2472
    :cond_3a7
    const-string/jumbo v25, "false"

    goto :goto_384

    .line 2478
    .end local v9    # "item":Landroid/content/pm/PackageCleanItem;
    .end local v21    # "userStr":Ljava/lang/String;
    :cond_3ab
    move-object/from16 v0, p0

    iget-object v0, v0, mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    if-lez v25, :cond_412

    .line 2479
    move-object/from16 v0, p0

    iget-object v0, v0, mRenamedPackages:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3c5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_412

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2480
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v25, 0x0

    const-string/jumbo v26, "renamed-package"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2481
    const/16 v26, 0x0

    const-string/jumbo v27, "new"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2482
    const/16 v26, 0x0

    const-string/jumbo v27, "old"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    const/16 v25, 0x0

    const-string/jumbo v26, "renamed-package"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3c5

    .line 2487
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_412
    move-object/from16 v0, p0

    iget-object v0, v0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 2488
    .local v11, "numIVIs":I
    if-lez v11, :cond_44f

    .line 2492
    const/16 v25, 0x0

    const-string/jumbo v26, "restored-ivi"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2493
    const/4 v7, 0x0

    :goto_42b
    if-ge v7, v11, :cond_443

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2495
    .local v10, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2493
    add-int/lit8 v7, v7, 0x1

    goto :goto_42b

    .line 2497
    .end local v10    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_443
    const/16 v25, 0x0

    const-string/jumbo v26, "restored-ivi"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2504
    :cond_44f
    move-object/from16 v0, p0

    iget-object v0, v0, mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2506
    const/16 v25, 0x0

    const-string/jumbo v26, "packages"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2508
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2510
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2513
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2514
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 2516
    invoke-virtual {v14}, Ljava/io/PrintWriter;->close()V

    .line 2517
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1fc

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1b0

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-static/range {v25 .. v28}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2526
    invoke-virtual/range {p0 .. p0}, writePackageListLPr()V

    .line 2527
    invoke-virtual/range {p0 .. p0}, writeAllUsersPackageRestrictionsLPr()V

    .line 2528
    invoke-virtual/range {p0 .. p0}, writeAllRuntimePermissionsLPr()V
    :try_end_4a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_260 .. :try_end_4a0} :catch_19c
    .catch Ljava/io/IOException; {:try_start_260 .. :try_end_4a0} :catch_21b

    move-object/from16 v19, v20

    .end local v20    # "str":Ljava/io/BufferedOutputStream;
    .restart local v19    # "str":Ljava/io/BufferedOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object v13, v14

    .line 2529
    .end local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_1de

    .line 2545
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "numIVIs":I
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_4a7
    move-exception v4

    goto/16 :goto_221

    .end local v13    # "pw":Ljava/io/PrintWriter;
    .restart local v14    # "pw":Ljava/io/PrintWriter;
    :catch_4aa
    move-exception v4

    move-object v13, v14

    .end local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_221

    .end local v13    # "pw":Ljava/io/PrintWriter;
    .end local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    :catch_4ae
    move-exception v4

    move-object/from16 v16, v17

    .end local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object v13, v14

    .end local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_221

    .line 2531
    :catch_4b4
    move-exception v4

    goto/16 :goto_1a2

    .end local v13    # "pw":Ljava/io/PrintWriter;
    .restart local v14    # "pw":Ljava/io/PrintWriter;
    :catch_4b7
    move-exception v4

    move-object v13, v14

    .end local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_1a2

    .end local v13    # "pw":Ljava/io/PrintWriter;
    .end local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    :catch_4bb
    move-exception v4

    move-object/from16 v16, v17

    .end local v17    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v16    # "settingsFile":Landroid/util/XmlMoreAtomicFile;
    move-object v13, v14

    .end local v14    # "pw":Ljava/io/PrintWriter;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_1a2
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2722
    const-string/jumbo v0, "package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2723
    const-string/jumbo v0, "name"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2724
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 2725
    const-string/jumbo v0, "realName"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2727
    :cond_1c
    const-string v0, "codePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2728
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2729
    const-string/jumbo v0, "resourcePath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2732
    :cond_35
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 2733
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2735
    :cond_41
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 2736
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2738
    :cond_4d
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_59

    .line 2739
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2741
    :cond_59
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 2742
    const-string v0, "cpuAbiOverride"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2745
    :cond_64
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootDir:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 2746
    const-string/jumbo v0, "nativeLibraryRootDir"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootDir:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2748
    :cond_70
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 2749
    const-string/jumbo v0, "nativeLibraryDir"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2751
    :cond_7c
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryNativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 2752
    const-string/jumbo v0, "secondaryNativeLibraryDir"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->secondaryNativeLibraryDir:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2754
    :cond_88
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->nativeLibraryRootRequiresIsa:Z

    if-ne v0, v2, :cond_95

    .line 2755
    const-string/jumbo v0, "nativeLibraryRootRequiresIsa"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2760
    :cond_95
    const-string/jumbo v0, "dm"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->dexMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2761
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->dexMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_aa

    iget v0, p2, Lcom/android/server/pm/PackageSetting;->dexMode:I

    if-ne v0, v2, :cond_b6

    .line 2763
    :cond_aa
    const-string/jumbo v0, "dt"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2767
    :cond_b6
    const-string/jumbo v0, "publicFlags"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2768
    const-string/jumbo v0, "privateFlags"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2769
    const-string/jumbo v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2770
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2771
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2772
    const-string/jumbo v0, "version"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2773
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_170

    .line 2774
    const-string/jumbo v0, "userId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2778
    :goto_10e
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-eqz v0, :cond_11b

    .line 2779
    const-string/jumbo v0, "uidError"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2781
    :cond_11b
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->installStatus:I

    if-nez v0, :cond_128

    .line 2782
    const-string/jumbo v0, "installStatus"

    const-string/jumbo v1, "false"

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2784
    :cond_128
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_134

    .line 2785
    const-string/jumbo v0, "installer"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2787
    :cond_134
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_140

    .line 2788
    const-string/jumbo v0, "volumeUuid"

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2790
    :cond_140
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v1, "sigs"

    iget-object v2, p0, mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2792
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2795
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2796
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2797
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2798
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v0}, writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2800
    const-string/jumbo v0, "package"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2801
    return-void

    .line 2776
    :cond_170
    const-string/jumbo v0, "sharedUserId"

    iget v1, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_10e
.end method

.method writePackageListLPr()V
    .registers 2

    .prologue
    .line 2564
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, writePackageListLPr(I)V

    .line 2565
    return-void
.end method

.method writePackageListLPr(I)V
    .registers 26
    .param p1, "creatingUserId"    # I

    .prologue
    .line 2569
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v18

    .line 2570
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 2571
    .local v17, "userIds":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_15
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_31

    .line 2572
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v20, v0

    aput v20, v17, v8

    .line 2571
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 2574
    :cond_31
    const/16 v20, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_41

    .line 2575
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v17

    .line 2579
    :cond_41
    new-instance v16, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageListFilename:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".tmp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2580
    .local v16, "tempFile":Ljava/io/File;
    new-instance v11, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, mPackageListFilename:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v11, v0, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2582
    .local v11, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v11}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v19

    .line 2583
    .local v19, "writeTarget":Ljava/io/File;
    const/4 v5, 0x0

    .line 2584
    .local v5, "fstr":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 2586
    .local v14, "str":Ljava/io/BufferedOutputStream;
    :try_start_7c
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_83} :catch_1d0

    .line 2587
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .local v6, "fstr":Ljava/io/FileOutputStream;
    :try_start_83
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-direct {v15, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_1d3

    .line 2588
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .local v15, "str":Ljava/io/BufferedOutputStream;
    :try_start_88
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    const/16 v21, 0x1a0

    const/16 v22, 0x3e8

    const/16 v23, 0x408

    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2590
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2591
    .local v13, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_a8
    :goto_a8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1c0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 2592
    .local v12, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c6

    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    if-nez v20, :cond_fc

    .line 2593
    :cond_c6
    const-string v20, "PackageSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Skipping "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " due to missing metadata"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_e6} :catch_e7

    goto :goto_a8

    .line 2649
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_e7
    move-exception v4

    move-object v14, v15

    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .restart local v14    # "str":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 2650
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    :goto_ea
    const-string v20, "PackageSettings"

    const-string v21, "Failed to write packages.list"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2651
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2652
    invoke-virtual {v11}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2654
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_fb
    return-void

    .line 2597
    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .end local v14    # "str":Ljava/io/BufferedOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "str":Ljava/io/BufferedOutputStream;
    :cond_fc
    :try_start_fc
    iget-object v0, v12, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2598
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v20, Ljava/io/File;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2599
    .local v3, "dataPath":Ljava/lang/String;
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x2

    if-eqz v20, :cond_19c

    const/4 v10, 0x1

    .line 2600
    .local v10, "isDebug":Z
    :goto_11a
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PermissionsState;->computeGids([I)[I

    move-result-object v7

    .line 2603
    .local v7, "gids":[I
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_a8

    .line 2624
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2625
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2627
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2628
    if-eqz v10, :cond_19f

    const-string v20, " 1 "

    :goto_154
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2632
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    if-eqz v7, :cond_1a2

    array-length v0, v7

    move/from16 v20, v0

    if-lez v20, :cond_1a2

    .line 2634
    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2635
    const/4 v8, 0x1

    :goto_184
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_1aa

    .line 2636
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    aget v20, v7, v8

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2635
    add-int/lit8 v8, v8, 0x1

    goto :goto_184

    .line 2599
    .end local v7    # "gids":[I
    .end local v10    # "isDebug":Z
    :cond_19c
    const/4 v10, 0x0

    goto/16 :goto_11a

    .line 2628
    .restart local v7    # "gids":[I
    .restart local v10    # "isDebug":Z
    :cond_19f
    const-string v20, " 0 "

    goto :goto_154

    .line 2640
    :cond_1a2
    const-string/jumbo v20, "none"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    :cond_1aa
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2643
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    goto/16 :goto_a8

    .line 2645
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "dataPath":Ljava/lang/String;
    .end local v7    # "gids":[I
    .end local v10    # "isDebug":Z
    .end local v12    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_1c0
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2646
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2647
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 2648
    invoke-virtual {v11}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_1cc} :catch_e7

    move-object v14, v15

    .end local v15    # "str":Ljava/io/BufferedOutputStream;
    .restart local v14    # "str":Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 2653
    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_fb

    .line 2649
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_1d0
    move-exception v4

    goto/16 :goto_ea

    .end local v5    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "fstr":Ljava/io/FileOutputStream;
    :catch_1d3
    move-exception v4

    move-object v5, v6

    .end local v6    # "fstr":Ljava/io/FileOutputStream;
    .restart local v5    # "fstr":Ljava/io/FileOutputStream;
    goto/16 :goto_ea
.end method

.method writePackageRestrictionsLPr(I)V
    .registers 35
    .param p1, "userId"    # I

    .prologue
    .line 2033
    invoke-direct/range {p0 .. p1}, getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v31

    .line 2034
    .local v31, "userPackagesStateFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 2036
    const/16 v26, 0x0

    .line 2037
    .local v26, "spFile":Ljava/io/File;
    const/16 v23, 0x0

    .line 2038
    .local v23, "pw":Ljava/io/PrintWriter;
    const/16 v29, 0x0

    .line 2039
    .local v29, "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    const/16 v19, 0x0

    .line 2040
    .local v19, "fstr":Ljava/io/FileOutputStream;
    const/16 v27, 0x0

    .line 2043
    .local v27, "str":Ljava/io/BufferedOutputStream;
    :try_start_1a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v26

    .line 2044
    new-instance v24, Lcom/android/internal/util/FastPrintWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2d} :catch_3bc

    .line 2045
    .end local v23    # "pw":Ljava/io/PrintWriter;
    .local v24, "pw":Ljava/io/PrintWriter;
    :try_start_2d
    new-instance v30, Landroid/util/XmlMoreAtomicFile;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_3bf

    .line 2046
    .end local v29    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .local v30, "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_38
    invoke-virtual/range {v30 .. v30}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v19

    .line 2047
    new-instance v28, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_45} :catch_3c4

    .line 2049
    .end local v27    # "str":Ljava/io/BufferedOutputStream;
    .local v28, "str":Ljava/io/BufferedOutputStream;
    :try_start_45
    new-instance v25, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2050
    .local v25, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2051
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2052
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2054
    const/4 v4, 0x0

    const-string/jumbo v5, "package-restrictions"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2056
    move-object/from16 v0, p0

    iget-object v4, v0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_80
    :goto_80
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2057
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v32

    .line 2059
    .local v32, "ustate":Landroid/content/pm/PackageUserState;
    if-eqz p1, :cond_e7

    .line 2060
    const/16 v4, 0x64

    move/from16 v0, p1

    if-ge v0, v4, :cond_2ab

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    if-eqz v4, :cond_2ab

    .line 2061
    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set to uninstalled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    move-object/from16 v0, v32

    iget v5, v0, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x0

    move-object/from16 v0, v32

    iget-boolean v7, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    move-object/from16 v0, v32

    iget-boolean v8, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    move-object/from16 v0, v32

    iget-boolean v9, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    move-object/from16 v0, v32

    iget-object v10, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v11, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    move-object/from16 v0, v32

    iget-object v12, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    move-object/from16 v0, v32

    iget-boolean v13, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;ZII)V

    .line 2084
    :cond_e7
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    if-nez v4, :cond_131

    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-nez v4, :cond_131

    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_131

    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v4, :cond_131

    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-nez v4, :cond_131

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v4, :cond_115

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-gtz v4, :cond_131

    :cond_115
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v4, :cond_125

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-gtz v4, :cond_131

    :cond_125
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    if-nez v4, :cond_131

    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v4, :cond_80

    .line 2094
    :cond_131
    const/4 v4, 0x0

    const-string/jumbo v5, "pkg"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2095
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2098
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v4, :cond_157

    .line 2099
    const/4 v4, 0x0

    const-string/jumbo v5, "inst"

    const-string/jumbo v6, "false"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2101
    :cond_157
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v4, :cond_169

    .line 2102
    const/4 v4, 0x0

    const-string/jumbo v5, "stopped"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2104
    :cond_169
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v4, :cond_17b

    .line 2105
    const/4 v4, 0x0

    const-string/jumbo v5, "nl"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2107
    :cond_17b
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v4, :cond_18d

    .line 2108
    const/4 v4, 0x0

    const-string/jumbo v5, "hidden"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2110
    :cond_18d
    move-object/from16 v0, v32

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->blockUninstall:Z

    if-eqz v4, :cond_19e

    .line 2111
    const/4 v4, 0x0

    const-string v5, "blockUninstall"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2113
    :cond_19e
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v4, :cond_1c8

    .line 2114
    const/4 v4, 0x0

    const-string/jumbo v5, "enabled"

    move-object/from16 v0, v32

    iget v6, v0, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2116
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v4, :cond_1c8

    .line 2117
    const/4 v4, 0x0

    const-string/jumbo v5, "enabledCaller"

    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2121
    :cond_1c8
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v4, :cond_1df

    .line 2123
    const/4 v4, 0x0

    const-string/jumbo v5, "domainVerificationStatus"

    move-object/from16 v0, v32

    iget v6, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2126
    :cond_1df
    move-object/from16 v0, v32

    iget v4, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v4, :cond_1f5

    .line 2127
    const/4 v4, 0x0

    const-string v5, "app-link-generation"

    move-object/from16 v0, v32

    iget v6, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2130
    :cond_1f5
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v4, :cond_2fe

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_2fe

    .line 2132
    const/4 v4, 0x0

    const-string/jumbo v5, "enabled-components"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2133
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_216
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2134
    .local v22, "name":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v5, "item"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2135
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2136
    const/4 v4, 0x0

    const-string/jumbo v5, "item"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_23f} :catch_240

    goto :goto_216

    .line 2182
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "name":Ljava/lang/String;
    .end local v25    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v32    # "ustate":Landroid/content/pm/PackageUserState;
    :catch_240
    move-exception v18

    move-object/from16 v27, v28

    .end local v28    # "str":Ljava/io/BufferedOutputStream;
    .restart local v27    # "str":Ljava/io/BufferedOutputStream;
    move-object/from16 v29, v30

    .end local v30    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v29    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v23, v24

    .line 2183
    .end local v24    # "pw":Ljava/io/PrintWriter;
    .local v18, "e":Ljava/io/IOException;
    .restart local v23    # "pw":Ljava/io/PrintWriter;
    :goto_247
    if-eqz v29, :cond_250

    .line 2184
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2186
    :cond_250
    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintWriter;->close()V

    .line 2187
    if-eqz v26, :cond_260

    .line 2188
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fc

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2193
    :cond_260
    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2196
    const-string v4, "PackageManager"

    const-string v5, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2202
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2aa

    .line 2203
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2aa

    .line 2204
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clean up mangled file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    .end local v18    # "e":Ljava/io/IOException;
    :cond_2aa
    :goto_2aa
    return-void

    .line 2075
    .end local v23    # "pw":Ljava/io/PrintWriter;
    .end local v27    # "str":Ljava/io/BufferedOutputStream;
    .end local v29    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v24    # "pw":Ljava/io/PrintWriter;
    .restart local v25    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v28    # "str":Ljava/io/BufferedOutputStream;
    .restart local v30    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v32    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_2ab
    :try_start_2ab
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, getComponentsOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Ljava/util/ArrayList;

    move-result-object v17

    .line 2076
    .local v17, "componentsOnlyForOwnerUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v17, :cond_e7

    .line 2077
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_2b9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2078
    .local v16, "cmp":Ljava/lang/String;
    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "disable cmp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "in pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_2b9

    .line 2138
    .end local v16    # "cmp":Ljava/lang/String;
    .end local v17    # "componentsOnlyForOwnerUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2f5
    const/4 v4, 0x0

    const-string/jumbo v5, "enabled-components"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2140
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_2fe
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v4, :cond_352

    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_352

    .line 2142
    const/4 v4, 0x0

    const-string/jumbo v5, "disabled-components"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2143
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_31f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_349

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2144
    .restart local v22    # "name":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v5, "item"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2145
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2146
    const/4 v4, 0x0

    const-string/jumbo v5, "item"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_31f

    .line 2148
    .end local v22    # "name":Ljava/lang/String;
    :cond_349
    const/4 v4, 0x0

    const-string/jumbo v5, "disabled-components"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2151
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_352
    const/4 v4, 0x0

    const-string/jumbo v5, "pkg"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_80

    .line 2155
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v32    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_35d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2156
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2157
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2158
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2160
    const/4 v4, 0x0

    const-string/jumbo v5, "package-restrictions"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2162
    invoke-interface/range {v25 .. v25}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2164
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2168
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2169
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedOutputStream;->close()V

    .line 2170
    invoke-virtual/range {v24 .. v24}, Ljava/io/PrintWriter;->close()V

    .line 2171
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fc

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2175
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3b4
    .catch Ljava/io/IOException; {:try_start_2ab .. :try_end_3b4} :catch_240

    move-object/from16 v27, v28

    .end local v28    # "str":Ljava/io/BufferedOutputStream;
    .restart local v27    # "str":Ljava/io/BufferedOutputStream;
    move-object/from16 v29, v30

    .end local v30    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v29    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v23, v24

    .line 2181
    .end local v24    # "pw":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_2aa

    .line 2182
    .end local v25    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_3bc
    move-exception v18

    goto/16 :goto_247

    .end local v23    # "pw":Ljava/io/PrintWriter;
    .restart local v24    # "pw":Ljava/io/PrintWriter;
    :catch_3bf
    move-exception v18

    move-object/from16 v23, v24

    .end local v24    # "pw":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_247

    .end local v23    # "pw":Ljava/io/PrintWriter;
    .end local v29    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v24    # "pw":Ljava/io/PrintWriter;
    .restart local v30    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    :catch_3c4
    move-exception v18

    move-object/from16 v29, v30

    .end local v30    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v29    # "userPackagesStateAtomicFile":Landroid/util/XmlMoreAtomicFile;
    move-object/from16 v23, v24

    .end local v24    # "pw":Ljava/io/PrintWriter;
    .restart local v23    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_247
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2835
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6e

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_6e

    .line 2836
    const-string/jumbo v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2837
    const-string/jumbo v1, "name"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2838
    const-string/jumbo v1, "package"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2839
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    if-eqz v1, :cond_30

    .line 2840
    const-string/jumbo v1, "protection"

    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2845
    :cond_30
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_68

    .line 2846
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_6f

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2847
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    :goto_3d
    if-eqz v0, :cond_68

    .line 2848
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2849
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_58

    .line 2850
    const-string/jumbo v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2852
    :cond_58
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_68

    .line 2853
    const-string/jumbo v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2857
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_68
    const-string/jumbo v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2859
    :cond_6e
    return-void

    .line 2846
    :cond_6f
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_3d
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    .line 2269
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2284
    :goto_7
    return-void

    .line 2273
    :cond_8
    const-string/jumbo v2, "perms"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2275
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 2276
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2277
    const-string/jumbo v2, "name"

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2278
    const-string/jumbo v2, "granted"

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2279
    const-string/jumbo v2, "flags"

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2280
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    .line 2283
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_51
    const-string/jumbo v2, "perms"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1918
    const-string/jumbo v3, "persistent-preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1919
    iget-object v3, p0, mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1920
    .local v2, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v2, :cond_35

    .line 1921
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1922
    .local v1, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1923
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1924
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 1927
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_35
    const-string/jumbo v3, "persistent-preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1928
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1904
    const-string/jumbo v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1905
    iget-object v3, p0, mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1906
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_35

    .line 1907
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 1908
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1909
    invoke-virtual {v1, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1910
    const-string/jumbo v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19

    .line 1913
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_35
    const-string/jumbo v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1914
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 5198
    if-eqz p2, :cond_8

    .line 5199
    iget-object v0, p0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    .line 5203
    :goto_7
    return-void

    .line 5201
    :cond_8
    iget-object v0, p0, mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    goto :goto_7
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2805
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2806
    const-string/jumbo v0, "identifier"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2808
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2809
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 13
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2813
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v6

    .line 2814
    .local v6, "properSigning":J
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 2815
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_11
    if-ge v1, v4, :cond_2e

    aget-wide v2, v0, v1

    .line 2816
    .local v2, "id":J
    const-string/jumbo v5, "upgrade-keyset"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2817
    const-string/jumbo v5, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2818
    const-string/jumbo v5, "upgrade-keyset"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2815
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2821
    .end local v0    # "arr$":[J
    .end local v1    # "i$":I
    .end local v2    # "id":J
    .end local v4    # "len$":I
    :cond_2e
    return-void
.end method
