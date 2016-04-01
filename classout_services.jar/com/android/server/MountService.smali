.class Lcom/android/server/MountService;
.super Landroid/os/storage/IMountService$Stub;
.source "MountService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$MountServiceInternalImpl;,
        Lcom/android/server/MountService$DirEncryptListner;,
        Lcom/android/server/MountService$Callbacks;,
        Lcom/android/server/MountService$UnmountObbAction;,
        Lcom/android/server/MountService$MountObbAction;,
        Lcom/android/server/MountService$ObbAction;,
        Lcom/android/server/MountService$ObbActionHandler;,
        Lcom/android/server/MountService$MountServiceHandler;,
        Lcom/android/server/MountService$DefaultContainerConnection;,
        Lcom/android/server/MountService$ObbState;,
        Lcom/android/server/MountService$PackageInstalledMap;,
        Lcom/android/server/MountService$VoldResponseCode;,
        Lcom/android/server/MountService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FORCE_ADOPTABLE:Ljava/lang/String; = "forceAdoptable"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTD_TAG:Ljava/lang/String; = "CryptdConnector"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = true

.field private static final DEBUG_OBB:Z = true

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final ENCRYPT_ERROR_NAME:Ljava/lang/String; = "error_not_encrypted"

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final LOCAL_LOGD:Z = true

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final PROPERTY_ENCRYPT_NAME:Ljava/lang/String; = "vold.encrypt_progress"

.field private static final RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field private static final RESTRICTION4_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field private static final RESTRICTIONPOLICY_SDCARDENABLED_METHOD:Ljava/lang/String; = "isSdCardEnabled"

.field private static final RESTRICTIONPOLICY_SDCARDWRITEALLOW_METHOD:Ljava/lang/String; = "isSDCardWriteAllowed"

.field private static final RESTRICTIONPOLICY_USBHOSTSTORAGE_METHOD:Ljava/lang/String; = "isUsbHostStorageAllowed"

.field private static final RESTRICTIONPOLICY_USBMASSSTORAGE_METHOD:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field private static final TAG:Ljava/lang/String; = "MountService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/MountService;


# instance fields
.field private final SEC_ODE_POLICY_SET:I

.field private final SEC_ODE_POLICY_UNSET:I

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/MountService$PackageInstalledMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private final mCallbacks:Lcom/android/server/MountService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

.field mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceAdoptable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private final mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/MountService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureContainerVolume:Landroid/os/storage/StorageVolume;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private mStartedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSystemReady:Z

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUsbStorageBooster:Landroid/os/DVFSHelper;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 186
    const/4 v0, 0x0

    sput-object v0, sSelf:Lcom/android/server/MountService;

    .line 455
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "pattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "pin"

    aput-object v2, v0, v1

    sput-object v0, CRYPTO_TYPES:[Ljava/lang/String;

    .line 619
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1636
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    .line 224
    const/4 v0, 0x4

    iput v0, p0, SEC_ODE_POLICY_SET:I

    .line 225
    const/16 v0, 0x8

    iput v0, p0, SEC_ODE_POLICY_UNSET:I

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, mUsbStorageBooster:Landroid/os/DVFSHelper;

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 332
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, mStartedUsers:[I

    .line 336
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mDisks:Landroid/util/ArrayMap;

    .line 339
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mVolumes:Landroid/util/ArrayMap;

    .line 343
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mRecords:Landroid/util/ArrayMap;

    .line 351
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mDiskScanLatches:Landroid/util/ArrayMap;

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, mSystemReady:Z

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, mDaemonConnected:Z

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, mSecureContainerVolume:Landroid/os/storage/StorageVolume;

    .line 507
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 508
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 510
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mUnmountLock:Ljava/lang/Object;

    .line 518
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mAsecMountSet:Ljava/util/HashSet;

    .line 537
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mObbMounts:Ljava/util/Map;

    .line 540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mObbPathToStateMap:Ljava/util/Map;

    .line 543
    new-instance v0, Lcom/android/server/MountService$MountServiceInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V

    iput-object v0, p0, mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    .line 622
    new-instance v0, Lcom/android/server/MountService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DefaultContainerConnection;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, mContainerService:Lcom/android/internal/app/IMediaContainerService;

    .line 827
    new-instance v0, Lcom/android/server/MountService$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$1;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 4085
    const/4 v0, 0x0

    iput-object v0, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 4086
    const/4 v0, 0x0

    iput-object v0, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 4623
    new-instance v0, Lcom/android/server/MountService$3;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$3;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1637
    sput-object p0, sSelf:Lcom/android/server/MountService;

    .line 1639
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 1640
    new-instance v0, Lcom/android/server/MountService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/MountService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    .line 1643
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    .line 1645
    new-instance v10, Landroid/os/HandlerThread;

    const-string v0, "MountService"

    invoke-direct {v10, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v10, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 1647
    new-instance v0, Lcom/android/server/MountService$MountServiceHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$MountServiceHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 1650
    new-instance v0, Lcom/android/server/MountService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MountService$ObbActionHandler;-><init>(Lcom/android/server/MountService;Landroid/os/Looper;)V

    iput-object v0, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    .line 1653
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    .line 1654
    .local v8, "dataDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string/jumbo v0, "system"

    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1655
    .local v11, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "last-fstrim"

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mLastMaintenanceFile:Ljava/io/File;

    .line 1656
    iget-object v0, p0, mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b7

    .line 1660
    :try_start_ef
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f9} :catch_196

    .line 1668
    :goto_f9
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "storage.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mSettingsFile:Landroid/util/AtomicFile;

    .line 1671
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1672
    :try_start_10f
    invoke-direct {p0}, readSettingsLocked()V

    .line 1673
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_1c1

    .line 1675
    const-class v0, Landroid/os/storage/MountServiceInternal;

    iget-object v1, p0, mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1683
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "VoldConnector"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1685
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1687
    new-instance v12, Ljava/lang/Thread;

    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "VoldConnector"

    invoke-direct {v12, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1688
    .local v12, "thread":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 1691
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptd"

    const/16 v3, 0x1f4

    const-string v4, "CryptdConnector"

    const/16 v5, 0x19

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    .line 1693
    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    .line 1695
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "CryptdConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1696
    .local v7, "crypt_thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1698
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1699
    .local v13, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1700
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1701
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1704
    invoke-direct {p0}, addInternalVolume()V

    .line 1707
    invoke-direct {p0}, registerDeviceRestriction()V

    .line 1715
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.android.server"

    const/16 v3, 0x16

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, mUsbStorageBooster:Landroid/os/DVFSHelper;

    .line 1716
    return-void

    .line 1661
    .end local v7    # "crypt_thread":Ljava/lang/Thread;
    .end local v12    # "thread":Ljava/lang/Thread;
    .end local v13    # "userFilter":Landroid/content/IntentFilter;
    :catch_196
    move-exception v9

    .line 1662
    .local v9, "e":Ljava/io/IOException;
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create fstrim record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f9

    .line 1665
    .end local v9    # "e":Ljava/io/IOException;
    :cond_1b7
    iget-object v0, p0, mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, mLastMaintenance:J

    goto/16 :goto_f9

    .line 1673
    :catchall_1c1
    move-exception v0

    :try_start_1c2
    monitor-exit v1
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    throw v0
.end method

.method private ApplyCurrentSdCardPolicy(Z)V
    .registers 15
    .param p1, "unAvailable"    # Z

    .prologue
    const/4 v12, 0x1

    .line 4709
    const/4 v3, 0x0

    .line 4710
    .local v3, "removeEncryption":Z
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ApplyCurrentSdCardPolicy :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    if-ne p1, v12, :cond_97

    .line 4713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v9, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v0, v9, :cond_97

    .line 4714
    iget-object v9, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/VolumeInfo;

    .line 4715
    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, v8, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 4716
    .local v7, "vPath":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 4717
    .local v6, "vId":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3d

    .line 4713
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 4720
    :cond_3d
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3a

    .line 4723
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "removable storage path :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    :try_start_5c
    iget v9, v8, Landroid/os/storage/VolumeInfo;->state:I

    if-ne v9, v12, :cond_89

    .line 4726
    const/16 v4, 0x1e

    .local v4, "retries":I
    move v5, v4

    .line 4727
    .end local v4    # "retries":I
    .local v5, "retries":I
    :goto_63
    invoke-direct {p0, v6}, findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getState()I
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_6a} :catch_8d

    move-result v9

    if-ne v9, v12, :cond_98

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    if-ltz v5, :cond_80

    .line 4729
    const-wide/16 v10, 0x3e8

    :try_start_73
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_76} :catch_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_76} :catch_8d

    move v5, v4

    .line 4733
    .end local v4    # "retries":I
    .restart local v5    # "retries":I
    goto :goto_63

    .line 4730
    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    :catch_78
    move-exception v1

    .line 4731
    .local v1, "iex":Ljava/lang/InterruptedException;
    :try_start_79
    const-string v9, "MountService"

    const-string v10, "Interrupted while waiting for media"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4735
    .end local v1    # "iex":Ljava/lang/InterruptedException;
    :cond_80
    :goto_80
    if-nez v4, :cond_89

    .line 4736
    const-string v9, "MountService"

    const-string v10, "Timed out waiting for media to check"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    .end local v4    # "retries":I
    :cond_89
    invoke-virtual {p0, v6}, unmount(Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_8c} :catch_8d

    goto :goto_3a

    .line 4740
    :catch_8d
    move-exception v2

    .line 4741
    .local v2, "ilex":Ljava/lang/IllegalArgumentException;
    const-string v9, "MountService"

    const-string/jumbo v10, "volume removed, while waiting "

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 4746
    .end local v0    # "i":I
    .end local v2    # "ilex":Ljava/lang/IllegalArgumentException;
    .end local v6    # "vId":Ljava/lang/String;
    .end local v7    # "vPath":Ljava/lang/String;
    .end local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_97
    return-void

    .restart local v0    # "i":I
    .restart local v5    # "retries":I
    .restart local v6    # "vId":Ljava/lang/String;
    .restart local v7    # "vPath":Ljava/lang/String;
    .restart local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_98
    move v4, v5

    .end local v5    # "retries":I
    .restart local v4    # "retries":I
    goto :goto_80
.end method

.method private SMdump()[Landroid/os/storage/StorageVolume;
    .registers 4

    .prologue
    .line 4446
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 4447
    .local v0, "storage":Landroid/os/storage/StorageManager;
    if-nez v0, :cond_e

    .line 4448
    const/4 v1, 0x0

    .line 4450
    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    goto :goto_d
.end method

.method static synthetic access$000(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, systemReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/MountService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1}, onStartUser(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/MountService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, shouldBenchmark()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 180
    invoke-direct {p0, p1}, isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/MountService;)Landroid/os/DVFSHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mUsbStorageBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/MountService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, logEncryptionState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MountService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1}, onCleanupUser(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    .line 180
    iput-object p1, p0, mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/MountService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 180
    invoke-direct {p0, p1}, removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, waitForReady()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, warnOnNotMounted()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/MountService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0, p1}, addObbStateLocked(Lcom/android/server/MountService$ObbState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/MountService;Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0, p1}, findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/MountService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/MountService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-direct {p0, p1}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/MountService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p1}, ApplyCurrentSdCardPolicy(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, handleSystemReady()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/MountService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, handleDaemonConnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/MountService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    invoke-direct {p0}, isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/MountService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-wide v0, p0, mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/MountService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/MountService;
    .param p1, "x1"    # J

    .prologue
    .line 180
    iput-wide p1, p0, mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/MountService;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountService;

    .prologue
    .line 180
    iget-object v0, p0, mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method public static addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 4120
    if-eqz p0, :cond_13

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_14

    .line 4123
    .end local p0    # "input":Ljava/lang/String;
    :cond_13
    :goto_13
    return-object p0

    .restart local p0    # "input":Ljava/lang/String;
    :cond_14
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_13
.end method

.method private addInternalVolume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 939
    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 941
    .local v0, "internal":Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    .line 942
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 943
    iget-object v1, p0, mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 9
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3451
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3452
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v5, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3454
    .local v4, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-nez v4, :cond_26

    .line 3455
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3456
    .restart local v4    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v5, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3468
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_48

    .line 3483
    iget-object v5, p0, mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    return-void

    .line 3458
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3459
    .local v3, "o":Lcom/android/server/MountService$ObbState;
    iget-object v5, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3460
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Attempt to add ObbState twice. This indicates an error in the MountService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3469
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "o":Lcom/android/server/MountService$ObbState;
    :catch_48
    move-exception v1

    .line 3474
    .local v1, "e":Landroid/os/RemoteException;
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3475
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 3476
    iget-object v5, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    :cond_57
    throw v1
.end method

.method private addPrivateVolume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 947
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 948
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.secretmode_service"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 950
    .local v0, "ENABLE_PRIVATEMODE":Z
    if-nez v0, :cond_18

    .line 951
    const-string v3, "MountService"

    const-string v4, "This model is not supported privatemode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_17
    return-void

    .line 955
    :cond_18
    const-string v3, "MountService"

    const-string v4, "MountService addPrivateVolume"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v2, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v3, "privatemode"

    invoke-direct {v2, v3, v5, v6, v6}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 958
    .local v2, "private_volume":Landroid/os/storage/VolumeInfo;
    iput v5, v2, Landroid/os/storage/VolumeInfo;->state:I

    .line 959
    iget v3, v2, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 960
    const-string v3, "/storage/Private"

    iput-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 968
    iget-object v3, p0, mVolumes:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public static buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 12
    .param p0, "canonicalPath"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "forVold"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3914
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_8

    .line 3948
    .end local p0    # "canonicalPath":Ljava/lang/String;
    :cond_7
    :goto_7
    return-object p0

    .line 3918
    .restart local p0    # "canonicalPath":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3921
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, p1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3924
    .local v5, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3926
    .local v0, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3929
    .local v1, "legacyExternalPath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 3930
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3938
    :goto_31
    const-string v2, "Android/obb"

    .line 3939
    .local v2, "obbPath":Ljava/lang/String;
    const-string v6, "Android/obb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 3940
    const-string v6, "Android/obb"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3942
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v8}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3943
    .local v3, "ownerEnv":Landroid/os/Environment$UserEnvironment;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 3931
    .end local v2    # "obbPath":Ljava/lang/String;
    .end local v3    # "ownerEnv":Landroid/os/Environment$UserEnvironment;
    :cond_5c
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3932
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_31

    .line 3948
    .restart local v2    # "obbPath":Ljava/lang/String;
    :cond_6d
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_7
.end method

.method private checkExternalSecureContainerMounted()Z
    .registers 8

    .prologue
    .line 2432
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 2433
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 2434
    .local v1, "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v4, v1

    if-ge v0, v4, :cond_56

    .line 2435
    aget-object v3, v1, v0

    .line 2436
    .local v3, "vol":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2437
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Description : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const/4 v4, 0x1

    .line 2441
    .end local v3    # "vol":Landroid/os/storage/StorageVolume;
    :goto_52
    return v4

    .line 2434
    .restart local v3    # "vol":Landroid/os/storage/StorageVolume;
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 2441
    .end local v3    # "vol":Landroid/os/storage/StorageVolume;
    :cond_56
    const/4 v4, 0x0

    goto :goto_52
.end method

.method private checkSystemUid()Z
    .registers 4

    .prologue
    .line 888
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 889
    .local v0, "requester":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 890
    const-string v1, "MountService"

    const-string v2, "Invalid uid. Only SYSTEM can use MountService Call."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v1, 0x0

    .line 893
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method private cleanupSercureContainerList(Ljava/lang/String;)V
    .registers 6
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 2642
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2643
    :try_start_3
    const-string v2, "all"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2644
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 2659
    :cond_10
    monitor-exit v3

    .line 2660
    return-void

    .line 2646
    :cond_12
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2647
    .local v0, "iter":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2648
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2649
    .local v1, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v2, :cond_38

    const-string/jumbo v2, "external"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2650
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 2659
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v2

    .line 2653
    .restart local v0    # "iter":Ljava/util/Iterator;
    .restart local v1    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_38
    :try_start_38
    iget-boolean v2, v1, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-nez v2, :cond_18

    const-string/jumbo v2, "internal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2654
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_35

    goto :goto_18
.end method

.method private copyLocaleFromMountService()V
    .registers 8

    .prologue
    .line 1117
    :try_start_0
    const-string v4, "SystemLocale"

    invoke-virtual {p0, v4}, getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d

    move-result-object v3

    .line 1121
    .local v3, "systemLocale":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1138
    .end local v3    # "systemLocale":Ljava/lang/String;
    :goto_c
    return-void

    .line 1118
    :catch_d
    move-exception v1

    .line 1119
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_c

    .line 1125
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "systemLocale":Ljava/lang/String;
    :cond_f
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 1127
    .local v2, "locale":Ljava/util/Locale;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1128
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1130
    :try_start_39
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_69

    .line 1136
    :goto_40
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string/jumbo v4, "persist.sys.locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1131
    :catch_69
    move-exception v1

    .line 1132
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v4, "MountService"

    const-string v5, "Error setting system locale from mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method private enforceAdminUser()V
    .registers 8

    .prologue
    .line 1617
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 1618
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1620
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1622
    .local v2, "token":J
    :try_start_13
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_28

    move-result v1

    .line 1624
    .local v1, "isAdmin":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1626
    if-nez v1, :cond_2d

    .line 1627
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1624
    .end local v1    # "isAdmin":Z
    :catchall_28
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1629
    .restart local v1    # "isAdmin":Z
    :cond_2d
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 1542
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    return-void
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 5
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 443
    :try_start_3
    iget-object v1, p0, mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 444
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v0, :cond_18

    .line 445
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 446
    .restart local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_18
    monitor-exit v2

    return-object v0

    .line 449
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 384
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 385
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_2c

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 386
    iget-object v2, p0, mRecords:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    monitor-exit v3

    .line 390
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_2b
    return-object v2

    .line 383
    .restart local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 389
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2f
    monitor-exit v3

    .line 390
    const/4 v2, 0x0

    goto :goto_2b

    .line 389
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v2
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 408
    .local v0, "storage":Landroid/os/storage/StorageManager;
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 409
    const-string/jumbo v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 413
    :goto_19
    return-object v1

    .line 410
    :cond_1a
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 411
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    goto :goto_19

    .line 413
    :cond_28
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    goto :goto_19
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 361
    :try_start_3
    iget-object v1, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 362
    .local v0, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_f

    .line 363
    monitor-exit v2

    return-object v0

    .line 365
    :cond_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_29

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No volume found for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    .end local v0    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 372
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 373
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 374
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    monitor-exit v3

    return-object v2

    .line 371
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 377
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_41

    .line 378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No volume found for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2
.end method

.method private forgetPartition(Ljava/lang/String;)V
    .registers 8
    .param p1, "partGuid"    # Ljava/lang/String;

    .prologue
    .line 2285
    :try_start_0
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "forget_partition"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_14} :catch_15

    .line 2289
    :goto_14
    return-void

    .line 2286
    :catch_15
    move-exception v0

    .line 2287
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to forget key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1724
    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1725
    const-string/jumbo v0, "primary_physical"

    .line 1727
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    goto :goto_d
.end method

.method private handleDaemonConnected()V
    .registers 5

    .prologue
    .line 1087
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1088
    :try_start_3
    invoke-direct {p0}, resetIfReadyAndConnectedLocked()V

    .line 1089
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_19

    .line 1095
    iget-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1096
    iget-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 1112
    :goto_18
    return-void

    .line 1089
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0

    .line 1103
    :cond_1c
    const-string v0, ""

    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1104
    invoke-direct {p0}, copyLocaleFromMountService()V

    .line 1108
    :cond_2e
    iget-object v0, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1111
    iget-object v0, p0, mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_18
.end method

.method private handleSystemReady()V
    .registers 3

    .prologue
    .line 906
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 907
    :try_start_3
    invoke-direct {p0}, resetIfReadyAndConnectedLocked()V

    .line 908
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_d

    .line 911
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 912
    return-void

    .line 908
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method private hasDeviceRestriction(Ljava/lang/String;)Z
    .registers 11
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4664
    const-string/jumbo v6, "usbhost_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 4665
    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v7, "isUsbHostStorageAllowed"

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v8, "true"

    aput-object v8, v5, v4

    invoke-direct {p0, p1, v6, v7, v5}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 4699
    :cond_1c
    :goto_1c
    return v4

    .line 4666
    :cond_1d
    const-string/jumbo v6, "sdcard_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 4667
    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v5, "isSdCardEnabled"

    invoke-direct {p0, p1, v4, v5, v8}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto :goto_1c

    .line 4668
    :cond_30
    if-eqz p1, :cond_92

    const-string/jumbo v6, "storage_itpolicy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 4669
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 4670
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    if-nez v2, :cond_51

    .line 4671
    const-string v5, "MountService"

    const-string/jumbo v6, "hasDeviceRestriction: DevicePolicyManager is NULL"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 4674
    :cond_51
    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v0

    .line 4675
    .local v0, "check":Z
    if-nez v0, :cond_75

    const-string/jumbo v6, "storage_itpolicy_ui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 4676
    const-string v6, "MountService"

    const-string v7, "Send ACTION_SDCARD_ITPOLICY_TOAST_EVENT INTENT!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4678
    .local v3, "toastintent":Landroid/content/Intent;
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4680
    .end local v3    # "toastintent":Landroid/content/Intent;
    :cond_75
    if-nez v0, :cond_1c

    .line 4681
    const-string v4, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "policy has restriction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 4682
    goto :goto_1c

    .line 4685
    .end local v0    # "check":Z
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    :cond_92
    const-string/jumbo v6, "storage_kor_mdm"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 4687
    const-string/jumbo v6, "persist.sys.microsd_lock"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4688
    .local v1, "externalstorage_lock_state":Ljava/lang/String;
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "externalstorage_lock_state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    const-string/jumbo v6, "microsd_lock.enabled"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move v4, v5

    .line 4690
    goto/16 :goto_1c

    .line 4692
    .end local v1    # "externalstorage_lock_state":Ljava/lang/String;
    :cond_c7
    const-string/jumbo v6, "mass_storage"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 4693
    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v7, "isUsbMassStorageEnabled"

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v8, "true"

    aput-object v8, v5, v4

    invoke-direct {p0, p1, v6, v7, v5}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1c

    .line 4694
    :cond_e2
    const-string/jumbo v5, "readonly_storage"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 4695
    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v5, "isSDCardWriteAllowed"

    invoke-direct {p0, p1, v4, v5, v8}, hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1c

    .line 4697
    :cond_f6
    const-string v5, "MountService"

    const-string/jumbo v6, "not define policy !!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c
.end method

.method private hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 14
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 4632
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4634
    .local v1, "uri":Landroid/net/Uri;
    :try_start_4
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4635
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_53

    .line 4636
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4637
    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4638
    .local v8, "restrict":Ljava/lang/String;
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", restrict(allow) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    const-string/jumbo v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 4640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4641
    const/4 v0, 0x1

    .line 4651
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :goto_4f
    return v0

    .line 4643
    .restart local v6    # "cr":Landroid/database/Cursor;
    .restart local v8    # "restrict":Ljava/lang/String;
    :cond_50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_53} :catch_55

    .line 4651
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :cond_53
    :goto_53
    const/4 v0, 0x0

    goto :goto_4f

    .line 4647
    :catch_55
    move-exception v7

    .line 4648
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v0, 0x0

    .line 1423
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 1444
    :goto_8
    return v0

    .line 1432
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    :pswitch_10
    goto :goto_8

    .line 1444
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_8

    .line 1423
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 1432
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private isDeviceEncrypting()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4432
    const-string/jumbo v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4433
    .local v0, "encrypt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4440
    :cond_e
    :goto_e
    return v1

    .line 4436
    :cond_f
    const-string/jumbo v2, "error_not_encrypted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 4440
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private isExternalSecureContainer(Ljava/lang/String;)Z
    .registers 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2664
    const/4 v0, 0x0

    .line 2665
    .local v0, "isExt":Z
    iget-object v4, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 2666
    :try_start_4
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2667
    .local v1, "iter":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2668
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2669
    .local v2, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-object v3, v2, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2670
    iget-boolean v0, v2, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    .line 2674
    .end local v2    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    :cond_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_45

    .line 2675
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExternalSecureContainer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    return v0

    .line 2674
    .end local v1    # "iter":Ljava/util/Iterator;
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v3
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 14
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1550
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMountDisallowed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const-string/jumbo v9, "ro.crypto.state"

    const-string/jumbo v10, "fail"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1554
    .local v1, "encrypt_state":Ljava/lang/String;
    const-string/jumbo v0, "null"

    .line 1555
    .local v0, "decrypt_state":Ljava/lang/String;
    const-string/jumbo v9, "encrypted"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 1556
    const-string/jumbo v9, "vold.decrypt"

    const-string/jumbo v10, "fail"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1557
    const-string/jumbo v9, "trigger_restart_framework"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 1558
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!!Skip!!! mount request : encrypt_state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", decrypt_state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "to protect sdcardfs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :goto_6d
    return v7

    .line 1564
    :cond_6e
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_77

    move v7, v8

    .line 1565
    goto :goto_6d

    .line 1568
    :cond_77
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1570
    .local v4, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v4, :cond_c0

    .line 1571
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    .line 1572
    .local v5, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v5, :cond_a4

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v9

    if-nez v9, :cond_a4

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_a4

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 1573
    const-string v8, "MountService"

    const-string v9, "SDcard is restricted in MDM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 1575
    :cond_a4
    if-eqz v5, :cond_c0

    invoke-virtual {v5, v7}, Landroid/app/enterprise/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result v9

    if-nez v9, :cond_c0

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_c0

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 1576
    const-string v8, "MountService"

    const-string v9, "USB MEMORY is restricted in MDM"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 1583
    .end local v5    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_c0
    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_eb

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v9

    if-eqz v9, :cond_eb

    move v2, v7

    .line 1584
    .local v2, "isSdCard":Z
    :goto_cd
    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v9, :cond_ed

    iget-object v9, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v9

    if-eqz v9, :cond_ed

    move v3, v7

    .line 1586
    .local v3, "isUsbHost":Z
    :goto_da
    const-string/jumbo v9, "storage_kor_mdm"

    invoke-direct {p0, v9}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ef

    .line 1587
    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'storage_kor_mdm\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .end local v2    # "isSdCard":Z
    .end local v3    # "isUsbHost":Z
    :cond_eb
    move v2, v8

    .line 1583
    goto :goto_cd

    .restart local v2    # "isSdCard":Z
    :cond_ed
    move v3, v8

    .line 1584
    goto :goto_da

    .line 1591
    .restart local v3    # "isUsbHost":Z
    :cond_ef
    if-eqz v2, :cond_103

    const-string/jumbo v9, "sdcard_storage"

    invoke-direct {p0, v9}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_103

    .line 1592
    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'sdcard\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    .line 1596
    :cond_103
    if-eqz v3, :cond_117

    const-string/jumbo v9, "usbhost_storage"

    invoke-direct {p0, v9}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 1597
    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'usbhost_storage\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    .line 1601
    :cond_117
    const-string/jumbo v9, "storage_itpolicy_ui"

    invoke-direct {p0, v9}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_129

    .line 1602
    const-string v8, "MountService"

    const-string v9, "Policy has restriction \'storage_itpolicy_ui\'; cannot mount volume."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6d

    .line 1607
    :cond_129
    iget v9, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v9, :cond_131

    iget v9, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v9, v7, :cond_148

    .line 1608
    :cond_131
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 1609
    .local v6, "userManager":Landroid/os/UserManager;
    const-string/jumbo v7, "no_physical_media"

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    goto/16 :goto_6d

    .end local v6    # "userManager":Landroid/os/UserManager;
    :cond_148
    move v7, v8

    .line 1612
    goto/16 :goto_6d
.end method

.method private isReady()Z
    .registers 6

    .prologue
    .line 899
    :try_start_0
    iget-object v1, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 901
    :goto_a
    return v1

    .line 900
    :catch_b
    move-exception v0

    .line 901
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2835
    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    .line 2850
    :cond_6
    :goto_6
    return v1

    .line 2839
    :cond_7
    if-nez p1, :cond_b

    move v1, v2

    .line 2840
    goto :goto_6

    .line 2843
    :cond_b
    iget-object v3, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 2846
    .local v0, "packageUid":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callerUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    if-eq p2, v0, :cond_6

    move v1, v2

    goto :goto_6
.end method

.method private killMediaProvider()V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 922
    .local v2, "token":J
    :try_start_4
    iget-object v4, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v5, "media"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 924
    .local v1, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_27

    .line 925
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_2b

    move-result-object v0

    .line 927
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_15
    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const-string/jumbo v6, "vold reset"

    invoke-interface {v0, v4, v5, v6}, Landroid/app/IActivityManager;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_27} :catch_30
    .catchall {:try_start_15 .. :try_end_27} :catchall_2b

    .line 933
    .end local v0    # "am":Landroid/app/IActivityManager;
    :cond_27
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    return-void

    .line 933
    .end local v1    # "provider":Landroid/content/pm/ProviderInfo;
    :catchall_2b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 929
    .restart local v0    # "am":Landroid/app/IActivityManager;
    .restart local v1    # "provider":Landroid/content/pm/ProviderInfo;
    :catch_30
    move-exception v4

    goto :goto_27
.end method

.method private logEncryptionState()V
    .registers 10

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 3017
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 3019
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 3021
    .local v6, "userId":I
    if-nez v7, :cond_30

    const/4 v8, -0x1

    .line 3023
    .local v8, "encryptionStatus":I
    :goto_14
    const/4 v2, 0x3

    if-eq v8, v2, :cond_1d

    const/4 v2, 0x2

    if-eq v8, v2, :cond_1d

    const/4 v2, 0x4

    if-ne v8, v2, :cond_35

    .line 3026
    :cond_1d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage encryption is active."

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3034
    :goto_2f
    return-void

    .line 3021
    .end local v8    # "encryptionStatus":I
    :cond_30
    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v8

    goto :goto_14

    .line 3030
    .restart local v8    # "encryptionStatus":I
    :cond_35
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage encryption is inactive."

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2f
.end method

.method private onCleanupUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 1031
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCleanupUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :try_start_19
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "volume"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "user_stopped"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_19 .. :try_end_31} :catch_41

    .line 1038
    :goto_31
    iget-object v1, p0, mVolumes:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1039
    :try_start_34
    iget-object v0, p0, mStartedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, mStartedUsers:[I

    .line 1040
    monitor-exit v1

    .line 1041
    return-void

    .line 1040
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_3e

    throw v0

    .line 1035
    :catch_41
    move-exception v0

    goto :goto_31
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 9
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 1354
    const/4 v4, 0x0

    .line 1355
    .local v4, "volumeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_23

    .line 1356
    iget-object v5, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1357
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1358
    add-int/lit8 v4, v4, 0x1

    .line 1355
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1362
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1364
    const-string v5, "android.os.storage.extra.DISK_ID"

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    const-string v5, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1366
    iget-object v5, p0, mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1368
    iget-object v5, p0, mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    .line 1369
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_54

    .line 1370
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1373
    :cond_54
    iput v4, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 1374
    iget-object v5, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    invoke-static {v5, p1, v4}, Lcom/android/server/MountService$Callbacks;->access$1800(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    .line 1375
    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 43
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .local v5, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v36, "onEvent::"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " raw= "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    if-eqz p3, :cond_60

    .line 1164
    const-string v36, " cooked = "

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_39
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_60

    aget-object v31, v4, v19

    .line 1166
    .local v31, "str":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    add-int/lit8 v19, v19, 0x1

    goto :goto_39

    .line 1169
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v31    # "str":Ljava/lang/String;
    :cond_60
    const-string v36, "MountService"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    packed-switch p1, :pswitch_data_49e

    .line 1346
    :pswitch_6c
    const-string v36, "MountService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unhandled vold event "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_88
    :goto_88
    const/16 v36, 0x1

    return v36

    .line 1173
    :pswitch_8b
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1174
    const/16 v36, 0x1

    aget-object v20, p3, v36

    .line 1175
    .local v20, "id":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1176
    .local v17, "flags":I
    const-string/jumbo v36, "persist.fw.force_adoptable"

    const/16 v37, 0x0

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    if-nez v36, :cond_b7

    move-object/from16 v0, p0

    iget-boolean v0, v0, mForceAdoptable:Z

    move/from16 v36, v0

    if-eqz v36, :cond_b9

    .line 1178
    :cond_b7
    or-int/lit8 v17, v17, 0x1

    .line 1180
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    new-instance v37, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_88

    .line 1184
    .end local v17    # "flags":I
    .end local v20    # "id":Ljava/lang/String;
    :pswitch_d4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 1186
    .local v12, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_88

    .line 1187
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    move-wide/from16 v0, v36

    iput-wide v0, v12, Landroid/os/storage/DiskInfo;->size:J

    goto :goto_88

    .line 1192
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_100
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 1193
    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_88

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1195
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    const/16 v18, 0x2

    .local v18, "i":I
    :goto_119
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_134

    .line 1196
    aget-object v36, p3, v18

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x20

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1195
    add-int/lit8 v18, v18, 0x1

    goto :goto_119

    .line 1198
    :cond_134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    iput-object v0, v12, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    goto/16 :goto_88

    .line 1203
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    .end local v18    # "i":I
    :pswitch_142
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 1205
    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_88

    .line 1206
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_88

    .line 1211
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_168
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 1213
    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_88

    .line 1214
    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    iput-object v0, v12, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    goto/16 :goto_88

    .line 1219
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_191
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 1221
    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    if-eqz v12, :cond_88

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    invoke-static {v0, v12}, Lcom/android/server/MountService$Callbacks;->access$1700(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_88

    .line 1228
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    :pswitch_1bd
    const/16 v36, 0x1

    aget-object v20, p3, v36

    .line 1229
    .restart local v20    # "id":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 1230
    .local v34, "type":I
    const/16 v36, 0x3

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1231
    .local v13, "diskId":Ljava/lang/String;
    const/16 v36, 0x4

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1233
    .local v25, "partGuid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/DiskInfo;

    .line 1234
    .restart local v12    # "disk":Landroid/os/storage/DiskInfo;
    new-instance v35, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    move/from16 v2, v34

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v12, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1235
    .local v35, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_88

    .line 1240
    .end local v12    # "disk":Landroid/os/storage/DiskInfo;
    .end local v13    # "diskId":Ljava/lang/String;
    .end local v20    # "id":Ljava/lang/String;
    .end local v25    # "partGuid":Ljava/lang/String;
    .end local v34    # "type":I
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_20c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .line 1242
    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_88

    .line 1243
    move-object/from16 v0, v35

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    move/from16 v24, v0

    .line 1244
    .local v24, "oldState":I
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1245
    .local v23, "newState":I
    move/from16 v0, v23

    move-object/from16 v1, v35

    iput v0, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1246
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    goto/16 :goto_88

    .line 1251
    .end local v23    # "newState":I
    .end local v24    # "oldState":I
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_24c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .line 1253
    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_88

    .line 1254
    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto/16 :goto_88

    .line 1259
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_277
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .line 1261
    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_88

    .line 1262
    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto/16 :goto_88

    .line 1267
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .line 1268
    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_88

    .line 1269
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1270
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    const/16 v18, 0x2

    .restart local v18    # "i":I
    :goto_2bb
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_2d6

    .line 1271
    aget-object v36, p3, v18

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x20

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1270
    add-int/lit8 v18, v18, 0x1

    goto :goto_2bb

    .line 1273
    :cond_2d6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto/16 :goto_88

    .line 1279
    .end local v18    # "i":I
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_2e6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .line 1281
    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_88

    .line 1282
    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    goto/16 :goto_88

    .line 1287
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_311
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/storage/VolumeInfo;

    .line 1289
    .restart local v35    # "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v35, :cond_88

    .line 1290
    const/16 v36, 0x2

    aget-object v36, p3, v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    goto/16 :goto_88

    .line 1295
    .end local v35    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_33c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v37, p3, v37

    invoke-virtual/range {v36 .. v37}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_88

    .line 1301
    :pswitch_358
    const/16 v36, 0x1

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1302
    .local v30, "status":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, onMoveStatusLocked(I)V

    goto/16 :goto_88

    .line 1306
    .end local v30    # "status":I
    :pswitch_369
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x7

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1307
    const/16 v36, 0x1

    aget-object v26, p3, v36

    .line 1308
    .local v26, "path":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v21, p3, v36

    .line 1309
    .local v21, "ident":Ljava/lang/String;
    const/16 v36, 0x3

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1310
    .local v8, "create":J
    const/16 v36, 0x4

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1311
    .local v14, "drop":J
    const/16 v36, 0x5

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 1312
    .local v28, "run":J
    const/16 v36, 0x6

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1314
    .local v10, "destroy":J
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-class v37, Landroid/os/DropBoxManager;

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/DropBoxManager;

    .line 1315
    .local v16, "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v36, "storage_benchmark"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v27

    .line 1319
    .local v27, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v27, :cond_88

    .line 1320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-wide/from16 v0, v36

    move-object/from16 v2, v27

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1321
    invoke-direct/range {p0 .. p0}, writeSettingsLocked()V

    goto/16 :goto_88

    .line 1327
    .end local v8    # "create":J
    .end local v10    # "destroy":J
    .end local v14    # "drop":J
    .end local v16    # "dropBox":Landroid/os/DropBoxManager;
    .end local v21    # "ident":Ljava/lang/String;
    .end local v26    # "path":Ljava/lang/String;
    .end local v27    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v28    # "run":J
    :pswitch_41a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_88

    .line 1328
    const/16 v36, 0x1

    aget-object v26, p3, v36

    .line 1329
    .restart local v26    # "path":Ljava/lang/String;
    const/16 v36, 0x2

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1330
    .local v6, "bytes":J
    const/16 v36, 0x3

    aget-object v36, p3, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 1332
    .local v32, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    const-class v37, Landroid/os/DropBoxManager;

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/DropBoxManager;

    .line 1333
    .restart local v16    # "dropBox":Landroid/os/DropBoxManager;
    const-string/jumbo v36, "storage_trim"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v27

    .line 1337
    .restart local v27    # "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v27, :cond_88

    .line 1338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move-wide/from16 v0, v36

    move-object/from16 v2, v27

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1339
    invoke-direct/range {p0 .. p0}, writeSettingsLocked()V

    goto/16 :goto_88

    .line 1171
    nop

    :pswitch_data_49e
    .packed-switch 0x280
        :pswitch_8b
        :pswitch_d4
        :pswitch_100
        :pswitch_142
        :pswitch_168
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_191
        :pswitch_1bd
        :pswitch_20c
        :pswitch_24c
        :pswitch_277
        :pswitch_2a2
        :pswitch_2e6
        :pswitch_311
        :pswitch_6c
        :pswitch_6c
        :pswitch_33c
        :pswitch_358
        :pswitch_369
        :pswitch_41a
    .end packed-switch
.end method

.method private onMoveStatusLocked(I)V
    .registers 7
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 1513
    iget-object v0, p0, mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v0, :cond_d

    .line 1514
    const-string v0, "MountService"

    const-string v1, "Odd, status but no move requested"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_c
    :goto_c
    return-void

    .line 1520
    :cond_d
    :try_start_d
    iget-object v0, p0, mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_6f

    .line 1526
    :goto_15
    const/16 v0, 0x52

    if-ne p1, v0, :cond_40

    .line 1527
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " copy phase finshed; persisting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, p0, mMoveTargetUuid:Ljava/lang/String;

    iput-object v0, p0, mPrimaryStorageUuid:Ljava/lang/String;

    .line 1530
    invoke-direct {p0}, writeSettingsLocked()V

    .line 1533
    :cond_40
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1534
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finished with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iput-object v4, p0, mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 1537
    iput-object v4, p0, mMoveTargetUuid:Ljava/lang/String;

    goto :goto_c

    .line 1521
    :catch_6f
    move-exception v0

    goto :goto_15
.end method

.method private onStartUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 1003
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStartUser "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :try_start_19
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "user_started"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_31
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_19 .. :try_end_31} :catch_83

    .line 1015
    :goto_31
    iget-object v5, p0, mVolumes:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1016
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    :try_start_35
    iget-object v4, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_76

    .line 1017
    iget-object v4, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 1018
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1019
    iget-object v4, p0, mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, p1, v6}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 1020
    .local v2, "userVol":Landroid/os/storage/StorageVolume;
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1022
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    invoke-static {v4}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "envState":Ljava/lang/String;
    iget-object v4, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v6, v0, v0}, Lcom/android/server/MountService$Callbacks;->access$1600(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .end local v0    # "envState":Ljava/lang/String;
    .end local v2    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 1026
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_76
    iget-object v4, p0, mStartedUsers:[I

    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    iput-object v4, p0, mStartedUsers:[I

    .line 1027
    monitor-exit v5

    .line 1028
    return-void

    .line 1027
    :catchall_80
    move-exception v4

    monitor-exit v5
    :try_end_82
    .catchall {:try_start_35 .. :try_end_82} :catchall_80

    throw v4

    .line 1010
    .end local v1    # "i":I
    :catch_83
    move-exception v4

    goto :goto_31
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v5, 0x5

    .line 1378
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8f

    .line 1379
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 1380
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1382
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v3, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string/jumbo v2, "private"

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1384
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found primary storage#1 at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1386
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1387
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1420
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_56
    :goto_56
    return-void

    .line 1389
    .restart local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .restart local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_57
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v3, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1390
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found primary storage#2 at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1392
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1393
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_56

    .line 1396
    .end local v0    # "privateVol":Landroid/os/storage/VolumeInfo;
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_8f
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_f6

    .line 1398
    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 1400
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found primary storage#3 at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1402
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1407
    :cond_ca
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-nez v2, :cond_e2

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-nez v2, :cond_e2

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 1408
    :cond_e2
    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 1411
    :cond_e8
    const/4 v2, 0x0

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 1412
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_56

    .line 1414
    :cond_f6
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_106

    .line 1415
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_56

    .line 1418
    :cond_106
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping automatic mounting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 21
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 1450
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v13

    if-eqz v13, :cond_56

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_56

    .line 1451
    move-object/from16 v0, p0

    iget-object v13, v0, mRecords:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/VolumeRecord;

    .line 1452
    .local v10, "rec":Landroid/os/storage/VolumeRecord;
    if-nez v10, :cond_10e

    .line 1453
    new-instance v10, Landroid/os/storage/VolumeRecord;

    .end local v10    # "rec":Landroid/os/storage/VolumeRecord;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/storage/VolumeInfo;->type:I

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v10, v13, v14}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1454
    .restart local v10    # "rec":Landroid/os/storage/VolumeRecord;
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v13, v10, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v10, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1456
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4a

    .line 1457
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v13}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1459
    :cond_4a
    move-object/from16 v0, p0

    iget-object v13, v0, mRecords:Landroid/util/ArrayMap;

    iget-object v14, v10, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v13, v14, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-direct/range {p0 .. p0}, writeSettingsLocked()V

    .line 1470
    .end local v10    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget-object v13, v0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    invoke-static {v13, v0, v1, v2}, Lcom/android/server/MountService$Callbacks;->access$1900(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    .line 1472
    invoke-direct/range {p0 .. p1}, isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v13

    if-eqz v13, :cond_9a

    .line 1473
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "android.os.storage.extra.VOLUME_ID"

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    const-string v13, "android.os.storage.extra.VOLUME_STATE"

    move/from16 v0, p3

    invoke-virtual {v6, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1476
    const-string v13, "android.os.storage.extra.FS_UUID"

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    const/high16 v13, 0x4000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1478
    move-object/from16 v0, p0

    iget-object v13, v0, mHandler:Landroid/os/Handler;

    const/4 v14, 0x7

    invoke-virtual {v13, v14, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1481
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_9a
    invoke-static/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v9

    .line 1482
    .local v9, "oldStateEnv":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v8

    .line 1484
    .local v8, "newStateEnv":Ljava/lang/String;
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onVolumeStateChangedLocked:: volInfo = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",old = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",new = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-static {v9, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_121

    .line 1489
    move-object/from16 v0, p0

    iget-object v4, v0, mStartedUsers:[I

    .local v4, "arr$":[I
    array-length v7, v4

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_dd
    if-ge v5, v7, :cond_121

    aget v11, v4, v5

    .line 1490
    .local v11, "userId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v13

    if-eqz v13, :cond_10b

    .line 1491
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v14}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v12

    .line 1492
    .local v12, "userVol":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v13, v0, mHandler:Landroid/os/Handler;

    const/4 v14, 0x6

    invoke-virtual {v13, v14, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1494
    move-object/from16 v0, p0

    iget-object v13, v0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v9, v8}, Lcom/android/server/MountService$Callbacks;->access$1600(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .end local v12    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_10b
    add-int/lit8 v5, v5, 0x1

    goto :goto_dd

    .line 1463
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "newStateEnv":Ljava/lang/String;
    .end local v9    # "oldStateEnv":Ljava/lang/String;
    .end local v11    # "userId":I
    .restart local v10    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_10e
    iget-object v13, v10, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_56

    .line 1464
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v13, v10, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1465
    invoke-direct/range {p0 .. p0}, writeSettingsLocked()V

    goto/16 :goto_56

    .line 1500
    .end local v10    # "rec":Landroid/os/storage/VolumeRecord;
    .restart local v8    # "newStateEnv":Ljava/lang/String;
    .restart local v9    # "oldStateEnv":Ljava/lang/String;
    :cond_121
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v13, :cond_144

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_144

    .line 1507
    move-object/from16 v0, p0

    iget-object v13, v0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v15, 0x5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1510
    :cond_144
    return-void
.end method

.method private policycheckForSKMM()V
    .registers 6

    .prologue
    .line 4411
    const-string/jumbo v3, "security.ode.trustedboot"

    invoke-virtual {p0, v3}, getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4412
    .local v1, "TRUSTEDBOOT_PROPERTY":Ljava/lang/String;
    invoke-virtual {p0}, getCCmodeForCryptKeeper()I

    move-result v2

    .line 4413
    .local v2, "getCCmode":I
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 4414
    const-string/jumbo v3, "security.mdm.trustedboot"

    invoke-virtual {p0, v3}, getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4415
    .local v0, "MDM_PROPERTY":Ljava/lang/String;
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    if-eqz v2, :cond_2e

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 4417
    :cond_2e
    const-string/jumbo v3, "security.ode.update"

    const/high16 v4, 0x40000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4418
    const-string/jumbo v3, "security.ode.trustedboot"

    const-string v4, "On"

    invoke-virtual {p0, v3, v4}, setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    :cond_42
    :goto_42
    const-string/jumbo v3, "security.ode.policycheck"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4426
    .end local v0    # "MDM_PROPERTY":Ljava/lang/String;
    :cond_48
    return-void

    .line 4419
    .restart local v0    # "MDM_PROPERTY":Ljava/lang/String;
    :cond_49
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    if-eqz v2, :cond_42

    const-string/jumbo v3, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 4421
    const-string/jumbo v3, "security.ode.update"

    const/high16 v4, 0x80000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    const-string/jumbo v3, "security.ode.trustedboot"

    const-string/jumbo v4, "false"

    invoke-virtual {p0, v3, v4}, setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private readSettingsLocked()V
    .registers 16

    .prologue
    const/4 v14, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1732
    iget-object v11, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 1733
    invoke-direct {p0}, getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, mPrimaryStorageUuid:Ljava/lang/String;

    .line 1734
    iput-boolean v9, p0, mForceAdoptable:Z

    .line 1736
    const/4 v1, 0x0

    .line 1738
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_11
    iget-object v11, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1739
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readSettingsLocked() "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1741
    .local v2, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1744
    :cond_47
    :goto_47
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v10, :cond_d8

    .line 1745
    if-ne v6, v14, :cond_47

    .line 1746
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1747
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v11, "volumes"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_91

    .line 1748
    const-string/jumbo v11, "version"

    const/4 v12, 0x1

    invoke-static {v2, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1749
    .local v8, "version":I
    const-string/jumbo v11, "ro.vold.primary_physical"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1751
    .local v3, "primaryPhysical":Z
    const/4 v11, 0x3

    if-ge v8, v11, :cond_73

    if-lt v8, v14, :cond_8f

    if-nez v3, :cond_8f

    :cond_73
    move v7, v10

    .line 1753
    .local v7, "validAttr":Z
    :goto_74
    if-eqz v7, :cond_7f

    .line 1754
    const-string/jumbo v11, "primaryStorageUuid"

    invoke-static {v2, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, mPrimaryStorageUuid:Ljava/lang/String;

    .line 1758
    :cond_7f
    const-string/jumbo v11, "forceAdoptable"

    const/4 v12, 0x0

    invoke-static {v2, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, mForceAdoptable:Z
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_89} :catch_8a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_89} :catch_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_89} :catch_dc
    .catchall {:try_start_11 .. :try_end_89} :catchall_e8

    goto :goto_47

    .line 1769
    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "primaryPhysical":Z
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "validAttr":Z
    .end local v8    # "version":I
    :catch_8a
    move-exception v9

    .line 1776
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1778
    :goto_8e
    return-void

    .restart local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "primaryPhysical":Z
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v8    # "version":I
    :cond_8f
    move v7, v9

    .line 1751
    goto :goto_74

    .line 1761
    .end local v3    # "primaryPhysical":Z
    .end local v8    # "version":I
    :cond_91
    :try_start_91
    const-string/jumbo v11, "volume"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 1762
    invoke-static {v2}, readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 1763
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v11, p0, mRecords:Landroid/util/ArrayMap;

    iget-object v12, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v11, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "readSettingsLocked() TAG_VOLUME rec "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ,rec.fsUuid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_ca} :catch_8a
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_ca} :catch_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_ca} :catch_dc
    .catchall {:try_start_91 .. :try_end_ca} :catchall_e8

    goto/16 :goto_47

    .line 1771
    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_cc
    move-exception v0

    .line 1772
    .local v0, "e":Ljava/io/IOException;
    :try_start_cd
    const-string v9, "MountService"

    const-string v10, "Failed reading metadata"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_e8

    .line 1776
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_8e

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_d8
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_8e

    .line 1773
    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_dc
    move-exception v0

    .line 1774
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_dd
    const-string v9, "MountService"

    const-string v10, "Failed reading metadata"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_e8

    .line 1776
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_8e

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_e8
    move-exception v9

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1810
    const-string/jumbo v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 1811
    .local v2, "type":I
    const-string/jumbo v3, "fsUuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    .local v0, "fsUuid":Ljava/lang/String;
    new-instance v1, Landroid/os/storage/VolumeRecord;

    invoke-direct {v1, v2, v0}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 1813
    .local v1, "meta":Landroid/os/storage/VolumeRecord;
    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 1814
    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 1815
    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 1816
    const-string/jumbo v3, "createdMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 1817
    const-string/jumbo v3, "lastTrimMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 1818
    const-string/jumbo v3, "lastBenchMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1819
    return-object v1
.end method

.method private registerDeviceRestriction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4619
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4621
    return-void
.end method

.method private remountUidExternalStorage(II)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "mode"    # I

    .prologue
    .line 2292
    invoke-direct {p0}, waitForReady()V

    .line 2294
    const-string/jumbo v1, "none"

    .line 2295
    .local v1, "modeName":Ljava/lang/String;
    packed-switch p2, :pswitch_data_60

    .line 2310
    :goto_9
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "remount_uid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_31

    .line 2314
    :goto_24
    return-void

    .line 2297
    :pswitch_25
    const-string/jumbo v1, "default"

    .line 2298
    goto :goto_9

    .line 2301
    :pswitch_29
    const-string/jumbo v1, "read"

    .line 2302
    goto :goto_9

    .line 2305
    :pswitch_2d
    const-string/jumbo v1, "write"

    goto :goto_9

    .line 2311
    :catch_31
    move-exception v0

    .line 2312
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remount UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 2295
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method private removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    .registers 6
    .param p1, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3487
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3488
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3489
    .local v1, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    if-eqz v1, :cond_22

    .line 3490
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3491
    invoke-virtual {p1}, Lcom/android/server/MountService$ObbState;->unlink()V

    .line 3493
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3494
    iget-object v2, p0, mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    :cond_22
    iget-object v2, p0, mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    return-void
.end method

.method private resetIfReadyAndConnectedLocked()V
    .registers 14

    .prologue
    .line 972
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thinking about reset, mSystemReady="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, mSystemReady:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDaemonConnected="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, mDaemonConnected:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-boolean v8, p0, mSystemReady:Z

    if-eqz v8, :cond_9c

    iget-boolean v8, p0, mDaemonConnected:Z

    if-eqz v8, :cond_9c

    .line 975
    invoke-direct {p0}, killMediaProvider()V

    .line 977
    iget-object v8, p0, mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 978
    iget-object v8, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 980
    invoke-direct {p0}, addInternalVolume()V

    .line 982
    invoke-direct {p0}, addPrivateVolume()V

    .line 985
    :try_start_41
    iget-object v8, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "volume"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "reset"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 988
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-class v9, Landroid/os/UserManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 989
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 990
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 991
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "volume"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "user_added"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget v12, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_93
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_41 .. :try_end_93} :catch_94

    goto :goto_64

    .line 996
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_94
    move-exception v1

    .line 997
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v8, "MountService"

    const-string v9, "Failed to reset vold"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_9c
    return-void

    .line 993
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "um":Landroid/os/UserManager;
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9d
    :try_start_9d
    iget-object v0, p0, mStartedUsers:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a1
    if-ge v2, v3, :cond_9c

    aget v6, v0, v2

    .line 994
    .local v6, "userId":I
    iget-object v8, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "volume"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "user_started"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_bd
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9d .. :try_end_bd} :catch_94

    .line 993
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 395
    const-string/jumbo v1, "internal"

    .line 401
    :goto_11
    return-object v1

    .line 397
    :cond_12
    invoke-direct {p0, p1}, findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    .line 398
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_20

    iget-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_24

    .line 399
    :cond_20
    const-string/jumbo v1, "unknown"

    goto :goto_11

    .line 401
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method private shouldBenchmark()Z
    .registers 15

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 418
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "storage_benchmark_interval"

    const-wide/32 v12, 0x240c8400

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 420
    .local v2, "benchInterval":J
    const-wide/16 v10, -0x1

    cmp-long v9, v2, v10

    if-nez v9, :cond_19

    .line 437
    :goto_18
    return v7

    .line 422
    :cond_19
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-nez v9, :cond_21

    move v7, v8

    .line 423
    goto :goto_18

    .line 426
    :cond_21
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 427
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    :try_start_25
    iget-object v10, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v4, v10, :cond_59

    .line 428
    iget-object v10, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 429
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v10, p0, mRecords:Landroid/util/ArrayMap;

    iget-object v11, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 430
    .local v5, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v10

    if-eqz v10, :cond_56

    if-eqz v5, :cond_56

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    sub-long v0, v10, v12

    .line 432
    .local v0, "benchAge":J
    cmp-long v10, v0, v2

    if-ltz v10, :cond_56

    .line 433
    monitor-exit v9

    move v7, v8

    goto :goto_18

    .line 427
    .end local v0    # "benchAge":J
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 437
    .end local v5    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_59
    monitor-exit v9

    goto :goto_18

    .line 438
    :catchall_5b
    move-exception v7

    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_25 .. :try_end_5d} :catchall_5b

    throw v7
.end method

.method private systemReady()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1719
    iput-boolean v1, p0, mSystemReady:Z

    .line 1720
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1721
    return-void
.end method

.method private validateDeviceRestriction(Ljava/lang/String;)V
    .registers 5
    .param p1, "restriction"    # Ljava/lang/String;

    .prologue
    .line 4703
    invoke-direct {p0, p1}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4704
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "policy has restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4706
    :cond_20
    return-void
.end method

.method private validatePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 1881
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 1882
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires %s permission"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_1a
    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 5
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;

    .prologue
    .line 860
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0, v1}, waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_6

    .line 863
    :goto_5
    return-void

    .line 861
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 14
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 870
    .local v2, "startMillis":J
    :cond_4
    const-wide/16 v4, 0x1388

    :try_start_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 871
    return-void

    .line 873
    :cond_f
    const-string v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " still waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_3f} :catch_8b

    .line 879
    :goto_3f
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 880
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave up waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 876
    :catch_8b
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupt while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method private waitForReady()V
    .registers 3

    .prologue
    .line 855
    iget-object v0, p0, mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mConnectedSignal"

    invoke-direct {p0, v0, v1}, waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    .prologue
    .line 2417
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 2419
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 2420
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2422
    monitor-exit v3

    .line 2428
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_21
    return-void

    .line 2418
    .restart local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2425
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2e

    .line 2427
    const-string v2, "MountService"

    const-string v3, "No primary storage mounted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2425
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method

.method private writeSettingsLocked()V
    .registers 10

    .prologue
    .line 1781
    const/4 v1, 0x0

    .line 1783
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v6, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1784
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeSettingsLocked() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1787
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1788
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1789
    const/4 v6, 0x0

    const-string/jumbo v7, "volumes"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1790
    const-string/jumbo v6, "version"

    const/4 v7, 0x3

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1791
    const-string/jumbo v6, "primaryStorageUuid"

    iget-object v7, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    const-string/jumbo v6, "forceAdoptable"

    iget-boolean v7, p0, mForceAdoptable:Z

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1793
    iget-object v6, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1794
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    if-ge v2, v5, :cond_76

    .line 1795
    iget-object v6, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 1796
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-static {v3, v4}, writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 1794
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 1798
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_76
    const/4 v6, 0x0

    const-string/jumbo v7, "volumes"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1799
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1801
    iget-object v6, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_85} :catch_86

    .line 1807
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "size":I
    :cond_85
    :goto_85
    return-void

    .line 1802
    :catch_86
    move-exception v0

    .line 1803
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_85

    .line 1804
    iget-object v6, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_85
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1823
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1824
    const-string/jumbo v0, "type"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1825
    const-string/jumbo v0, "fsUuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string/jumbo v0, "partGuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v0, "nickname"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v0, "userFlags"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1829
    const-string/jumbo v0, "createdMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1830
    const-string/jumbo v0, "lastTrimMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1831
    const-string/jumbo v0, "lastBenchMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1832
    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1833
    return-void
.end method


# virtual methods
.method public benchmark(Ljava/lang/String;)J
    .registers 11
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 2131
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2132
    invoke-direct {p0}, waitForReady()V

    .line 2134
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "benchmark :: = volId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :try_start_20
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-wide/32 v4, 0x2bf20

    const-string/jumbo v3, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "benchmark"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2140
    .local v1, "res":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonTimeoutException; {:try_start_20 .. :try_end_3e} :catch_40
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_3e} :catch_47

    move-result-wide v2

    .line 2142
    .end local v1    # "res":Lcom/android/server/NativeDaemonEvent;
    :goto_3f
    return-wide v2

    .line 2141
    :catch_40
    move-exception v0

    .line 2142
    .local v0, "e":Lcom/android/server/NativeDaemonTimeoutException;
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_3f

    .line 2143
    .end local v0    # "e":Lcom/android/server/NativeDaemonTimeoutException;
    :catch_47
    move-exception v0

    .line 2144
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 10
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 3078
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    invoke-direct {p0}, waitForReady()V

    .line 3083
    invoke-direct {p0}, policycheckForSKMM()V

    .line 3086
    const-string v2, "MountService"

    const-string v3, "changing encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    :try_start_17
    iget-object v2, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "changepw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v6, v6, p1

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3092
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_17 .. :try_end_3e} :catch_40

    move-result v2

    .line 3095
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_3f
    return v2

    .line 3093
    :catch_40
    move-exception v0

    .line 3095
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_3f
.end method

.method public changeEncryptionPassword2(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4183
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    const-string v0, "MountService"

    const-string/jumbo v1, "deprecated func. please use the another func."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    const/4 v0, 0x0

    return v0
.end method

.method public clearPassword()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3249
    invoke-direct {p0}, isReady()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3259
    :goto_6
    return-void

    .line 3255
    :cond_7
    :try_start_7
    iget-object v2, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "clearpw"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_17
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_7 .. :try_end_17} :catch_19

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    goto :goto_6

    .line 3256
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_19
    move-exception v0

    .line 3257
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public createNewUserDir(ILjava/lang/String;)V
    .registers 11
    .param p1, "userHandle"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 3263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_10

    .line 3264
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only SYSTEM_UID can create user directories"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3267
    :cond_10
    invoke-direct {p0}, waitForReady()V

    .line 3270
    const-string v3, "MountService"

    const-string v4, "Creating new user dir"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :try_start_1a
    iget-object v3, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "createnewuserdir"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3276
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v3, "0"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 3277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createnewuserdir sent unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3279
    .local v1, "error":Ljava/lang/String;
    const-string v3, "MountService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_65
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_65} :catch_65

    .line 3283
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_65
    move-exception v0

    .line 3284
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string/jumbo v4, "createnewuserdir threw exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3285
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "createnewuserdir threw exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3287
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_77
    return-void
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "fstype"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "ownerUid"    # I
    .param p6, "external"    # Z

    .prologue
    .line 2491
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2492
    invoke-direct {p0}, waitForReady()V

    .line 2493
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2495
    const/4 v1, 0x0

    .line 2497
    .local v1, "rc":I
    :try_start_c
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v6, "create"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object p3, v5, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x6

    if-eqz p6, :cond_53

    const-string v2, "1"

    :goto_3a
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_3f} :catch_56

    .line 2503
    :goto_3f
    if-nez v1, :cond_52

    .line 2504
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2505
    if-eqz p6, :cond_59

    .line 2506
    :try_start_46
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2510
    :goto_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_65

    .line 2512
    :cond_52
    return v1

    .line 2497
    :cond_53
    :try_start_53
    const-string v2, "0"
    :try_end_55
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_53 .. :try_end_55} :catch_56

    goto :goto_3a

    .line 2499
    :catch_56
    move-exception v0

    .line 2500
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_3f

    .line 2508
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_59
    :try_start_59
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 2510
    :catchall_65
    move-exception v2

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public cryptoMount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "mountpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4213
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    const-string v0, "MountService"

    const-string/jumbo v1, "deprecated func. please use the another func."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    const/4 v0, 0x0

    return v0
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 15
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2966
    :cond_12
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    invoke-direct {p0}, waitForReady()V

    .line 2971
    invoke-direct {p0}, policycheckForSKMM()V

    .line 2974
    const-string v0, "MountService"

    const-string/jumbo v1, "decrypting storage..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    :try_start_2a
    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v1, "cryptfs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "checkpw"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v4, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v9

    .line 2981
    .local v9, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v9}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2982
    .local v7, "code":I
    if-nez v7, :cond_5a

    .line 2985
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/MountService$2;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$2;-><init>(Lcom/android/server/MountService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3008
    .end local v7    # "code":I
    .end local v9    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_59
    return v7

    .line 2995
    .restart local v7    # "code":I
    .restart local v9    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_5a
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage decryption failed."

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_72
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2a .. :try_end_72} :catch_73

    goto :goto_59

    .line 3001
    .end local v7    # "code":I
    .end local v9    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_73
    move-exception v8

    .line 3003
    .local v8, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage decryption failed."

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    move v0, v12

    move v1, v11

    move v2, v10

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3008
    invoke-virtual {v8}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v7

    goto :goto_59
.end method

.method public deleteUserKey(I)V
    .registers 10
    .param p1, "userHandle"    # I

    .prologue
    .line 3292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_10

    .line 3293
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only SYSTEM_UID can delete user keys"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3296
    :cond_10
    invoke-direct {p0}, waitForReady()V

    .line 3299
    const-string v3, "MountService"

    const-string v4, "Deleting user key"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    :try_start_1a
    iget-object v3, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "deleteuserkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 3305
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v3, "0"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 3306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteuserkey sent unexpected message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3308
    .local v1, "error":Ljava/lang/String;
    const-string v3, "MountService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_62
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_62} :catch_62

    .line 3312
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_62
    move-exception v0

    .line 3313
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string/jumbo v4, "deleteuserkey threw exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3314
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "deleteuserkey threw exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3316
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_74
    return-void
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 2565
    const-string v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, enforcePermission(Ljava/lang/String;)V

    .line 2566
    invoke-direct {p0}, waitForReady()V

    .line 2567
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2575
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 2577
    const/4 v3, 0x0

    .line 2579
    .local v3, "rc":I
    :try_start_13
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "destroy"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2580
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_2e

    .line 2581
    const-string/jumbo v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2583
    :cond_2e
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_13 .. :try_end_33} :catch_51

    .line 2593
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_33
    if-nez v3, :cond_50

    .line 2594
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2595
    :try_start_38
    iget-object v4, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2596
    iget-object v4, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2599
    :cond_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_5e

    .line 2602
    :cond_50
    return v3

    .line 2584
    :catch_51
    move-exception v2

    .line 2585
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 2586
    .local v1, "code":I
    const/16 v4, 0x195

    if-ne v1, v4, :cond_5c

    .line 2587
    const/4 v3, -0x7

    goto :goto_33

    .line 2589
    :cond_5c
    const/4 v3, -0x1

    goto :goto_33

    .line 2599
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit v5
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v4
.end method

.method public dirCryptoMntFinished(Ljava/lang/String;)V
    .registers 9
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 4393
    :try_start_0
    invoke-direct {p0, p1}, findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 4394
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "mount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "dirCryptoMntFinished"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_32} :catch_33

    .line 4398
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :goto_32
    return-void

    .line 4395
    :catch_33
    move-exception v0

    .line 4396
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update VolumeState! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public disableStorageEncryption(ILjava/lang/String;)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 4157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    .line 4158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4161
    :cond_12
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4178
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4456
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.DUMP"

    const-string v21, "MountService"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    new-instance v15, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v19, "  "

    const/16 v20, 0xa0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v15, v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 4459
    .local v15, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4460
    :try_start_23
    const-string v19, "Disks:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4461
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4462
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_50

    .line 4463
    move-object/from16 v0, p0

    iget-object v0, v0, mDisks:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    .line 4464
    .local v5, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v5, v15}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4462
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 4466
    .end local v5    # "disk":Landroid/os/storage/DiskInfo;
    :cond_50
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4468
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4469
    const-string v19, "Volumes:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4470
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 4471
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4472
    const/4 v8, 0x0

    :goto_70
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_94

    .line 4473
    move-object/from16 v0, p0

    iget-object v0, v0, mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/VolumeInfo;

    .line 4474
    .local v18, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4472
    add-int/lit8 v8, v8, 0x1

    goto :goto_70

    .line 4476
    .end local v18    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_94
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4478
    invoke-direct/range {p0 .. p0}, SMdump()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    .line 4479
    .local v10, "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4480
    const-string v19, "StorageVolumes:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4481
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 4482
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4483
    const/4 v8, 0x0

    :goto_b1
    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_c5

    .line 4484
    aget-object v17, v10, v8

    .line 4485
    .local v17, "svol":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4486
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4483
    add-int/lit8 v8, v8, 0x1

    goto :goto_b1

    .line 4488
    .end local v17    # "svol":Landroid/os/storage/StorageVolume;
    :cond_c5
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4490
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4491
    const-string v19, "Records:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4492
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4493
    const/4 v8, 0x0

    :goto_d6
    move-object/from16 v0, p0

    iget-object v0, v0, mRecords:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_f8

    .line 4494
    move-object/from16 v0, p0

    iget-object v0, v0, mRecords:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/VolumeRecord;

    .line 4495
    .local v12, "note":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v12, v15}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4493
    add-int/lit8 v8, v8, 0x1

    goto :goto_d6

    .line 4497
    .end local v12    # "note":Landroid/os/storage/VolumeRecord;
    :cond_f8
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4499
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4500
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Primary storage UUID: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mPrimaryStorageUuid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4501
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Force adoptable: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, mForceAdoptable:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4502
    monitor-exit v20
    :try_end_14b
    .catchall {:try_start_23 .. :try_end_14b} :catchall_1be

    .line 4504
    move-object/from16 v0, p0

    iget-object v0, v0, mObbMounts:Ljava/util/Map;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 4505
    :try_start_152
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4506
    const-string/jumbo v19, "mObbMounts:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4508
    move-object/from16 v0, p0

    iget-object v0, v0, mObbMounts:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4510
    .local v4, "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    :goto_16e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1c5

    .line 4511
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4512
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4513
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4514
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 4515
    .local v14, "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1ab
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1c1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/MountService$ObbState;

    .line 4516
    .local v13, "obbState":Lcom/android/server/MountService$ObbState;
    invoke-virtual {v15, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1ab

    .line 4533
    .end local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "obbState":Lcom/android/server/MountService$ObbState;
    .end local v14    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :catchall_1bb
    move-exception v19

    monitor-exit v20
    :try_end_1bd
    .catchall {:try_start_152 .. :try_end_1bd} :catchall_1bb

    throw v19

    .line 4502
    .end local v8    # "i":I
    .end local v10    # "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    :catchall_1be
    move-exception v19

    :try_start_1bf
    monitor-exit v20
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    throw v19

    .line 4518
    .restart local v4    # "binders":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;>;"
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "mStorageVolumes":[Landroid/os/storage/StorageVolume;
    .restart local v14    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_1c1
    :try_start_1c1
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_16e

    .line 4520
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Ljava/util/List<Lcom/android/server/MountService$ObbState;>;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "obbStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_1c5
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4522
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4523
    const-string/jumbo v19, "mObbPathToStateMap:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4524
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4525
    move-object/from16 v0, p0

    iget-object v0, v0, mObbPathToStateMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 4526
    .local v11, "maps":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;>;"
    :goto_1e4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_20c

    .line 4527
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 4528
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4529
    const-string v19, " -> "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4530
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1e4

    .line 4532
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/MountService$ObbState;>;"
    :cond_20c
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4533
    monitor-exit v20
    :try_end_210
    .catchall {:try_start_1c1 .. :try_end_210} :catchall_1bb

    .line 4535
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4536
    const-string/jumbo v19, "mConnection:"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4537
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 4538
    move-object/from16 v0, p0

    iget-object v0, v0, mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4539
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 4541
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4543
    .local v16, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v15}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4544
    const-string v19, "Last maintenance: "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4545
    move-object/from16 v0, p0

    iget-wide v0, v0, mLastMaintenance:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4546
    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 12
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3038
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eq p1, v1, :cond_13

    .line 3039
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3042
    :cond_13
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to access the crypt keeper"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    invoke-direct {p0}, waitForReady()V

    .line 3048
    const-string v0, "MountService"

    const-string/jumbo v3, "encrypting storage..."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    if-ne p1, v1, :cond_49

    .line 3053
    :try_start_2a
    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "enablecrypto"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v8, "inplace"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    sget-object v8, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v8, v8, p1

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3070
    :goto_48
    return v2

    .line 3056
    :cond_49
    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "enablecrypto"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v8, "inplace"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    sget-object v8, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v8, v8, p1

    aput-object v8, v4, v5

    const/4 v5, 0x3

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_6f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2a .. :try_end_6f} :catch_70

    goto :goto_48

    .line 3059
    :catch_70
    move-exception v7

    .line 3061
    .local v7, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3062
    .local v6, "userId":I
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage encryption failed."

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3067
    invoke-virtual {v7}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_48
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2531
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2532
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2534
    const/4 v1, 0x0

    .line 2536
    .local v1, "rc":I
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "finalize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_1c} :catch_1d

    .line 2544
    :goto_1c
    return v1

    .line 2541
    :catch_1d
    move-exception v0

    .line 2542
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_1c
.end method

.method public finishMediaUpdate()V
    .registers 3

    .prologue
    .line 2824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 2825
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to call finishMediaUpdate()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2827
    :cond_11
    iget-object v0, p0, mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1b

    .line 2828
    iget-object v0, p0, mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2832
    :goto_1a
    return-void

    .line 2830
    :cond_1b
    const-string v0, "MountService"

    const-string v1, "Odd, nobody asked to unmount?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 2548
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2549
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2551
    const/4 v1, 0x0

    .line 2553
    .local v1, "rc":I
    :try_start_9
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "fixperms"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_26} :catch_27

    .line 2561
    :goto_26
    return v1

    .line 2558
    :catch_27
    move-exception v0

    .line 2559
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_26
.end method

.method public forgetAllVolumes()V
    .registers 7

    .prologue
    .line 2259
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, enforcePermission(Ljava/lang/String;)V

    .line 2260
    invoke-direct {p0}, waitForReady()V

    .line 2261
    const-string v3, "MountService"

    const-string/jumbo v4, "forgetAllVolumes ::"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2264
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    :try_start_14
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_41

    .line 2265
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2266
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 2267
    .local v2, "rec":Landroid/os/storage/VolumeRecord;
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 2268
    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct {p0, v3}, forgetPartition(Ljava/lang/String;)V

    .line 2270
    :cond_39
    iget-object v3, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/server/MountService$Callbacks;->access$2100(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    .line 2264
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 2272
    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rec":Landroid/os/storage/VolumeRecord;
    :cond_41
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 2274
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v5, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 2275
    invoke-direct {p0}, getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, mPrimaryStorageUuid:Ljava/lang/String;

    .line 2278
    :cond_56
    invoke-direct {p0}, writeSettingsLocked()V

    .line 2279
    invoke-direct {p0}, resetIfReadyAndConnectedLocked()V

    .line 2280
    monitor-exit v4

    .line 2281
    return-void

    .line 2280
    :catchall_5e
    move-exception v3

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_14 .. :try_end_60} :catchall_5e

    throw v3
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 6
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 2234
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, enforcePermission(Ljava/lang/String;)V

    .line 2235
    invoke-direct {p0}, waitForReady()V

    .line 2237
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forgetVolume :: = fsUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2240
    :try_start_27
    iget-object v1, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 2241
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v0, :cond_3e

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2242
    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct {p0, v1}, forgetPartition(Ljava/lang/String;)V

    .line 2244
    :cond_3e
    iget-object v1, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/server/MountService$Callbacks;->access$2100(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V

    .line 2248
    iget-object v1, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2249
    invoke-direct {p0}, getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mPrimaryStorageUuid:Ljava/lang/String;

    .line 2250
    invoke-direct {p0}, resetIfReadyAndConnectedLocked()V

    .line 2253
    :cond_54
    invoke-direct {p0}, writeSettingsLocked()V

    .line 2254
    monitor-exit v2

    .line 2255
    return-void

    .line 2254
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_59
    move-exception v1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_27 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .registers 9
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    .line 2117
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2118
    invoke-direct {p0}, waitForReady()V

    .line 2120
    invoke-direct {p0, p1}, findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 2121
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "format :: = volId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :try_start_2f
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "format"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "auto"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2f .. :try_end_4a} :catch_4b

    .line 2127
    return-void

    .line 2124
    :catch_4b
    move-exception v0

    .line 2125
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1949
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "formatVolume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-direct {p0, p1}, findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, format(Ljava/lang/String;)V

    .line 1951
    const/4 v0, 0x0

    return v0
.end method

.method public getCCmodeForCryptKeeper()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 4303
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4307
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4308
    const-string v3, "MountService"

    const-string v4, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    :goto_18
    return v2

    .line 4313
    :cond_19
    invoke-direct {p0}, waitForReady()V

    .line 4316
    :try_start_1c
    iget-object v3, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCCmodeForCryptKeeper"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4317
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1c .. :try_end_35} :catch_37

    move-result v2

    goto :goto_18

    .line 4318
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_37
    move-exception v0

    .line 4319
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    .prologue
    .line 3419
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3420
    :try_start_3
    iget-object v2, p0, mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/DiskInfo;

    .line 3421
    .local v1, "res":[Landroid/os/storage/DiskInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3422
    iget-object v2, p0, mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    aput-object v2, v1, v0

    .line 3421
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3424
    :cond_21
    monitor-exit v3

    return-object v1

    .line 3425
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/DiskInfo;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getEncryptionState()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 2933
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2938
    const-string v3, "MountService"

    const-string v4, "Skip getEncryptionState if enc/decryption is in progress. Due to time-out."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :goto_18
    return v2

    .line 2943
    :cond_19
    invoke-direct {p0}, waitForReady()V

    .line 2947
    :try_start_1c
    iget-object v3, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "cryptocomplete"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 2948
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_35} :catch_37
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1c .. :try_end_35} :catch_40

    move-result v2

    goto :goto_18

    .line 2949
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_37
    move-exception v0

    .line 2951
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2953
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_40
    move-exception v0

    .line 2955
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_11

    .line 3198
    new-instance v7, Ljava/lang/SecurityException;

    const-string/jumbo v8, "no permission to access the crypt keeper fields"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3201
    :cond_11
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 3202
    const-string v7, "MountService"

    const-string v8, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    const-string v6, ""

    .line 3218
    :cond_20
    return-object v6

    .line 3207
    :cond_21
    invoke-direct {p0}, waitForReady()V

    .line 3211
    :try_start_24
    iget-object v7, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "cryptfs"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "getfield"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x71

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v2

    .line 3214
    .local v2, "contents":[Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 3215
    .local v6, "result":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_47
    if-ge v4, v5, :cond_20

    aget-object v1, v0, v4

    .line 3216
    .local v1, "content":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_24 .. :try_end_5b} :catch_5f

    move-result-object v6

    .line 3215
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 3219
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contents":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :catch_5f
    move-exception v3

    .line 3220
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2854
    const-string/jumbo v5, "rawPath cannot be null"

    invoke-static {p1, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2856
    invoke-direct {p0}, waitForReady()V

    .line 2857
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2860
    iget-object v5, p0, mObbMounts:Ljava/util/Map;

    monitor-enter v5

    .line 2861
    :try_start_12
    iget-object v6, p0, mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 2862
    .local v3, "state":Lcom/android/server/MountService$ObbState;
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_36

    .line 2863
    if-nez v3, :cond_39

    .line 2864
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find OBB mounted at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_35
    :goto_35
    return-object v4

    .line 2862
    .end local v3    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v4

    .line 2870
    .restart local v3    # "state":Lcom/android/server/MountService$ObbState;
    :cond_39
    :try_start_39
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "path"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2871
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v5, 0xd3

    invoke-virtual {v2, v5}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2872
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_58
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_39 .. :try_end_58} :catch_5a

    move-result-object v4

    goto :goto_35

    .line 2873
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_5a
    move-exception v1

    .line 2874
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2875
    .local v0, "code":I
    const/16 v5, 0x196

    if-eq v0, v5, :cond_35

    .line 2878
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPassword()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3226
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v5, "only keyguard can retrieve password"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    invoke-direct {p0}, isReady()Z

    move-result v3

    if-nez v3, :cond_17

    .line 3229
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 3243
    :cond_16
    :goto_16
    return-object v2

    .line 3233
    :cond_17
    :try_start_17
    iget-object v3, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "getpw"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3234
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v3, "-1"

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 3238
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_38
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_17 .. :try_end_38} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_38} :catch_40

    move-result-object v2

    goto :goto_16

    .line 3239
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_3a
    move-exception v0

    .line 3240
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 3241
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_40
    move-exception v0

    .line 3242
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MountService"

    const-string v4, "Invalid response to getPassword"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public getPasswordType()I
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 3140
    invoke-direct {p0}, waitForReady()V

    .line 3144
    :try_start_4
    iget-object v4, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "cryptfs"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "getpwtype"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3145
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    sget-object v4, CRYPTO_TYPES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2e

    .line 3146
    sget-object v4, CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3152
    .end local v2    # "i":I
    :goto_2a
    return v2

    .line 3145
    .restart local v2    # "i":I
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3150
    :cond_2e
    const-string v4, "MountService"

    const-string/jumbo v5, "unexpected return from cryptfs: Incomplete encryption case"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_36} :catch_38

    move v2, v3

    .line 3152
    goto :goto_2a

    .line 3154
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "i":I
    :catch_38
    move-exception v0

    .line 3155
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2333
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, enforcePermission(Ljava/lang/String;)V

    .line 2334
    invoke-direct {p0}, waitForReady()V

    .line 2336
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2337
    :try_start_b
    iget-object v0, p0, mPrimaryStorageUuid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 2338
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4364
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4365
    const-string v7, "MountService"

    const-string v8, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    const-string v6, ""

    .line 4387
    :cond_f
    :goto_f
    return-object v6

    .line 4369
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-direct {p0}, checkSystemUid()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 4371
    :cond_1c
    const-string v6, ""

    goto :goto_f

    .line 4376
    :cond_1f
    :try_start_1f
    iget-object v7, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "cryptfs"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "getfield"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x71

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v2

    .line 4379
    .local v2, "contents":[Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 4380
    .local v6, "result":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_42
    if-ge v4, v5, :cond_f

    aget-object v1, v0, v4

    .line 4381
    .local v1, "content":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_56
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1f .. :try_end_56} :catch_5a

    move-result-object v6

    .line 4380
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 4384
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contents":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :catch_5a
    move-exception v3

    .line 4386
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v7, "MountService"

    const-string v8, "Cannot get the property from footer"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    const-string v6, ""

    goto :goto_f
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2802
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, enforcePermission(Ljava/lang/String;)V

    .line 2803
    invoke-direct {p0}, waitForReady()V

    .line 2804
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2808
    :try_start_d
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "fspath"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2809
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2810
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_29} :catch_2b

    move-result-object v3

    .line 2815
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_2a
    return-object v3

    .line 2811
    :catch_2b
    move-exception v1

    .line 2812
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2813
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_45

    .line 2814
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const/4 v3, 0x0

    goto :goto_2a

    .line 2817
    :cond_45
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 2446
    const-string v7, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v7}, enforcePermission(Ljava/lang/String;)V

    .line 2447
    invoke-direct {p0}, waitForReady()V

    .line 2448
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2453
    :try_start_c
    iget-object v7, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v8, "asec"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "list"

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v7

    const/16 v8, 0x6f

    invoke-static {v7, v8}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_22
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_22} :catch_59

    move-result-object v5

    .line 2458
    .local v5, "packdata":[Ljava/lang/String;
    :goto_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2461
    .local v0, "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v8

    .line 2462
    :try_start_2f
    invoke-direct {p0}, checkExternalSecureContainerMounted()Z

    move-result v7

    if-nez v7, :cond_7b

    .line 2465
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2466
    .local v6, "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2467
    .local v2, "i":I
    iget-object v7, p0, mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2468
    .local v3, "iter":Ljava/util/Iterator;
    :cond_41
    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 2470
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$PackageInstalledMap;

    .line 2471
    .local v4, "map":Lcom/android/server/MountService$PackageInstalledMap;
    iget-boolean v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->external:Z

    if-eqz v7, :cond_41

    .line 2472
    iget-object v7, v4, Lcom/android/server/MountService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_2f .. :try_end_56} :catchall_87

    .line 2473
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 2455
    .end local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "map":Lcom/android/server/MountService$PackageInstalledMap;
    .end local v5    # "packdata":[Ljava/lang/String;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_59
    move-exception v1

    .line 2456
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-array v5, v12, [Ljava/lang/String;

    .restart local v5    # "packdata":[Ljava/lang/String;
    goto :goto_23

    .line 2477
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "allpackage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5d
    if-lez v2, :cond_78

    .line 2478
    :try_start_5f
    const-string v7, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSecureContainerList : (no media) lists = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_78
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2484
    .end local v2    # "i":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v6    # "rdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7b
    monitor-exit v8
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_87

    .line 2486
    new-array v7, v12, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 2484
    :catchall_87
    move-exception v7

    :try_start_88
    monitor-exit v8
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v7
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2774
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: getSecureContainerPath :: id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    const-string v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, enforcePermission(Ljava/lang/String;)V

    .line 2776
    invoke-direct {p0}, waitForReady()V

    .line 2777
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2779
    invoke-direct {p0, p1}, isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-direct {p0}, checkExternalSecureContainerMounted()Z

    move-result v3

    if-nez v3, :cond_52

    .line 2780
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/asec/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2794
    :goto_51
    return-object v3

    .line 2787
    :cond_52
    :try_start_52
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    .line 2788
    .local v2, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 2789
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_6e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_52 .. :try_end_6e} :catch_70

    move-result-object v3

    goto :goto_51

    .line 2790
    .end local v2    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_70
    move-exception v1

    .line 2791
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2792
    .local v0, "code":I
    const/16 v3, 0x196

    if-ne v0, v3, :cond_8a

    .line 2793
    const-string v3, "MountService"

    const-string v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const/4 v3, 0x0

    goto :goto_51

    .line 2796
    :cond_8a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 2391
    const-string v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, enforcePermission(Ljava/lang/String;)V

    .line 2392
    invoke-direct {p0}, waitForReady()V

    .line 2394
    :try_start_9
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "users"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    .line 2399
    .local v4, "r":[Ljava/lang/String;
    array-length v6, v4

    new-array v0, v6, [I

    .line 2400
    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    array-length v6, v4

    if-ge v2, v6, :cond_57

    .line 2401
    aget-object v6, v4, v2

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_32} :catch_58

    move-result-object v5

    .line 2403
    .local v5, "tok":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_34
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3c} :catch_3f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_3c} :catch_58

    .line 2400
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2404
    :catch_3f
    move-exception v3

    .line 2405
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_40
    const-string v6, "MountService"

    const-string v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v5, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    const/4 v6, 0x0

    new-array v0, v6, [I
    :try_end_57
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_40 .. :try_end_57} :catch_58

    .line 2412
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "r":[Ljava/lang/String;
    .end local v5    # "tok":[Ljava/lang/String;
    :cond_57
    :goto_57
    return-object v0

    .line 2410
    :catch_58
    move-exception v1

    .line 2411
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "MountService"

    const-string v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2412
    new-array v0, v11, [I

    goto :goto_57
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 46
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 3359
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_74

    const/16 v23, 0x1

    .line 3361
    .local v23, "forWrite":Z
    :goto_6
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 3362
    .local v36, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/16 v24, 0x0

    .line 3364
    .local v24, "foundPrimary":Z
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v38

    .line 3366
    .local v38, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 3368
    .local v28, "identity":J
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, mMountServiceInternal:Lcom/android/server/MountService$MountServiceInternalImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/MountService$MountServiceInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_7a

    move-result v4

    if-nez v4, :cond_77

    const/16 v35, 0x1

    .line 3371
    .local v35, "reportUnmounted":Z
    :goto_25
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3374
    move-object/from16 v0, p0

    iget-object v5, v0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3375
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2f
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v4, v0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_95

    .line 3376
    move-object/from16 v0, p0

    iget-object v4, v0, mVolumes:Landroid/util/ArrayMap;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/storage/VolumeInfo;

    .line 3377
    .local v40, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v23, :cond_7f

    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 3378
    :goto_53
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v40

    move/from16 v1, v38

    move/from16 v2, v35

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v39

    .line 3380
    .local v39, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v40 .. v40}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 3381
    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_2f .. :try_end_6f} :catchall_92

    .line 3382
    const/16 v24, 0x1

    .line 3375
    .end local v39    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_71
    :goto_71
    add-int/lit8 v25, v25, 0x1

    goto :goto_2f

    .line 3359
    .end local v23    # "forWrite":Z
    .end local v24    # "foundPrimary":Z
    .end local v25    # "i":I
    .end local v28    # "identity":J
    .end local v35    # "reportUnmounted":Z
    .end local v36    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v38    # "userId":I
    .end local v40    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_74
    const/16 v23, 0x0

    goto :goto_6

    .line 3368
    .restart local v23    # "forWrite":Z
    .restart local v24    # "foundPrimary":Z
    .restart local v28    # "identity":J
    .restart local v36    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v38    # "userId":I
    :cond_77
    const/16 v35, 0x0

    goto :goto_25

    .line 3371
    :catchall_7a
    move-exception v4

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3377
    .restart local v25    # "i":I
    .restart local v35    # "reportUnmounted":Z
    .restart local v40    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_7f
    :try_start_7f
    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-eqz v4, :cond_71

    goto :goto_53

    .line 3384
    .restart local v39    # "userVol":Landroid/os/storage/StorageVolume;
    :cond_8a
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 3388
    .end local v39    # "userVol":Landroid/os/storage/StorageVolume;
    .end local v40    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_92
    move-exception v4

    monitor-exit v5
    :try_end_94
    .catchall {:try_start_7f .. :try_end_94} :catchall_92

    throw v4

    :cond_95
    :try_start_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_92

    .line 3390
    if-nez v24, :cond_f4

    .line 3391
    const-string v4, "MountService"

    const-string v5, "No primary storage defined yet; hacking together a stub"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    const-string/jumbo v4, "ro.vold.primary_physical"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 3396
    .local v34, "primaryPhysical":Z
    const-string/jumbo v26, "stub_primary"

    .line 3397
    .local v26, "id":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 3398
    .local v7, "path":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3399
    .local v8, "description":Ljava/lang/String;
    const/16 v27, 0x1

    .line 3400
    .local v27, "primary":Z
    move/from16 v10, v34

    .line 3401
    .local v10, "removable":Z
    if-nez v34, :cond_103

    const/4 v11, 0x1

    .line 3402
    .local v11, "emulated":Z
    :goto_c0
    const-wide/16 v32, 0x0

    .line 3403
    .local v32, "mtpReserveSize":J
    const/16 v22, 0x0

    .line 3404
    .local v22, "allowMassStorage":Z
    const-wide/16 v30, 0x0

    .line 3405
    .local v30, "maxFileSize":J
    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 3406
    .local v17, "owner":Landroid/os/UserHandle;
    const/16 v18, 0x0

    .line 3407
    .local v18, "uuid":Ljava/lang/String;
    const-string/jumbo v37, "removed"

    .line 3409
    .local v37, "state":Ljava/lang/String;
    const/16 v41, 0x0

    new-instance v4, Landroid/os/storage/StorageVolume;

    const-string/jumbo v5, "stub_primary"

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-string/jumbo v19, "removed"

    const-string/jumbo v20, "fuse"

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v21}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3414
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "removable":Z
    .end local v11    # "emulated":Z
    .end local v17    # "owner":Landroid/os/UserHandle;
    .end local v18    # "uuid":Ljava/lang/String;
    .end local v22    # "allowMassStorage":Z
    .end local v26    # "id":Ljava/lang/String;
    .end local v27    # "primary":Z
    .end local v30    # "maxFileSize":J
    .end local v32    # "mtpReserveSize":J
    .end local v34    # "primaryPhysical":Z
    .end local v37    # "state":Ljava/lang/String;
    :cond_f4
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/storage/StorageVolume;

    return-object v4

    .line 3401
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "description":Ljava/lang/String;
    .restart local v10    # "removable":Z
    .restart local v26    # "id":Ljava/lang/String;
    .restart local v27    # "primary":Z
    .restart local v34    # "primaryPhysical":Z
    :cond_103
    const/4 v11, 0x0

    goto :goto_c0
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 3441
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3442
    :try_start_3
    iget-object v2, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeRecord;

    .line 3443
    .local v1, "res":[Landroid/os/storage/VolumeRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3444
    iget-object v2, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v1, v0

    .line 3443
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3446
    :cond_21
    monitor-exit v3

    return-object v1

    .line 3447
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeRecord;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 1912
    if-nez p1, :cond_6

    .line 1913
    const-string/jumbo v2, "unknown"

    .line 1924
    :goto_5
    return-object v2

    .line 1914
    :cond_6
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1915
    :try_start_9
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .line 1916
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_74

    .line 1917
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0

    .line 1918
    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1919
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: getVolumeState :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    iget v5, v5, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    aget-object v2, v1, v0

    aget-object v2, v1, v0

    iget v2, v2, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    goto :goto_5

    .line 1925
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_6e
    move-exception v2

    monitor-exit v3
    :try_end_70
    .catchall {:try_start_9 .. :try_end_70} :catchall_6e

    throw v2

    .line 1916
    .restart local v0    # "i":I
    .restart local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1923
    :cond_74
    :try_start_74
    const-string v2, "MountService"

    const-string v4, " :::: getVolumeState :: Not mathced volume"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const-string/jumbo v2, "unknown"

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_6e

    goto :goto_5
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 3430
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3431
    :try_start_3
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .line 3432
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3433
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0

    .line 3432
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3435
    :cond_21
    monitor-exit v3

    return-object v1

    .line 3436
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public isEncryptedWithForceEncrypt()I
    .registers 8

    .prologue
    .line 4403
    :try_start_0
    iget-object v2, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "forceencrypt"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4404
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_19
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v2

    .line 4407
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_1a
    return v2

    .line 4405
    :catch_1b
    move-exception v0

    .line 4406
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot check force encrypt condition! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    const/4 v2, -0x1

    goto :goto_1a
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    .prologue
    .line 1931
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 2885
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2886
    iget-object v1, p0, mObbMounts:Ljava/util/Map;

    monitor-enter v1

    .line 2887
    :try_start_9
    iget-object v0, p0, mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2888
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 2736
    const-string v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, enforcePermission(Ljava/lang/String;)V

    .line 2737
    invoke-direct {p0}, waitForReady()V

    .line 2738
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2740
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 2741
    :try_start_e
    iget-object v1, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v3, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 2742
    .local v0, "ret":Z
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " :::: isSecureContainerMounted :: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    monitor-exit v2

    return v0

    .line 2744
    .end local v0    # "ret":Z
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public isStorageFullyEncrypted()I
    .registers 9

    .prologue
    const/4 v2, -0x1

    .line 4266
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    invoke-direct {p0}, waitForReady()V

    .line 4273
    :try_start_e
    iget-object v3, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "fullyencrypted"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4274
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_27} :catch_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_27} :catch_32

    move-result v2

    .line 4282
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_28
    return v2

    .line 4275
    :catch_29
    move-exception v0

    .line 4277
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "MountService"

    const-string v4, "Unable to parse result from cryptfs fullyencrypted"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4279
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_32
    move-exception v0

    .line 4281
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public isUsbMassStorageConnected()Z
    .registers 2

    .prologue
    .line 1859
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 2

    .prologue
    .line 1869
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lastMaintenance()J
    .registers 3

    .prologue
    .line 1056
    iget-wide v0, p0, mLastMaintenance:J

    return-wide v0
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "appPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3321
    .local v4, "userId":I
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v3, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3324
    .local v3, "userEnv":Landroid/os/Environment$UserEnvironment;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 3326
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v1, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3328
    const/4 v0, 0x0

    .line 3330
    .local v0, "appFile":Ljava/io/File;
    :try_start_20
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_7b

    move-result-object v0

    .line 3338
    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v3, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 3341
    :cond_47
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 3342
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_66

    .line 3343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3347
    :cond_66
    :try_start_66
    iget-object v6, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "mkdirs"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_66 .. :try_end_7a} :catch_a0

    .line 3350
    :goto_7a
    return v5

    .line 3331
    :catch_7b
    move-exception v2

    .line 3332
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    const/4 v5, -0x1

    goto :goto_7a

    .line 3349
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a0
    move-exception v2

    .line 3350
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    goto :goto_7a

    .line 3354
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_a6
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mkdirs path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public monitor()V
    .registers 2

    .prologue
    .line 4551
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    .line 4552
    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 4554
    :cond_9
    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_12

    .line 4555
    iget-object v0, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 4557
    :cond_12
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 11
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 1956
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, enforcePermission(Ljava/lang/String;)V

    .line 1957
    invoke-direct {p0}, waitForReady()V

    .line 1958
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mount :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-direct {p0, p1}, findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 1961
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v3}, isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1962
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mounting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " restricted by policy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1964
    :cond_4b
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mount :: = volId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vol.mountFlags = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vol.mountUserId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const/4 v1, 0x0

    .line 1968
    .local v1, "ext_flag":I
    const-string/jumbo v4, "readonly_storage"

    invoke-direct {p0, v4}, hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 1969
    const-string v4, "MountService"

    const-string v5, "Policy has restriction \'readonly_storage\'; readonly"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    const/high16 v1, -0x80000000

    .line 1975
    :cond_8f
    const/4 v2, 0x0

    .line 1976
    .local v2, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v4, :cond_9a

    .line 1977
    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 1978
    :cond_9a
    if-nez v2, :cond_a1

    .line 1979
    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v2    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 1985
    .restart local v2    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_a1
    :try_start_a1
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 1986
    const-string v4, "MountService"

    const-string v5, "Do not mount if en/decryption is in progres"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :goto_ae
    return-void

    .line 1989
    :cond_af
    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v4, :cond_121

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_121

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_121

    invoke-virtual {p0}, requiredEncPolicyCheck()Z

    move-result v4

    if-eqz v4, :cond_121

    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v4

    if-eqz v4, :cond_121

    .line 1990
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "hidden"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_fe
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a1 .. :try_end_fe} :catch_ff

    goto :goto_ae

    .line 2049
    :catch_ff
    move-exception v0

    .line 2050
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mount failed :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 1992
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_121
    :try_start_121
    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-eqz v4, :cond_140

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_140

    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_140

    iget v4, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v4, :cond_140

    .line 1994
    const-string v4, "MountService"

    const-string v5, "Do not mount external SD card on user mode(=not owner) under SD card encryption policy is set"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 1997
    :cond_140
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: execute volume mount !!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v4, p0, mUsbStorageBooster:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_1d7

    .line 2001
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1ce

    .line 2002
    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v4, :cond_1c5

    .line 2003
    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_1bc

    .line 2004
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: LPM disable to boost usb-storage up until 100 sec"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    iget-object v4, p0, mUsbStorageBooster:Landroid/os/DVFSHelper;

    const v5, 0x186a0

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2021
    :goto_16e
    iget-object v4, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2025
    iget-object v4, p0, mUsbStorageBooster:Landroid/os/DVFSHelper;

    if-eqz v4, :cond_1fe

    .line 2026
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1f4

    .line 2027
    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v4, :cond_1ea

    .line 2028
    iget-object v4, v3, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 2029
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: LPM enable after boosting usb-storage up"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget-object v4, p0, mUsbStorageBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_ae

    .line 2007
    :cond_1bc
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: not Usb"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 2010
    :cond_1c5
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: vol.disk is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 2013
    :cond_1ce
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: not TYPE_PUBLIC"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 2016
    :cond_1d7
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16e

    .line 2032
    :cond_1e0
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: not Usb"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 2035
    :cond_1ea
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: vol.disk is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 2038
    :cond_1f4
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: not TYPE_PUBLIC"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ae

    .line 2041
    :cond_1fe
    const-string v4, "MountService"

    const-string/jumbo v5, "mount:: fail to setting LPM : mUsbStorageBooster is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_206
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_121 .. :try_end_206} :catch_ff

    goto/16 :goto_ae
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "canonicalPath"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/storage/IObbActionListener;
    .param p5, "nonce"    # I

    .prologue
    .line 2894
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2895
    const-string v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    const-string/jumbo v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2899
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2900
    .local v0, "obbState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/MountService$MountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V

    .line 2901
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2904
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send to OBB handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    return-void
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 14
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "readOnly"    # Z

    .prologue
    .line 2606
    const-string v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, enforcePermission(Ljava/lang/String;)V

    .line 2607
    invoke-direct {p0}, waitForReady()V

    .line 2608
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2610
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2611
    :try_start_e
    iget-object v4, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v6, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2612
    const/4 v3, -0x6

    monitor-exit v5

    .line 2638
    :cond_1d
    :goto_1d
    return v3

    .line 2614
    :cond_1e
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_6b

    .line 2616
    const/4 v3, 0x0

    .line 2618
    .local v3, "rc":I
    :try_start_20
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v6, "asec"

    const/4 v4, 0x5

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v8, "mount"

    aput-object v8, v7, v4

    const/4 v4, 0x1

    aput-object p1, v7, v4

    const/4 v4, 0x2

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x4

    if-eqz p4, :cond_6e

    const-string/jumbo v4, "ro"

    :goto_45
    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_4a} :catch_72

    .line 2627
    :cond_4a
    :goto_4a
    invoke-virtual {p0, p1}, getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2628
    .local v2, "path":Ljava/lang/String;
    if-nez v3, :cond_1d

    .line 2629
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 2630
    :try_start_53
    const-string v4, "/data/app-asec/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2631
    iget-object v4, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v7}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2636
    :goto_66
    monitor-exit v5

    goto :goto_1d

    :catchall_68
    move-exception v4

    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_68

    throw v4

    .line 2614
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "rc":I
    :catchall_6b
    move-exception v4

    :try_start_6c
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v4

    .line 2618
    .restart local v3    # "rc":I
    :cond_6e
    :try_start_6e
    const-string/jumbo v4, "rw"
    :try_end_71
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_45

    .line 2620
    :catch_72
    move-exception v1

    .line 2621
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    .line 2622
    .local v0, "code":I
    const/16 v4, 0x195

    if-eq v0, v4, :cond_4a

    .line 2623
    const/4 v3, -0x1

    goto :goto_4a

    .line 2633
    .end local v0    # "code":I
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v2    # "path":Ljava/lang/String;
    :cond_7d
    :try_start_7d
    iget-object v4, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v6, Lcom/android/server/MountService$PackageInstalledMap;

    const/4 v7, 0x1

    invoke-direct {v6, p0, p1, v7}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_68

    goto :goto_66
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1936
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mountVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-direct {p0, p1}, findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, mount(Ljava/lang/String;)V

    .line 1938
    const/4 v0, 0x0

    return v0
.end method

.method public moveDumpstates()I
    .registers 8

    .prologue
    .line 4287
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4290
    invoke-direct {p0}, waitForReady()V

    .line 4293
    :try_start_d
    iget-object v2, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "movedump"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4294
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_26} :catch_28

    move-result v2

    .line 4297
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_27
    return v2

    .line 4295
    :catch_28
    move-exception v0

    .line 4296
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Error in communicating with cryptfs in validating"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    const/4 v2, -0x1

    goto :goto_27
.end method

.method public odeNativeTest(Ljava/lang/String;)I
    .registers 9
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 4325
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4328
    invoke-direct {p0}, waitForReady()V

    .line 4331
    :try_start_d
    iget-object v2, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "odenativetest"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4332
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_29} :catch_2b

    move-result v2

    .line 4335
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_2a
    return v2

    .line 4333
    :catch_2b
    move-exception v0

    .line 4334
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Error in communicating with cryptfs in validating"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    const/4 v2, -0x1

    goto :goto_2a
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 1145
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 4

    .prologue
    .line 1065
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1066
    const-string v0, "MountService"

    const-string v1, "Skip register DirEncryptListener if enc/decryption is in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :goto_d
    const/4 v0, 0x1

    iput-boolean v0, p0, mDaemonConnected:Z

    .line 1083
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1084
    return-void

    .line 1069
    :cond_1b
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1070
    :try_start_1e
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1071
    iget-object v0, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    if-nez v0, :cond_31

    .line 1072
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 1073
    :cond_31
    iget-object v0, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    if-nez v0, :cond_4b

    .line 1074
    new-instance v0, Lcom/android/server/MountService$DirEncryptListner;

    invoke-direct {v0, p0}, Lcom/android/server/MountService$DirEncryptListner;-><init>(Lcom/android/server/MountService;)V

    iput-object v0, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    .line 1075
    iget-object v0, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, mDirEncryptListner:Lcom/android/server/MountService$DirEncryptListner;

    invoke-virtual {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 1076
    const-string v0, "MountService"

    const-string/jumbo v2, "register direncryption listener"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_4b
    monitor-exit v1

    goto :goto_d

    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1153
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1154
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1155
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 10
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .prologue
    .line 2186
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2187
    invoke-direct {p0}, enforceAdminUser()V

    .line 2188
    invoke-direct {p0}, waitForReady()V

    .line 2190
    invoke-direct {p0, p1}, findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 2191
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partitionMixed :: = diskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :try_start_28
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "partition"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "mixed"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2194
    const-string/jumbo v2, "partitionMixed"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v1, v2, v4, v5}, waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_52
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_52} :catch_53
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_28 .. :try_end_52} :catch_59

    .line 2200
    return-void

    .line 2195
    :catch_53
    move-exception v0

    .line 2196
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 2197
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_59
    move-exception v0

    .line 2198
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 9
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 2168
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2169
    invoke-direct {p0}, enforceAdminUser()V

    .line 2170
    invoke-direct {p0}, waitForReady()V

    .line 2172
    invoke-direct {p0, p1}, findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 2173
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partitionPrivate :: = diskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :try_start_28
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "partition"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "private"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2176
    const-string/jumbo v2, "partitionPrivate"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v1, v2, v4, v5}, waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_4b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_4b} :catch_4c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_28 .. :try_end_4b} :catch_52

    .line 2182
    return-void

    .line 2177
    :catch_4c
    move-exception v0

    .line 2178
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 2179
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_52
    move-exception v0

    .line 2180
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 9
    .param p1, "diskId"    # Ljava/lang/String;

    .prologue
    .line 2150
    const-string v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2151
    invoke-direct {p0}, waitForReady()V

    .line 2153
    invoke-direct {p0, p1}, findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 2154
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partitionPublic :: = diskId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :try_start_25
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "partition"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "public"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2158
    const-string/jumbo v2, "partitionPublic"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v1, v2, v4, v5}, waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_25 .. :try_end_48} :catch_49
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_25 .. :try_end_48} :catch_4f

    .line 2164
    return-void

    .line 2159
    :catch_49
    move-exception v0

    .line 2160
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 2161
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catch_4f
    move-exception v0

    .line 2162
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public prepareDecryptOnRecovery(ILjava/lang/String;)I
    .registers 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 4128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4132
    :cond_f
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    const-string v0, "MountService"

    const-string/jumbo v1, "deprecated func. please use the another func."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1841
    iget-object v0, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->register(Landroid/os/storage/IMountServiceListener;)V

    .line 1842
    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "oldId"    # Ljava/lang/String;
    .param p2, "newId"    # Ljava/lang/String;

    .prologue
    .line 2748
    const-string v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2749
    invoke-direct {p0}, waitForReady()V

    .line 2750
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2752
    iget-object v3, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 2757
    :try_start_e
    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v4, p0, p2}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2759
    :cond_28
    const/4 v1, -0x6

    monitor-exit v3

    .line 2770
    :goto_2a
    return v1

    .line 2761
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_e .. :try_end_2c} :catchall_47

    .line 2763
    const/4 v1, 0x0

    .line 2765
    .local v1, "rc":I
    :try_start_2d
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "rename"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_43
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2d .. :try_end_43} :catch_44

    goto :goto_2a

    .line 2766
    :catch_44
    move-exception v0

    .line 2767
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_2a

    .line 2761
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v1    # "rc":I
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method requiredEncPolicyCheck()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 4089
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 4110
    :cond_7
    :goto_7
    return v3

    .line 4094
    :cond_8
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4095
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1e

    .line 4096
    const-string v4, "MountService"

    const-string/jumbo v5, "requiredEncPolicyCheck: DevicePolicyManager is NULL"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4099
    :cond_1e
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-nez v4, :cond_3e

    .line 4100
    new-instance v2, Landroid/dirEncryption/SDCardEncryptionPolicies;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x7

    invoke-direct {v2, v4, v5, v6}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 4102
    .local v2, "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    .line 4103
    .local v1, "mDep":Lcom/android/server/DirEncryptPrefs;
    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    .line 4106
    .end local v1    # "mDep":Lcom/android/server/DirEncryptPrefs;
    .end local v2    # "policy":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_3e
    iget-object v4, p0, mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 4107
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "sizeMb"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 2517
    const-string v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, enforcePermission(Ljava/lang/String;)V

    .line 2518
    invoke-direct {p0}, waitForReady()V

    .line 2519
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2521
    const/4 v1, 0x0

    .line 2523
    .local v1, "rc":I
    :try_start_c
    iget-object v2, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "resize"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_c .. :try_end_2e} :catch_2f

    .line 2527
    :goto_2e
    return v1

    .line 2524
    :catch_2f
    move-exception v0

    .line 2525
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, -0x1

    goto :goto_2e
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 1044
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1045
    return-void
.end method

.method public runMaintenance()V
    .registers 2

    .prologue
    .line 1050
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, enforcePermission(Ljava/lang/String;)V

    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, runIdleMaintenance(Ljava/lang/Runnable;)V

    .line 1052
    return-void
.end method

.method public setDebugFlags(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 2318
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, enforcePermission(Ljava/lang/String;)V

    .line 2319
    invoke-direct {p0}, waitForReady()V

    .line 2321
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2322
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_16

    .line 2323
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_14
    :try_start_14
    iput-boolean v0, p0, mForceAdoptable:Z

    .line 2326
    :cond_16
    invoke-direct {p0}, writeSettingsLocked()V

    .line 2327
    invoke-direct {p0}, resetIfReadyAndConnectedLocked()V

    .line 2328
    monitor-exit v1

    .line 2329
    return-void

    .line 2323
    :cond_1e
    const/4 v0, 0x0

    goto :goto_14

    .line 2328
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    .line 3169
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "no permission to access the crypt keeper fields"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3172
    :cond_11
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3173
    const-string v2, "MountService"

    const-string v3, "Skip setField if enc/decryption is in progress. Due to time-out."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :goto_1e
    return-void

    .line 3178
    :cond_1f
    invoke-direct {p0}, waitForReady()V

    .line 3182
    :try_start_22
    iget-object v2, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "setfield"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_39
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_22 .. :try_end_39} :catch_3b

    move-result-object v1

    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    goto :goto_1e

    .line 3183
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_3b
    move-exception v0

    .line 3184
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setNullSDCardPassword(Ljava/lang/String;)I
    .registers 5
    .param p1, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4242
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v2, "no permission to access the crypt keeper"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    const-string v0, "MountService"

    const-string/jumbo v1, "deprecated func. please use the another func."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    const/4 v0, 0x0

    return v0
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 12
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 2343
    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, enforcePermission(Ljava/lang/String;)V

    .line 2344
    invoke-direct {p0}, waitForReady()V

    .line 2346
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2347
    :try_start_b
    iget-object v3, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2348
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Primary storage already at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2386
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v3

    .line 2351
    :cond_2f
    :try_start_2f
    iget-object v3, p0, mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-eqz v3, :cond_3b

    .line 2352
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Move already in progress"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2354
    :cond_3b
    iput-object p2, p0, mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2355
    iput-object p1, p0, mMoveTargetUuid:Ljava/lang/String;

    .line 2359
    const-string/jumbo v3, "primary_physical"

    iget-object v5, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2361
    :cond_53
    const-string v3, "MountService"

    const-string v5, "Skipping move to/from primary physical"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    const/16 v3, 0x52

    invoke-direct {p0, v3}, onMoveStatusLocked(I)V

    .line 2363
    const/16 v3, -0x64

    invoke-direct {p0, v3}, onMoveStatusLocked(I)V

    .line 2364
    invoke-direct {p0}, resetIfReadyAndConnectedLocked()V

    .line 2386
    :goto_67
    monitor-exit v4

    .line 2387
    :goto_68
    return-void

    .line 2367
    :cond_69
    iget-object v3, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v3}, findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 2368
    .local v1, "from":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, p1}, findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 2370
    .local v2, "to":Landroid/os/storage/VolumeInfo;
    if-nez v1, :cond_95

    .line 2371
    const-string v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failing move due to missing from volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const/4 v3, -0x6

    invoke-direct {p0, v3}, onMoveStatusLocked(I)V

    .line 2373
    monitor-exit v4

    goto :goto_68

    .line 2374
    :cond_95
    if-nez v2, :cond_b5

    .line 2375
    const-string v3, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failing move due to missing to volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    const/4 v3, -0x6

    invoke-direct {p0, v3}, onMoveStatusLocked(I)V

    .line 2377
    monitor-exit v4
    :try_end_b4
    .catchall {:try_start_2f .. :try_end_b4} :catchall_2c

    goto :goto_68

    .line 2381
    :cond_b5
    :try_start_b5
    iget-object v3, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "move_storage"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_d0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b5 .. :try_end_d0} :catch_d1
    .catchall {:try_start_b5 .. :try_end_d0} :catchall_2c

    goto :goto_67

    .line 2382
    :catch_d1
    move-exception v0

    .line 2383
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_d2
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_2c
.end method

.method public setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 4341
    invoke-direct {p0}, isDeviceEncrypting()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4342
    const-string v3, "MountService"

    const-string v4, "Skip getField if enc/decryption is in progress. Due to time-out."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    :cond_e
    :goto_e
    return v2

    .line 4346
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-direct {p0}, checkSystemUid()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4353
    :try_start_1b
    iget-object v3, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "setfield"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 4354
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1b .. :try_end_3a} :catch_3c

    move-result v2

    goto :goto_e

    .line 4355
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_3c
    move-exception v0

    .line 4357
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Cannot set the property into footer"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 1864
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 2204
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, enforcePermission(Ljava/lang/String;)V

    .line 2205
    invoke-direct {p0}, waitForReady()V

    .line 2207
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVolumeNickname :: = fsUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "nickname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2210
    :try_start_32
    iget-object v1, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 2211
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 2212
    iget-object v1, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->access$2000(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2213
    invoke-direct {p0}, writeSettingsLocked()V

    .line 2214
    monitor-exit v2

    .line 2215
    return-void

    .line 2214
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_46
    move-exception v1

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 1888
    const-string v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, validatePermission(Ljava/lang/String;)V

    .line 1890
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1891
    :try_start_8
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    .line 1892
    .local v1, "res":[Landroid/os/storage/VolumeInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_86

    .line 1893
    iget-object v2, p0, mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0

    .line 1894
    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1895
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1896
    aget-object v2, v1, v0

    const/4 v4, 0x2

    iput v4, v2, Landroid/os/storage/VolumeInfo;->state:I

    .line 1900
    :cond_3b
    :goto_3b
    const-string v2, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " :::: setVolumeState :: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    iget v5, v5, Landroid/os/storage/VolumeInfo;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    monitor-exit v3

    .line 1906
    :goto_70
    return-void

    .line 1897
    :cond_71
    const-string/jumbo v2, "unmounted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1898
    aget-object v2, v1, v0

    const/4 v4, 0x0

    iput v4, v2, Landroid/os/storage/VolumeInfo;->state:I

    goto :goto_3b

    .line 1905
    .end local v0    # "i":I
    .end local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :catchall_80
    move-exception v2

    monitor-exit v3
    :try_end_82
    .catchall {:try_start_8 .. :try_end_82} :catchall_80

    throw v2

    .line 1892
    .restart local v0    # "i":I
    .restart local v1    # "res":[Landroid/os/storage/VolumeInfo;
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1904
    :cond_86
    :try_start_86
    const-string v2, "MountService"

    const-string v4, " :::: setVolumeState :: Not mathced volume"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_80

    goto :goto_70
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 8
    .param p1, "fsUuid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    .line 2219
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, enforcePermission(Ljava/lang/String;)V

    .line 2220
    invoke-direct {p0}, waitForReady()V

    .line 2222
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVolumeUserFlags :: = fsUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2225
    :try_start_3b
    iget-object v1, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    .line 2226
    .local v0, "rec":Landroid/os/storage/VolumeRecord;
    iget v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    xor-int/lit8 v3, p3, -0x1

    and-int/2addr v1, v3

    and-int v3, p2, p3

    or-int/2addr v1, v3

    iput v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 2227
    iget-object v1, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    # invokes: Lcom/android/server/MountService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/MountService$Callbacks;->access$2000(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    .line 2228
    invoke-direct {p0}, writeSettingsLocked()V

    .line 2229
    monitor-exit v2

    .line 2230
    return-void

    .line 2229
    .end local v0    # "rec":Landroid/os/storage/VolumeRecord;
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_57

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;

    .prologue
    .line 1851
    const-string v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, enforcePermission(Ljava/lang/String;)V

    .line 1853
    const-string v0, "MountService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1855
    return-void
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 13
    .param p1, "volId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 2057
    const-string v5, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v5}, enforcePermission(Ljava/lang/String;)V

    .line 2058
    invoke-direct {p0}, waitForReady()V

    .line 2061
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, "pathSplits":[Ljava/lang/String;
    aget-object v5, v1, v6

    invoke-direct {p0, v5}, findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    .line 2066
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unmount :: = volId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2071
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2073
    .local v2, "ident":J
    :try_start_44
    iget-object v6, p0, mUnmountLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_b2

    .line 2074
    :try_start_47
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 2075
    iget-object v5, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 2076
    iget-object v5, p0, mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v7, "mUnmountSignal"

    invoke-direct {p0, v5, v7}, waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 2077
    const/4 v5, 0x0

    iput-object v5, p0, mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 2078
    monitor-exit v6
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_af

    .line 2080
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2085
    .end local v2    # "ident":J
    :cond_65
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 2086
    array-length v5, v1

    if-ne v5, v10, :cond_bc

    .line 2087
    const-string/jumbo v5, "hidden"

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 2088
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doUnmountVolume :: volId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :try_start_92
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "volume"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "unmount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    aget-object v9, v1, v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_ae
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_92 .. :try_end_ae} :catch_b7

    .line 2113
    :goto_ae
    return-void

    .line 2078
    .restart local v2    # "ident":J
    :catchall_af
    move-exception v5

    :try_start_b0
    monitor-exit v6
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v5
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 2080
    :catchall_b2
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2091
    .end local v2    # "ident":J
    :catch_b7
    move-exception v0

    .line 2092
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->printStackTrace()V

    goto :goto_ae

    .line 2099
    .end local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_bc
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    packed-switch v5, :pswitch_data_ea

    .line 2104
    const-string v5, "MountService"

    const-string/jumbo v6, "unmount :: already unmounted!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 2109
    :pswitch_cc
    :try_start_cc
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "unmount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v4, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_e2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_cc .. :try_end_e2} :catch_e3

    goto :goto_ae

    .line 2110
    :catch_e3
    move-exception v0

    .line 2111
    .restart local v0    # "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 2099
    nop

    :pswitch_data_ea
    .packed-switch 0x2
        :pswitch_cc
        :pswitch_cc
    .end packed-switch
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 14
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "token"    # Landroid/os/storage/IObbActionListener;
    .param p4, "nonce"    # I

    .prologue
    .line 2909
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    iget-object v2, p0, mObbMounts:Ljava/util/Map;

    monitor-enter v2

    .line 2913
    :try_start_9
    iget-object v1, p0, mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/MountService$ObbState;

    .line 2914
    .local v8, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_51

    .line 2916
    if-eqz v8, :cond_54

    .line 2918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2919
    .local v4, "callingUid":I
    new-instance v0, Lcom/android/server/MountService$ObbState;

    iget-object v3, v8, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MountService$ObbState;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    .line 2921
    .local v0, "newState":Lcom/android/server/MountService$ObbState;
    new-instance v7, Lcom/android/server/MountService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    .line 2922
    .local v7, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    iget-object v2, p0, mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2925
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send to OBB handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    .end local v0    # "newState":Lcom/android/server/MountService$ObbState;
    .end local v4    # "callingUid":I
    .end local v7    # "action":Lcom/android/server/MountService$ObbAction;
    :goto_50
    return-void

    .line 2914
    .end local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1

    .line 2927
    .restart local v8    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_54
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2681
    const-string v5, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " :::: unmountSecureContainer :: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", force = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const-string v5, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v5}, enforcePermission(Ljava/lang/String;)V

    .line 2683
    invoke-direct {p0}, waitForReady()V

    .line 2684
    invoke-direct {p0}, warnOnNotMounted()V

    .line 2686
    iget-object v6, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2687
    :try_start_31
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 2688
    const-string v5, "MountService"

    const-string v7, " :::: unmountSecureContainer :: fail"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const/4 v4, -0x5

    monitor-exit v6

    .line 2732
    :cond_47
    :goto_47
    return v4

    .line 2691
    :cond_48
    invoke-direct {p0, p1}, isExternalSecureContainer(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-direct {p0}, checkExternalSecureContainerMounted()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 2692
    const-string v5, "MountService"

    const-string/jumbo v7, "unmountSecureContainer : no media"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2694
    monitor-exit v6

    goto :goto_47

    .line 2696
    :catchall_68
    move-exception v5

    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_31 .. :try_end_6a} :catchall_68

    throw v5

    :cond_6b
    :try_start_6b
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_68

    .line 2704
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 2706
    const/4 v4, 0x0

    .line 2708
    .local v4, "rc":I
    :try_start_74
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "asec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "unmount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2709
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    if-eqz p2, :cond_8f

    .line 2710
    const-string/jumbo v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2712
    :cond_8f
    iget-object v5, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_94
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_74 .. :try_end_94} :catch_a8

    .line 2727
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_94
    if-nez v4, :cond_47

    .line 2728
    iget-object v6, p0, mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 2729
    :try_start_99
    iget-object v5, p0, mAsecMountSet:Ljava/util/HashSet;

    new-instance v7, Lcom/android/server/MountService$PackageInstalledMap;

    invoke-direct {v7, p0, p1}, Lcom/android/server/MountService$PackageInstalledMap;-><init>(Lcom/android/server/MountService;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2730
    monitor-exit v6

    goto :goto_47

    :catchall_a5
    move-exception v5

    monitor-exit v6
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_a5

    throw v5

    .line 2713
    :catch_a8
    move-exception v2

    .line 2714
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const/4 v1, 0x0

    .line 2716
    .local v1, "code":I
    :try_start_aa
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_ad
    .catch Ljava/lang/NullPointerException; {:try_start_aa .. :try_end_ad} :catch_b4

    move-result v1

    .line 2720
    const/16 v5, 0x195

    if-ne v1, v5, :cond_b7

    .line 2721
    const/4 v4, -0x7

    goto :goto_94

    .line 2717
    :catch_b4
    move-exception v3

    .line 2718
    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v4, -0x1

    goto :goto_47

    .line 2723
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_b7
    const/4 v4, -0x1

    goto :goto_94
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "removeEncryption"    # Z

    .prologue
    .line 1943
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unmountVolume :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-direct {p0, p1}, findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, unmount(Ljava/lang/String;)V

    .line 1945
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 1846
    iget-object v0, p0, mCallbacks:Lcom/android/server/MountService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/MountService$Callbacks;->unregister(Landroid/os/storage/IMountServiceListener;)V

    .line 1847
    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    .line 3106
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3109
    :cond_11
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3116
    :cond_2a
    invoke-direct {p0}, waitForReady()V

    .line 3119
    const-string v2, "MountService"

    const-string/jumbo v3, "validating encryption password..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :try_start_35
    iget-object v2, p0, mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "verifypw"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 3125
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_73
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_73} :catch_75

    move-result v2

    .line 3129
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_74
    return v2

    .line 3127
    :catch_75
    move-exception v0

    .line 3129
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    goto :goto_74
.end method

.method public waitForAsecScan()V
    .registers 3

    .prologue
    .line 851
    iget-object v0, p0, mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mAsecsScanned"

    invoke-direct {p0, v0, v1}, waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    .line 852
    return-void
.end method
