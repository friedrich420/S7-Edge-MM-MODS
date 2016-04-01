.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$6;,
        Lcom/android/server/backup/BackupManagerService$EdmFullObserver;,
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/backup/BackupManagerService$PerformClearTask;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$RestorePolicy;,
        Lcom/android/server/backup/BackupManagerService$FileMetadata;,
        Lcom/android/server/backup/BackupManagerService$RestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine;,
        Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/backup/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/backup/BackupManagerService$BackupState;,
        Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/backup/BackupManagerService$TransportConnection;,
        Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/backup/BackupManagerService$BackupHandler;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEntry;,
        Lcom/android/server/backup/BackupManagerService$Operation;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/backup/BackupManagerService$FullBackupParams;,
        Lcom/android/server/backup/BackupManagerService$FullParams;,
        Lcom/android/server/backup/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/backup/BackupManagerService$ClearParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/backup/BackupManagerService$Lifecycle;,
        Lcom/android/server/backup/BackupManagerService$BackupRequest;
    }
.end annotation


# static fields
.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x3

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field static final BACKUP_METADATA_VERSION:I = 0x1

.field static final BACKUP_PW_FILE_VERSION:I = 0x2

.field static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field static final DEBUG_SCHEDULING:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_ADB_BACKUP:I = 0x2

.field private static final MSG_RUN_ADB_RESTORE:I = 0xa

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field private static final MSG_WIDGET_BROADCAST:I = 0xd

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SCHEDULE_FILE_VERSION:I = 0x1

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field private static final sFullBackupExceptionPackages:[Ljava/lang/String;

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field private final DEBUG_BACKUP:Z

.field private final PRIVILEGE_BACKUP_ALLAPPS:I

.field private final PRIVILEGE_BACKUP_ALLSYSTEM:I

.field private final PRIVILEGE_BACKUP_APK:I

.field private final PRIVILEGE_BACKUP_COMPRESS:I

.field private final PRIVILEGE_BACKUP_IGNORE_ALLOW_BACKUP:I

.field private final PRIVILEGE_BACKUP_IGNORE_FORWARD_LOCK:I

.field private final PRIVILEGE_BACKUP_OBB:I

.field private final PRIVILEGE_BACKUP_OBBONLY:I

.field private final PRIVILEGE_BACKUP_SHARED:I

.field private final PRIVILEGE_BACKUP_SIZEONLY:I

.field private final PRIVILEGE_BACKUP_WIDGETS:I

.field private isEdmBackupFail:Z

.field private isEdmBackupRequest:Z

.field private isEdmRestoreFail:Z

.field private isEdmRestoreRequest:Z

.field mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBackupRestoreLock:Ljava/lang/Object;

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field private mEdmBackupAppPkgName:Ljava/lang/String;

.field private mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

.field private mEdmRestoreAppPkgName:Ljava/lang/String;

.field private mEdmUserId:I

.field mEnabled:Z

.field private mEncPassword:Ljava/lang/String;

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExceptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraFlag:I

.field mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupScheduleFile:Ljava/io/File;

.field mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private mPasswordVersionFile:Ljava/io/File;

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrivilegePkgName:[Ljava/lang/String;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransportConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$TransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportNames:Landroid/util/ArrayMap;
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

.field final mTransportServiceIntent:Landroid/content/Intent;

.field final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;

.field private needUpdateBackupAlarm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 279
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.sharedstoragebackup"

    aput-object v2, v0, v1

    sput-object v0, sFullBackupExceptionPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/server/backup/Trampoline;

    .prologue
    .line 1021
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 269
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmBackupRequest:Z

    .line 270
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmRestoreRequest:Z

    .line 271
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, needUpdateBackupAlarm:Z

    .line 272
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmBackupFail:Z

    .line 273
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmRestoreFail:Z

    .line 274
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEdmBackupAppPkgName:Ljava/lang/String;

    .line 275
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEdmRestoreAppPkgName:Ljava/lang/String;

    .line 276
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mEdmUserId:I

    .line 284
    new-instance v18, Ljava/util/ArrayList;

    sget-object v19, sFullBackupExceptionPackages:[Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mExceptionList:Ljava/util/List;

    .line 288
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupParticipants:Landroid/util/SparseArray;

    .line 303
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPendingBackups:Ljava/util/HashMap;

    .line 310
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQueueLock:Ljava/lang/Object;

    .line 316
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAgentConnectLock:Ljava/lang/Object;

    .line 324
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupTrace:Ljava/util/List;

    .line 327
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mClearDataLock:Ljava/lang/Object;

    .line 331
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.backup.TRANSPORT_HOST"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransportServiceIntent:Landroid/content/Intent;

    .line 332
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransportNames:Landroid/util/ArrayMap;

    .line 334
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransports:Landroid/util/ArrayMap;

    .line 336
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransportConnections:Landroid/util/ArrayMap;

    .line 344
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_APK:I

    .line 345
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_OBB:I

    .line 346
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_SHARED:I

    .line 347
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_WIDGETS:I

    .line 348
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_ALLAPPS:I

    .line 349
    const/16 v18, 0x20

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_ALLSYSTEM:I

    .line 350
    const/16 v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_COMPRESS:I

    .line 351
    const/16 v18, 0x80

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_OBBONLY:I

    .line 352
    const/16 v18, 0x100

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_SIZEONLY:I

    .line 353
    const/16 v18, 0x200

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_IGNORE_ALLOW_BACKUP:I

    .line 354
    const/16 v18, 0x400

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, PRIVILEGE_BACKUP_IGNORE_FORWARD_LOCK:I

    .line 356
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupRestoreLock:Ljava/lang/Object;

    .line 357
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEncPassword:Ljava/lang/String;

    .line 358
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mExtraFlag:I

    .line 359
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "com.sec.android.easyMover"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "com.sec.android.Kies"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPrivilegePkgName:[Ljava/lang/String;

    .line 362
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, DEBUG_BACKUP:Z

    .line 597
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentOperations:Landroid/util/SparseArray;

    .line 598
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentOpLock:Ljava/lang/Object;

    .line 599
    new-instance v18, Ljava/util/Random;

    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTokenGenerator:Ljava/util/Random;

    .line 601
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mFullConfirmations:Landroid/util/SparseArray;

    .line 615
    new-instance v18, Ljava/security/SecureRandom;

    invoke-direct/range {v18 .. v18}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRng:Ljava/security/SecureRandom;

    .line 632
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEverStoredApps:Ljava/util/HashSet;

    .line 636
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAncestralPackages:Ljava/util/Set;

    .line 637
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mAncestralToken:J

    .line 638
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurrentToken:J

    .line 642
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPendingInits:Ljava/util/HashSet;

    .line 1447
    new-instance v18, Lcom/android/server/backup/BackupManagerService$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1827
    new-instance v18, Lcom/android/server/backup/BackupManagerService$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1022
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 1023
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPackageManager:Landroid/content/pm/PackageManager;

    .line 1024
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 1025
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mActivityManager:Landroid/app/IActivityManager;

    .line 1027
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AlarmManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAlarmManager:Landroid/app/AlarmManager;

    .line 1028
    const-string/jumbo v18, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPowerManager:Landroid/os/PowerManager;

    .line 1029
    const-string/jumbo v18, "mount"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mMountService:Landroid/os/storage/IMountService;

    .line 1031
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 1034
    new-instance v18, Landroid/os/HandlerThread;

    const-string v19, "backup"

    const/16 v20, 0xa

    invoke-direct/range {v18 .. v20}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mHandlerThread:Landroid/os/HandlerThread;

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    .line 1036
    new-instance v18, Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1040
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v18, "device_provisioned"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_587

    const/16 v18, 0x1

    :goto_28c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mProvisioned:Z

    .line 1042
    const-string v18, "backup_auto_restore"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_58b

    const/16 v18, 0x1

    :goto_2a2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAutoRestore:Z

    .line 1045
    new-instance v18, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mProvisionedObserver:Landroid/database/ContentObserver;

    .line 1046
    const-string/jumbo v18, "device_provisioned"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mProvisionedObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1052
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v19

    const-string v20, "backup"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBaseStateDir:Ljava/io/File;

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_31b

    .line 1055
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SELinux restorecon failed on "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_31b
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mDataDir:Ljava/io/File;

    .line 1059
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mPasswordVersion:I

    .line 1060
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pwversion"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordVersionFile:Ljava/io/File;

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_375

    .line 1062
    const/4 v7, 0x0

    .line 1063
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1065
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_34f
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_35c
    .catch Ljava/io/IOException; {:try_start_34f .. :try_end_35c} :catch_599
    .catchall {:try_start_34f .. :try_end_35c} :catchall_5b7

    .line 1066
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_35c
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_361
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_361} :catch_645
    .catchall {:try_start_35c .. :try_end_361} :catchall_63c

    .line 1067
    .end local v11    # "in":Ljava/io/DataInputStream;
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_361
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mPasswordVersion:I
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_361 .. :try_end_36b} :catch_649
    .catchall {:try_start_361 .. :try_end_36b} :catchall_640

    .line 1072
    if-eqz v12, :cond_370

    :try_start_36d
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1073
    :cond_370
    if-eqz v8, :cond_375

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_375
    .catch Ljava/io/IOException; {:try_start_36d .. :try_end_375} :catch_58f

    .line 1080
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    :cond_375
    :goto_375
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pwhash"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordHashFile:Ljava/io/File;

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3d5

    .line 1082
    const/4 v7, 0x0

    .line 1083
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1085
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :try_start_397
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3a4
    .catch Ljava/io/IOException; {:try_start_397 .. :try_end_3a4} :catch_5d6
    .catchall {:try_start_397 .. :try_end_3a4} :catchall_5f4

    .line 1086
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :try_start_3a4
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b2
    .catch Ljava/io/IOException; {:try_start_3a4 .. :try_end_3b2} :catch_635
    .catchall {:try_start_3a4 .. :try_end_3b2} :catchall_62e

    .line 1089
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :try_start_3b2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1090
    .local v16, "saltLen":I
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 1091
    .local v15, "salt":[B
    invoke-virtual {v12, v15}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1092
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordHash:Ljava/lang/String;

    .line 1093
    move-object/from16 v0, p0

    iput-object v15, v0, mPasswordSalt:[B
    :try_end_3cb
    .catch Ljava/io/IOException; {:try_start_3b2 .. :try_end_3cb} :catch_638
    .catchall {:try_start_3b2 .. :try_end_3cb} :catchall_631

    .line 1098
    if-eqz v12, :cond_3d0

    :try_start_3cd
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1099
    :cond_3d0
    if-eqz v8, :cond_3d5

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3d5
    .catch Ljava/io/IOException; {:try_start_3cd .. :try_end_3d5} :catch_5cc

    .line 1107
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    :cond_3d5
    :goto_3d5
    new-instance v18, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 1108
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1109
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v18, "android.app.backup.intent.RUN"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const-string v19, "android.permission.BACKUP"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1113
    new-instance v18, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 1114
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1115
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string v18, "android.app.backup.intent.INIT"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const-string v19, "android.permission.BACKUP"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1120
    new-instance v18, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    .line 1123
    new-instance v4, Landroid/content/Intent;

    const-string v18, "android.app.backup.intent.RUN"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1124
    .local v4, "backupIntent":Landroid/content/Intent;
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1125
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunBackupIntent:Landroid/app/PendingIntent;

    .line 1127
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.app.backup.intent.INIT"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v13, "initIntent":Landroid/content/Intent;
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1129
    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunInitIntent:Landroid/app/PendingIntent;

    .line 1132
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pending"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mJournalDir:Ljava/io/File;

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, mJournalDir:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 1134
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mJournal:Ljava/io/File;

    .line 1137
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "fb-schedule"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mFullBackupScheduleFile:Ljava/io/File;

    .line 1138
    invoke-direct/range {p0 .. p0}, initPackageTracking()V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1144
    const/16 v18, 0x0

    :try_start_4dd
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 1145
    monitor-exit v19
    :try_end_4e5
    .catchall {:try_start_4dd .. :try_end_4e5} :catchall_609

    .line 1149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "backup_transport"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentTransport:Ljava/lang/String;

    .line 1151
    const-string v18, ""

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_50b

    .line 1152
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentTransport:Ljava/lang/String;

    .line 1154
    :cond_50b
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Starting with transport "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTransportServiceIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 1160
    .local v9, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v19, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found transports: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v9, :cond_60c

    const-string/jumbo v18, "null"

    :goto_553
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    if-eqz v9, :cond_616

    .line 1163
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_569
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_616

    .line 1164
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 1168
    .local v17, "transport":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 1163
    add-int/lit8 v10, v10, 0x1

    goto :goto_569

    .line 1040
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i":I
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "transport":Landroid/content/pm/ServiceInfo;
    :cond_587
    const/16 v18, 0x0

    goto/16 :goto_28c

    .line 1042
    :cond_58b
    const/16 v18, 0x0

    goto/16 :goto_2a2

    .line 1074
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_58f
    move-exception v5

    .line 1075
    .local v5, "e":Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Error closing pw version files"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_375

    .line 1068
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_599
    move-exception v5

    .line 1069
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_59a
    :try_start_59a
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to read backup pw version"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a1
    .catchall {:try_start_59a .. :try_end_5a1} :catchall_5b7

    .line 1072
    if-eqz v11, :cond_5a6

    :try_start_5a3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1073
    :cond_5a6
    if-eqz v7, :cond_375

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5ab
    .catch Ljava/io/IOException; {:try_start_5a3 .. :try_end_5ab} :catch_5ad

    goto/16 :goto_375

    .line 1074
    :catch_5ad
    move-exception v5

    .line 1075
    const-string v18, "BackupManagerService"

    const-string v19, "Error closing pw version files"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_375

    .line 1071
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_5b7
    move-exception v18

    .line 1072
    :goto_5b8
    if-eqz v11, :cond_5bd

    :try_start_5ba
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1073
    :cond_5bd
    if-eqz v7, :cond_5c2

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5c2
    .catch Ljava/io/IOException; {:try_start_5ba .. :try_end_5c2} :catch_5c3

    .line 1076
    :cond_5c2
    :goto_5c2
    throw v18

    .line 1074
    :catch_5c3
    move-exception v5

    .line 1075
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Error closing pw version files"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c2

    .line 1100
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "salt":[B
    .restart local v16    # "saltLen":I
    :catch_5cc
    move-exception v5

    .line 1101
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to close streams"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d5

    .line 1094
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_5d6
    move-exception v5

    .line 1095
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_5d7
    :try_start_5d7
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to read saved backup pw hash"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5de
    .catchall {:try_start_5d7 .. :try_end_5de} :catchall_5f4

    .line 1098
    if-eqz v11, :cond_5e3

    :try_start_5e0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1099
    :cond_5e3
    if-eqz v7, :cond_3d5

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5e8
    .catch Ljava/io/IOException; {:try_start_5e0 .. :try_end_5e8} :catch_5ea

    goto/16 :goto_3d5

    .line 1100
    :catch_5ea
    move-exception v5

    .line 1101
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to close streams"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d5

    .line 1097
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_5f4
    move-exception v18

    .line 1098
    :goto_5f5
    if-eqz v11, :cond_5fa

    :try_start_5f7
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1099
    :cond_5fa
    if-eqz v7, :cond_5ff

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5ff
    .catch Ljava/io/IOException; {:try_start_5f7 .. :try_end_5ff} :catch_600

    .line 1102
    :cond_5ff
    :goto_5ff
    throw v18

    .line 1100
    :catch_600
    move-exception v5

    .line 1101
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to close streams"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5ff

    .line 1145
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "backupIntent":Landroid/content/Intent;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "initIntent":Landroid/content/Intent;
    :catchall_609
    move-exception v18

    :try_start_60a
    monitor-exit v19
    :try_end_60b
    .catchall {:try_start_60a .. :try_end_60b} :catchall_609

    throw v18

    .line 1160
    .restart local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_60c
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_553

    .line 1174
    :cond_616
    invoke-direct/range {p0 .. p0}, parseLeftoverJournals()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-string v20, "*backup*"

    invoke-virtual/range {v18 .. v20}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 1178
    return-void

    .line 1097
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "initIntent":Landroid/content/Intent;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catchall_62e
    move-exception v18

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_5f5

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_631
    move-exception v18

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_5f5

    .line 1094
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_635
    move-exception v5

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_5d7

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_638
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_5d7

    .line 1071
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catchall_63c
    move-exception v18

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_5b8

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_640
    move-exception v18

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_5b8

    .line 1068
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_645
    move-exception v5

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_59a

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_649
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_59a
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/backup/BackupManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    invoke-direct {p0}, warnEdmAdminOperationCompleted()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-object v0, p0, mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/backup/BackupManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-object v0, p0, mExceptionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/backup/BackupManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-boolean v0, p0, isEdmBackupFail:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/backup/BackupManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, isEdmBackupFail:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/backup/BackupManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget v0, p0, mEdmUserId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/backup/BackupManagerService;I)[B
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [B
    .param p4, "x4"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-object v0, p0, mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 168
    invoke-direct {p0, p1}, byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B
    .registers 6
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/backup/BackupManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-boolean v0, p0, isEdmRestoreFail:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/backup/BackupManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, isEdmRestoreFail:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashSet;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, resetEdmBackupTags(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1}, resetEdmRestoreTags(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/backup/BackupManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-boolean v0, p0, isEdmRestoreRequest:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-object v0, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/backup/BackupManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 168
    iget-boolean v0, p0, isEdmBackupRequest:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/backup/BackupManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, needUpdateBackupAlarm:Z

    return p1
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2106
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 2107
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1a

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2108
    :cond_1a
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2109
    .local v3, "uid":I
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 2110
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_32

    .line 2111
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2112
    .restart local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2114
    :cond_32
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2119
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4

    .line 2122
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uid":I
    :cond_3d
    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    .line 705
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 707
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 711
    :cond_10
    :goto_10
    return v0

    .line 707
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 686
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_a

    .line 700
    :cond_9
    :goto_9
    return v0

    .line 691
    :cond_a
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_14

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 696
    :cond_14
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 700
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private backupPasswordMatches(Ljava/lang/String;)Z
    .registers 8
    .param p1, "currentPw"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1686
    invoke-virtual {p0}, hasBackupPassword()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1687
    iget v3, p0, mPasswordVersion:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2a

    move v0, v1

    .line 1688
    .local v0, "pbkdf2Fallback":Z
    :goto_10
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-virtual {p0, v3, p1, v5}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2c

    if-eqz v0, :cond_22

    const-string v3, "PBKDF2WithHmacSHA1And8bit"

    invoke-virtual {p0, v3, p1, v5}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1691
    :cond_22
    const-string v1, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    .end local v0    # "pbkdf2Fallback":Z
    :goto_29
    return v2

    :cond_2a
    move v0, v2

    .line 1687
    goto :goto_10

    :cond_2c
    move v2, v1

    .line 1695
    goto :goto_29
.end method

.method private buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 10
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwArray"    # [C
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1522
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1523
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x100

    invoke-direct {v2, p2, p3, p4, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1524
    .local v2, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_1a

    move-result-object v3

    .line 1530
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "ks":Ljava/security/spec/KeySpec;
    :goto_f
    return-object v3

    .line 1525
    :catch_10
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "BackupManagerService"

    const-string v4, "Invalid key spec for PBKDF2!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :goto_18
    const/4 v3, 0x0

    goto :goto_f

    .line 1527
    :catch_1a
    move-exception v0

    .line 1528
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "BackupManagerService"

    const-string v4, "PBKDF2 unavailable!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1534
    invoke-direct {p0, p1, p2, p3, p4}, buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1535
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_f

    .line 1536
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 1538
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1517
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # [B

    .prologue
    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1543
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 1544
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1546
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8774
    invoke-direct {p0, p1}, dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 8775
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 8776
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8782
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p2, :cond_30

    .line 8783
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8807
    :goto_2f
    return-void

    .line 8788
    :cond_30
    iget-object v2, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8790
    :try_start_33
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 8793
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 8794
    .local v0, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v1, p0, mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_49

    .line 8800
    invoke-direct {p0, p1}, writeToJournalLocked(Ljava/lang/String;)V

    .line 8803
    .end local v0    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_50

    .line 8806
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    goto :goto_2f

    .line 8803
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8813
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 8815
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 8816
    :try_start_16
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    monitor-exit v5

    .line 8835
    :goto_23
    return-object v4

    .line 8817
    :catchall_24
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v4

    .line 8821
    :cond_27
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 8822
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "@pm@"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 8823
    const-string v4, "@pm@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_39
    move-object v4, v3

    .line 8835
    goto :goto_23

    .line 8825
    :cond_3b
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 8826
    :try_start_3e
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8827
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_45
    if-ge v1, v0, :cond_57

    .line 8828
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 8829
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_54

    .line 8830
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 8827
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 8833
    .end local v2    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_57
    monitor-exit v5

    goto :goto_39

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_59
    move-exception v4

    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_3e .. :try_end_5b} :catchall_59

    throw v4
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 10220
    invoke-virtual {p0}, allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 10221
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v3, "Defined backup agents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 10223
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10224
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 10225
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 10227
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_35
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 32
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 10230
    move-object/from16 v0, p0

    iget-object v0, v0, mQueueLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 10231
    :try_start_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Backup Manager is "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, mEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_234

    const-string/jumbo v25, "enabled"

    :goto_21
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " / "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, mProvisioned:Z

    move/from16 v25, v0

    if-nez v25, :cond_239

    const-string/jumbo v25, "not "

    :goto_3e
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, "provisioned / "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingInits:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    move-result v25

    if-nez v25, :cond_23d

    const-string/jumbo v25, "not "

    :goto_60
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, "pending init"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10234
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Auto-restore is "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAutoRestore:Z

    move/from16 v25, v0

    if-eqz v25, :cond_241

    const-string/jumbo v25, "enabled"

    :goto_98
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10235
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBackupRunning:Z

    move/from16 v25, v0

    if-eqz v25, :cond_bc

    const-string v25, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10236
    :cond_bc
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Last backup pass started: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, mLastBackupPass:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " (now = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v27, 0x29

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10238
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "  next scheduled: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    move-result-wide v28

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10240
    const-string v25, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10241
    invoke-virtual/range {p0 .. p0}, listAllTransports()[Ljava/lang/String;

    move-result-object v23

    .line 10242
    .local v23, "transports":[Ljava/lang/String;
    if-eqz v23, :cond_27b

    .line 10243
    invoke-virtual/range {p0 .. p0}, listAllTransports()[Ljava/lang/String;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_140
    if-ge v14, v15, :cond_27b

    aget-object v21, v6, v14

    .line 10244
    .local v21, "t":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_246

    const-string v25, "  * "

    :goto_15b
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_176
    .catchall {:try_start_7 .. :try_end_176} :catchall_2e0

    .line 10246
    :try_start_176
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v22

    .line 10247
    .local v22, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10248
    .local v8, "dir":Ljava/io/File;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "       destination: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10249
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "       intent: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10250
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .local v7, "arr$":[Ljava/io/File;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_1e5
    move/from16 v0, v16

    if-ge v13, v0, :cond_276

    aget-object v11, v7, v13

    .line 10251
    .local v11, "f":Ljava/io/File;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "       "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " - "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v28

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " state bytes"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_231} :catch_24a
    .catchall {:try_start_176 .. :try_end_231} :catchall_2e0

    .line 10250
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e5

    .line 10231
    .end local v7    # "arr$":[Ljava/io/File;
    .end local v8    # "dir":Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "t":Ljava/lang/String;
    .end local v22    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v23    # "transports":[Ljava/lang/String;
    :cond_234
    :try_start_234
    const-string/jumbo v25, "disabled"

    goto/16 :goto_21

    :cond_239
    const-string v25, ""

    goto/16 :goto_3e

    :cond_23d
    const-string v25, ""

    goto/16 :goto_60

    .line 10234
    :cond_241
    const-string/jumbo v25, "disabled"

    goto/16 :goto_98

    .line 10244
    .restart local v14    # "i$":I
    .restart local v21    # "t":Ljava/lang/String;
    .restart local v23    # "transports":[Ljava/lang/String;
    :cond_246
    const-string v25, "    "

    goto/16 :goto_15b

    .line 10253
    .end local v14    # "i$":I
    :catch_24a
    move-exception v9

    .line 10254
    .local v9, "e":Ljava/lang/Exception;
    const-string v25, "BackupManagerService"

    const-string v27, "Error in transport"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10255
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "        Error: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10243
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_276
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_140

    .line 10260
    .end local v14    # "i$":I
    .end local v21    # "t":Ljava/lang/String;
    :cond_27b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Pending init: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingInits:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10261
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingInits:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2b1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2e3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 10262
    .local v20, "s":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2b1

    .line 10314
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v20    # "s":Ljava/lang/String;
    .end local v23    # "transports":[Ljava/lang/String;
    :catchall_2e0
    move-exception v25

    monitor-exit v26
    :try_end_2e2
    .catchall {:try_start_234 .. :try_end_2e2} :catchall_2e0

    throw v25

    .line 10266
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v23    # "transports":[Ljava/lang/String;
    :cond_2e3
    :try_start_2e3
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupTrace:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_2ea
    .catchall {:try_start_2e3 .. :try_end_2ea} :catchall_2e0

    .line 10267
    :try_start_2ea
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupTrace:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_33b

    .line 10268
    const-string v25, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10269
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupTrace:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_309
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_33b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 10270
    .restart local v20    # "s":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "   "

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_309

    .line 10273
    .end local v20    # "s":Ljava/lang/String;
    :catchall_338
    move-exception v25

    monitor-exit v27
    :try_end_33a
    .catchall {:try_start_2ea .. :try_end_33a} :catchall_338

    :try_start_33a
    throw v25
    :try_end_33b
    .catchall {:try_start_33a .. :try_end_33b} :catchall_2e0

    :cond_33b
    :try_start_33b
    monitor-exit v27
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_338

    .line 10276
    :try_start_33c
    const-string v25, "Ancestral: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, mAncestralToken:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10277
    const-string v25, "Current:   "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, mCurrentToken:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10279
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 10280
    .local v4, "N":I
    const-string v25, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10281
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_384
    if-ge v12, v4, :cond_3e4

    .line 10282
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 10283
    .local v24, "uid":I
    const-string v25, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10284
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 10285
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    .line 10286
    .local v17, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3b4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3e1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10287
    .local v5, "app":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b4

    .line 10281
    .end local v5    # "app":Ljava/lang/String;
    :cond_3e1
    add-int/lit8 v12, v12, 0x1

    goto :goto_384

    .line 10291
    .end local v17    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "uid":I
    :cond_3e4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ancestral packages: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    if-nez v25, :cond_452

    const-string/jumbo v25, "none"

    :goto_3fe
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10293
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    if-eqz v25, :cond_461

    .line 10294
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_423
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_461

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 10295
    .local v18, "pkg":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_423

    .line 10291
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto :goto_3fe

    .line 10299
    :cond_461
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ever backed up: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10300
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_497
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4c6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 10301
    .restart local v18    # "pkg":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_497

    .line 10304
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_4c6
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Pending key/value backup: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10305
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_500
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_52f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 10306
    .local v19, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_500

    .line 10309
    .end local v19    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_52f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Full backup queue:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10310
    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_565
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_59a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 10311
    .local v10, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-string v25, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v10, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 10312
    const-string v25, " : "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_565

    .line 10314
    .end local v10    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_59a
    monitor-exit v26
    :try_end_59b
    .catchall {:try_start_33c .. :try_end_59b} :catchall_2e0

    .line 10315
    return-void
.end method

.method private fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z
    .registers 10
    .param p1, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v3, 0x0

    .line 4691
    if-nez p1, :cond_b

    .line 4692
    const-string v4, "BackupManagerService"

    const-string v5, "Transport not present; full data backup not performed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    :goto_a
    return v3

    .line 4699
    :cond_b
    :try_start_b
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, mBaseStateDir:Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4700
    .local v2, "stateDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "@pm@"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4701
    .local v1, "pmState":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_38

    .line 4703
    const-string v4, "BackupManagerService"

    const-string v5, "Full backup requested but dataset not yet initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_2f

    goto :goto_a

    .line 4707
    .end local v1    # "pmState":Ljava/io/File;
    .end local v2    # "stateDir":Ljava/io/File;
    :catch_2f
    move-exception v0

    .line 4708
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to contact transport"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4712
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pmState":Ljava/io/File;
    .restart local v2    # "stateDir":Ljava/io/File;
    :cond_38
    const/4 v3, 0x1

    goto :goto_a
.end method

.method private getBackupDataSize(Ljava/lang/String;)Ljava/util/Map;
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9020
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string v15, "android.permission.BACKUP"

    const-string/jumbo v16, "fullBackup"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9022
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 9023
    .local v7, "callingUserHandle":I
    if-eqz v7, :cond_1a

    .line 9024
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Backup supported only for the device owner"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 9029
    :cond_1a
    const-wide/16 v4, 0x0

    .line 9030
    .local v4, "appDataSize":J
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 9031
    .local v13, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v14, "size_apkData"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9032
    const-string/jumbo v14, "size_appData"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9033
    const-string/jumbo v14, "size_obbData"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 9038
    .local v10, "oldId":J
    :try_start_49
    move-object/from16 v0, p0

    iget-object v14, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 9039
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_a3

    .line 9040
    iget-object v6, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9043
    .local v6, "appinfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9044
    .local v3, "apkFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_76

    .line 9045
    const-string/jumbo v14, "size_apkData"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9049
    :cond_76
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14}, bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v2

    .line 9050
    .local v2, "agent":Landroid/app/IBackupAgent;
    if-eqz v2, :cond_a3

    .line 9051
    invoke-interface {v2}, Landroid/app/IBackupAgent;->getBackupDataSize()J

    move-result-wide v4

    .line 9052
    const-string/jumbo v14, "size_appData"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9053
    move-object/from16 v0, p0

    iget-object v14, v0, mActivityManager:Landroid/app/IActivityManager;

    iget-object v15, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 9054
    move-object/from16 v0, p0

    iget-object v14, v0, mActivityManager:Landroid/app/IActivityManager;

    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_a3} :catch_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_a3} :catch_b3
    .catchall {:try_start_49 .. :try_end_a3} :catchall_bf

    .line 9062
    .end local v2    # "agent":Landroid/app/IBackupAgent;
    .end local v3    # "apkFile":Ljava/io/File;
    .end local v6    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_a3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9065
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_a6
    return-object v13

    .line 9057
    :catch_a7
    move-exception v8

    .line 9058
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_a8
    const-string v14, "BackupManagerService"

    const-string v15, "Lost app trying to shut down"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_bf

    .line 9062
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a6

    .line 9059
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_b3
    move-exception v9

    .line 9060
    .local v9, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_b4
    const-string v14, "BackupManagerService"

    const-string v15, "app not found"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_bf

    .line 9062
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a6

    .end local v9    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_bf
    move-exception v14

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .registers 1

    .prologue
    .line 371
    sget-object v0, sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 2283
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2284
    :try_start_3
    iget-object v1, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 2285
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_25

    .line 2286
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_25
    monitor-exit v2

    return-object v0

    .line 2289
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method static hashSignature(Landroid/content/pm/Signature;)[B
    .registers 5
    .param p0, "sig"    # Landroid/content/pm/Signature;

    .prologue
    .line 7494
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 7495
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 7496
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v2

    .line 7500
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_11
    return-object v2

    .line 7497
    :catch_12
    move-exception v1

    .line 7498
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "BackupManagerService"

    const-string v3, "No SHA-256 algorithm found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7500
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1550
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1551
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 1552
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1555
    :cond_16
    new-array v2, v0, [B

    .line 1556
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_33

    .line 1557
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1556
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 1559
    :cond_33
    return-object v2
.end method

.method private initPackageTracking()V
    .registers 23

    .prologue
    .line 1251
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "ancestral"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mTokenFile:Ljava/io/File;

    .line 1253
    :try_start_13
    new-instance v17, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, mTokenFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1254
    .local v17, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    .line 1255
    .local v18, "version":I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6d

    .line 1256
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mAncestralToken:J

    .line 1257
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurrentToken:J

    .line 1259
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 1260
    .local v10, "numPackages":I
    if-ltz v10, :cond_6d

    .line 1261
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mAncestralPackages:Ljava/util/Set;

    .line 1262
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_59
    if-ge v7, v10, :cond_6d

    .line 1263
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 1264
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1262
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 1268
    .end local v7    # "i":I
    .end local v10    # "numPackages":I
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_6d
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_70} :catch_f1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_70} :catch_fb

    .line 1279
    .end local v17    # "tf":Ljava/io/RandomAccessFile;
    .end local v18    # "version":I
    :goto_70
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string/jumbo v21, "processed"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mEverStored:Ljava/io/File;

    .line 1280
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "processed.new"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1285
    .local v16, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_a1

    .line 1286
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 1291
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_150

    .line 1292
    const/4 v14, 0x0

    .line 1293
    .local v14, "temp":Ljava/io/RandomAccessFile;
    const/4 v8, 0x0

    .line 1296
    .local v8, "in":Ljava/io/RandomAccessFile;
    :try_start_af
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string/jumbo v19, "rws"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/io/EOFException; {:try_start_af .. :try_end_bb} :catch_109
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_bb} :catch_1d1
    .catchall {:try_start_af .. :try_end_bb} :catchall_1ec

    .line 1297
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .local v15, "temp":Ljava/io/RandomAccessFile;
    :try_start_bb
    new-instance v9, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/io/EOFException; {:try_start_bb .. :try_end_cd} :catch_215
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_cd} :catch_20e
    .catchall {:try_start_bb .. :try_end_cd} :catchall_207

    .line 1301
    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .local v9, "in":Ljava/io/RandomAccessFile;
    :goto_cd
    :try_start_cd
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_d0
    .catch Ljava/io/EOFException; {:try_start_cd .. :try_end_d0} :catch_219
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_211
    .catchall {:try_start_cd .. :try_end_d0} :catchall_20a

    move-result-object v11

    .line 1304
    .local v11, "pkg":Ljava/lang/String;
    :try_start_d1
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1307
    invoke-virtual {v15, v11}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d1 .. :try_end_ee} :catch_ef
    .catch Ljava/io/EOFException; {:try_start_d1 .. :try_end_ee} :catch_219
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_ee} :catch_211
    .catchall {:try_start_d1 .. :try_end_ee} :catchall_20a

    goto :goto_cd

    .line 1309
    :catch_ef
    move-exception v19

    goto :goto_cd

    .line 1269
    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .end local v16    # "tempProcessedFile":Ljava/io/File;
    :catch_f1
    move-exception v6

    .line 1271
    .local v6, "fnf":Ljava/io/FileNotFoundException;
    const-string v19, "BackupManagerService"

    const-string v20, "No ancestral data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 1272
    .end local v6    # "fnf":Ljava/io/FileNotFoundException;
    :catch_fb
    move-exception v4

    .line 1273
    .local v4, "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to read token file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_70

    .line 1314
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "tempProcessedFile":Ljava/io/File;
    :catch_109
    move-exception v4

    .line 1317
    .local v4, "e":Ljava/io/EOFException;
    :goto_10a
    :try_start_10a
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_146

    .line 1318
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error renaming "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catchall {:try_start_10a .. :try_end_146} :catchall_1ec

    .line 1323
    :cond_146
    if-eqz v14, :cond_14b

    :try_start_148
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_1fb

    .line 1324
    :cond_14b
    :goto_14b
    if-eqz v8, :cond_150

    :try_start_14d
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_1fe

    .line 1328
    .end local v4    # "e":Ljava/io/EOFException;
    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    :cond_150
    :goto_150
    move-object/from16 v0, p0

    iget-object v0, v0, mQueueLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1330
    :try_start_157
    invoke-direct/range {p0 .. p0}, readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mFullBackupQueue:Ljava/util/ArrayList;

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_174

    .line 1332
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mFullBackupQueue:Ljava/util/ArrayList;

    .line 1334
    :cond_174
    monitor-exit v20
    :try_end_175
    .catchall {:try_start_157 .. :try_end_175} :catchall_1f8

    .line 1338
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1339
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1340
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1341
    const-string v19, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1345
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1346
    .local v13, "sdFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1347
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1349
    return-void

    .line 1320
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    :catch_1d1
    move-exception v4

    .line 1321
    .local v4, "e":Ljava/io/IOException;
    :goto_1d2
    :try_start_1d2
    const-string v19, "BackupManagerService"

    const-string v20, "Error in processed file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1dd
    .catchall {:try_start_1d2 .. :try_end_1dd} :catchall_1ec

    .line 1323
    if-eqz v14, :cond_1e2

    :try_start_1df
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_201

    .line 1324
    :cond_1e2
    :goto_1e2
    if-eqz v8, :cond_150

    :try_start_1e4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1e9

    goto/16 :goto_150

    :catch_1e9
    move-exception v19

    goto/16 :goto_150

    .line 1323
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1ec
    move-exception v19

    :goto_1ed
    if-eqz v14, :cond_1f2

    :try_start_1ef
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f2} :catch_203

    .line 1324
    :cond_1f2
    :goto_1f2
    if-eqz v8, :cond_1f7

    :try_start_1f4
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f7
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_1f7} :catch_205

    :cond_1f7
    :goto_1f7
    throw v19

    .line 1334
    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    :catchall_1f8
    move-exception v19

    :try_start_1f9
    monitor-exit v20
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_1f8

    throw v19

    .line 1323
    .local v4, "e":Ljava/io/EOFException;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    :catch_1fb
    move-exception v19

    goto/16 :goto_14b

    .line 1324
    :catch_1fe
    move-exception v19

    goto/16 :goto_150

    .line 1323
    .local v4, "e":Ljava/io/IOException;
    :catch_201
    move-exception v19

    goto :goto_1e2

    .end local v4    # "e":Ljava/io/IOException;
    :catch_203
    move-exception v20

    goto :goto_1f2

    .line 1324
    :catch_205
    move-exception v20

    goto :goto_1f7

    .line 1323
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catchall_207
    move-exception v19

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1ed

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catchall_20a
    move-exception v19

    move-object v8, v9

    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1ed

    .line 1320
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_20e
    move-exception v4

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1d2

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_211
    move-exception v4

    move-object v8, v9

    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1d2

    .line 1314
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_215
    move-exception v4

    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_10a

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v14    # "temp":Ljava/io/RandomAccessFile;
    .restart local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_219
    move-exception v4

    move-object v8, v9

    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v14    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_10a
.end method

.method private isPrivilegeBackupApp(I)Z
    .registers 10
    .param p1, "uid"    # I

    .prologue
    .line 9510
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 9511
    .local v4, "pkgn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 9513
    .local v5, "privilege":Z
    iget-boolean v6, p0, isEdmBackupRequest:Z

    if-nez v6, :cond_22

    iget-boolean v6, p0, isEdmRestoreRequest:Z

    if-nez v6, :cond_22

    .line 9514
    const-string v6, "android.uid.system:1000"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v6

    if-nez v6, :cond_23

    .line 9516
    const/4 v5, 0x1

    .line 9532
    :cond_22
    :goto_22
    return v5

    .line 9518
    :cond_23
    iget-object v0, p0, mPrivilegePkgName:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_27
    if-ge v1, v2, :cond_22

    aget-object v3, v0, v1

    .line 9519
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android"

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3d

    .line 9521
    const/4 v5, 0x1

    .line 9522
    goto :goto_22

    .line 9518
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method

.method private makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .registers 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1563
    array-length v3, p2

    new-array v2, v3, [C

    .line 1564
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, p2

    if-ge v1, v3, :cond_f

    .line 1565
    aget-byte v3, p2, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1564
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1568
    :cond_f
    invoke-direct {p0, p1, v2, p3, p4}, buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1569
    .local v0, "checksum":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .registers 12

    .prologue
    .line 1489
    iget-object v8, p0, mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v6, :cond_6f

    aget-object v2, v0, v3

    .line 1490
    .local v2, "f":Ljava/io/File;
    iget-object v8, p0, mJournal:Ljava/io/File;

    if-eqz v8, :cond_18

    iget-object v8, p0, mJournal:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v8

    if-eqz v8, :cond_3a

    .line 1494
    :cond_18
    const/4 v4, 0x0

    .line 1496
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_19
    const-string v8, "BackupManagerService"

    const-string v9, "Found stale backup journal, scheduling"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_28} :catch_76
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_3d
    .catchall {:try_start_19 .. :try_end_28} :catchall_5f

    .line 1499
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_28
    :try_start_28
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 1501
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, dataChangedImpl(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/EOFException; {:try_start_28 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_73
    .catchall {:try_start_28 .. :try_end_2f} :catchall_70

    goto :goto_28

    .line 1503
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_30
    move-exception v8

    move-object v4, v5

    .line 1509
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :goto_32
    if-eqz v4, :cond_37

    :try_start_34
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_69

    .line 1510
    :cond_37
    :goto_37
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1489
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1505
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_3d
    move-exception v1

    .line 1506
    .local v1, "e":Ljava/lang/Exception;
    :goto_3e
    :try_start_3e
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5f

    .line 1509
    if-eqz v4, :cond_5b

    :try_start_58
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6b

    .line 1510
    :cond_5b
    :goto_5b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3a

    .line 1509
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v8

    :goto_60
    if-eqz v4, :cond_65

    :try_start_62
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6d

    .line 1510
    :cond_65
    :goto_65
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v8

    .line 1509
    :catch_69
    move-exception v8

    goto :goto_37

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_6b
    move-exception v8

    goto :goto_5b

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6d
    move-exception v9

    goto :goto_65

    .line 1514
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_6f
    return-void

    .line 1509
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catchall_70
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_60

    .line 1505
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catch_73
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_3e

    .line 1503
    :catch_76
    move-exception v8

    goto :goto_32
.end method

.method private randomBytes(I)[B
    .registers 4
    .param p1, "bits"    # I

    .prologue
    .line 1574
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1575
    .local v0, "array":[B
    iget-object v1, p0, mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1576
    return-object v0
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1352
    const/4 v11, 0x0

    .line 1353
    .local v11, "changed":Z
    const/16 v25, 0x0

    .line 1354
    .local v25, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v8

    .line 1357
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_8b

    .line 1358
    const/4 v14, 0x0

    .line 1359
    .local v14, "fstream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 1360
    .local v9, "bufStream":Ljava/io/BufferedInputStream;
    const/16 v18, 0x0

    .line 1362
    .local v18, "in":Ljava/io/DataInputStream;
    :try_start_1d
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_206
    .catchall {:try_start_1d .. :try_end_2a} :catchall_1e0

    .line 1363
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .local v15, "fstream":Ljava/io/FileInputStream;
    :try_start_2a
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_209
    .catchall {:try_start_2a .. :try_end_2f} :catchall_1f1

    .line 1364
    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .local v10, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_2f
    new-instance v19, Ljava/io/DataInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_20d
    .catchall {:try_start_2f .. :try_end_36} :catchall_1f4

    .line 1366
    .end local v18    # "in":Ljava/io/DataInputStream;
    .local v19, "in":Ljava/io/DataInputStream;
    :try_start_36
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    .line 1367
    .local v27, "version":I
    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_da

    .line 1368
    const-string v28, "BackupManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unknown backup schedule version "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v28, Ljava/lang/Exception;

    const-string/jumbo v29, "fb-schedule file version not matched, crash, delete it"

    invoke-direct/range {v28 .. v29}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_67} :catch_67
    .catchall {:try_start_36 .. :try_end_67} :catchall_1f8

    .line 1418
    .end local v27    # "version":I
    :catch_67
    move-exception v12

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .line 1419
    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    :goto_6c
    :try_start_6c
    const-string v28, "BackupManagerService"

    const-string v29, "Unable to read backup schedule"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z
    :try_end_80
    .catchall {:try_start_6c .. :try_end_80} :catchall_1e0

    .line 1421
    const/16 v25, 0x0

    .line 1423
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1424
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1425
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1429
    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    :cond_8b
    :goto_8b
    if-nez v25, :cond_1eb

    .line 1432
    const/4 v11, 0x1

    .line 1433
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1434
    .restart local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_9f
    :goto_9f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1eb

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    .line 1435
    .local v20, "info":Landroid/content/pm/PackageInfo;
    invoke-static/range {v20 .. v20}, appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_9f

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-eqz v28, :cond_9f

    .line 1436
    new-instance v28, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 1372
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v27    # "version":I
    :cond_da
    :try_start_da
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1373
    .local v6, "N":I
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e5} :catch_67
    .catchall {:try_start_da .. :try_end_e5} :catchall_1f8

    .line 1379
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v26, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :try_start_e5
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 1381
    .local v13, "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_ec
    move/from16 v0, v16

    if-ge v0, v6, :cond_188

    .line 1382
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    .line 1383
    .local v24, "pkgName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v22

    .line 1384
    .local v22, "lastBackup":J
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_fd} :catch_17f
    .catchall {:try_start_e5 .. :try_end_fd} :catchall_1fe

    .line 1386
    :try_start_fd
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    .line 1387
    .local v21, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static/range {v21 .. v21}, appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_138

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-eqz v28, :cond_138

    .line 1388
    new-instance v28, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    .end local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_135
    add-int/lit8 v16, v16, 0x1

    goto :goto_ec

    .line 1391
    .restart local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_138
    const-string v28, "BackupManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Package "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " no longer eligible for full backup"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fd .. :try_end_15a} :catch_15b
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_15a} :catch_17f
    .catchall {:try_start_fd .. :try_end_15a} :catchall_1fe

    goto :goto_135

    .line 1395
    .end local v21    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_15b
    move-exception v12

    .line 1397
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_15c
    const-string v28, "BackupManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Package "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " not installed; dropping from full backup"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 1418
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "i":I
    .end local v22    # "lastBackup":J
    .end local v24    # "pkgName":Ljava/lang/String;
    :catch_17f
    move-exception v12

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v25, v26

    .end local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto/16 :goto_6c

    .line 1405
    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v16    # "i":I
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :cond_188
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_18c
    :goto_18c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1d0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 1406
    .local v7, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v7}, appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_18c

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-eqz v28, :cond_18c

    .line 1407
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_18c

    .line 1411
    new-instance v28, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    const/4 v11, 0x1

    goto :goto_18c

    .line 1417
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    :cond_1d0
    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_1d3} :catch_17f
    .catchall {:try_start_15c .. :try_end_1d3} :catchall_1fe

    .line 1423
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1424
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1425
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v25, v26

    .line 1426
    .end local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto/16 :goto_8b

    .line 1423
    .end local v6    # "N":I
    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v13    # "foundApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .end local v16    # "i":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "in":Ljava/io/DataInputStream;
    .end local v27    # "version":I
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    :catchall_1e0
    move-exception v28

    :goto_1e1
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1424
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1425
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v28

    .line 1441
    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    :cond_1eb
    if-eqz v11, :cond_1f0

    .line 1442
    invoke-direct/range {p0 .. p0}, writeFullBackupScheduleAsync()V

    .line 1444
    :cond_1f0
    return-object v25

    .line 1423
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    :catchall_1f1
    move-exception v28

    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1e1

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    :catchall_1f4
    move-exception v28

    move-object v9, v10

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1e1

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    :catchall_1f8
    move-exception v28

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1e1

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .end local v18    # "in":Ljava/io/DataInputStream;
    .end local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v19    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v27    # "version":I
    :catchall_1fe
    move-exception v28

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/DataInputStream;
    .restart local v18    # "in":Ljava/io/DataInputStream;
    move-object v9, v10

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v25, v26

    .end local v26    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v25    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_1e1

    .line 1418
    .end local v6    # "N":I
    .end local v27    # "version":I
    :catch_206
    move-exception v12

    goto/16 :goto_6c

    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    :catch_209
    move-exception v12

    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_6c

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v14    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "fstream":Ljava/io/FileInputStream;
    :catch_20d
    move-exception v12

    move-object v9, v10

    .end local v10    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v14, v15

    .end local v15    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_6c
.end method

.method private registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1785
    iget-object v7, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1786
    :try_start_3
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registering transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    if-eqz p3, :cond_71

    .line 1789
    iget-object v6, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    iget-object v6, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_83

    .line 1803
    :try_start_3c
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 1804
    .local v5, "transportName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, mBaseStateDir:Ljava/io/File;

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1805
    .local v4, "stateDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1807
    new-instance v3, Ljava/io/File;

    const-string v6, "_need_init_"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1808
    .local v3, "initSentinel":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1809
    iget-object v7, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_5a} :catch_89

    .line 1810
    :try_start_5a
    iget-object v6, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1813
    const-wide/32 v0, 0xea60

    .line 1814
    .local v0, "delay":J
    iget-object v6, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v0

    iget-object v9, p0, mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8, v10, v11, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1816
    monitor-exit v7
    :try_end_70
    .catchall {:try_start_5a .. :try_end_70} :catchall_86

    .line 1824
    .end local v0    # "delay":J
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 1792
    :cond_71
    :try_start_71
    iget-object v6, p0, mTransports:Landroid/util/ArrayMap;

    iget-object v8, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    iget-object v6, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    monitor-exit v7

    goto :goto_70

    .line 1797
    :catchall_83
    move-exception v6

    monitor-exit v7
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_83

    throw v6

    .line 1816
    .restart local v3    # "initSentinel":Ljava/io/File;
    .restart local v4    # "stateDir":Ljava/io/File;
    .restart local v5    # "transportName":Ljava/lang/String;
    :catchall_86
    move-exception v6

    :try_start_87
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw v6
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_89} :catch_89

    .line 1818
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :catch_89
    move-exception v2

    .line 1820
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to register transport as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v6, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    iget-object v6, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2148
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2156
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2157
    iget-object v0, p0, mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    :cond_e
    return-void
.end method

.method private resetEdmBackupTags(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 10319
    iput-boolean v2, p0, isEdmBackupRequest:Z

    .line 10320
    const/4 v1, 0x0

    iput-object v1, p0, mEdmBackupAppPkgName:Ljava/lang/String;

    .line 10321
    iput-boolean v2, p0, isEdmBackupFail:Z

    .line 10322
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "edm.intent.action.backup.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10323
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "backupResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10324
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10325
    iget-boolean v1, p0, needUpdateBackupAlarm:Z

    if-eqz v1, :cond_25

    .line 10326
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 10327
    iput-boolean v2, p0, needUpdateBackupAlarm:Z

    .line 10329
    :cond_25
    iput v2, p0, mEdmUserId:I

    .line 10330
    return-void
.end method

.method private resetEdmRestoreTags(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 10334
    iput-boolean v2, p0, isEdmRestoreRequest:Z

    .line 10335
    const/4 v1, 0x0

    iput-object v1, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    .line 10336
    iput-boolean v2, p0, isEdmRestoreFail:Z

    .line 10337
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "edm.intent.action.restore.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10338
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "restoreResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10339
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10340
    iget-boolean v1, p0, needUpdateBackupAlarm:Z

    if-eqz v1, :cond_26

    .line 10341
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 10342
    iput-boolean v2, p0, needUpdateBackupAlarm:Z

    .line 10344
    :cond_26
    iput v2, p0, mEdmUserId:I

    .line 10345
    return-void
.end method

.method private routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)J
    .registers 13
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3430
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3431
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3433
    .local v2, "in":Ljava/io/DataInputStream;
    const v7, 0x8000

    new-array v0, v7, [B

    .line 3435
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 3438
    .local v6, "total":I
    :cond_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "chunkTotal":I
    if-lez v1, :cond_2e

    .line 3439
    add-int/2addr v6, v1

    .line 3440
    :goto_1b
    if-lez v1, :cond_14

    .line 3441
    array-length v7, v0

    if-le v1, v7, :cond_2c

    array-length v5, v0

    .line 3442
    .local v5, "toRead":I
    :goto_21
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 3443
    .local v3, "nRead":I
    const/4 v7, 0x0

    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2a
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_2a} :catch_36
    .catchall {:try_start_14 .. :try_end_2a} :catchall_3e

    .line 3444
    sub-int/2addr v1, v3

    .line 3445
    goto :goto_1b

    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_2c
    move v5, v1

    .line 3441
    goto :goto_21

    .line 3449
    :cond_2e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 3450
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 3453
    .end local v1    # "chunkTotal":I
    :goto_34
    int-to-long v8, v6

    return-wide v8

    .line 3447
    :catch_36
    move-exception v7

    .line 3449
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 3450
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_34

    .line 3449
    :catchall_3e
    move-exception v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 3450
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v7
.end method

.method static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z
    .registers 13
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/content/pm/PackageInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "storedSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 7434
    if-nez p1, :cond_6

    move v8, v9

    .line 7489
    :goto_5
    return v8

    .line 7443
    :cond_6
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_10

    move v8, v10

    .line 7445
    goto :goto_5

    .line 7450
    :cond_10
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7453
    .local v1, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_21

    :cond_1a
    if-eqz v1, :cond_1f

    array-length v8, v1

    if-nez v8, :cond_21

    :cond_1f
    move v8, v10

    .line 7455
    goto :goto_5

    .line 7457
    :cond_21
    if-eqz p0, :cond_25

    if-nez v1, :cond_27

    :cond_25
    move v8, v9

    .line 7458
    goto :goto_5

    .line 7464
    :cond_27
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 7465
    .local v6, "nStored":I
    array-length v5, v1

    .line 7468
    .local v5, "nDevice":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7469
    .local v0, "deviceHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v5, :cond_40

    .line 7470
    aget-object v8, v1, v2

    invoke-static {v8}, hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7469
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 7474
    :cond_40
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_41
    if-ge v4, v6, :cond_64

    .line 7475
    const/4 v3, 0x0

    .line 7476
    .local v3, "match":Z
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 7477
    .local v7, "storedHash":[B
    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v5, :cond_5a

    .line 7478
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 7479
    const/4 v3, 0x1

    .line 7484
    :cond_5a
    if-nez v3, :cond_61

    move v8, v9

    .line 7485
    goto :goto_5

    .line 7477
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 7474
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .end local v3    # "match":Z
    .end local v7    # "storedHash":[B
    :cond_64
    move v8, v10

    .line 7489
    goto :goto_5
.end method

.method static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 12
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7505
    if-nez p1, :cond_5

    .line 7550
    :cond_4
    :goto_4
    return v6

    .line 7514
    :cond_5
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_f

    move v6, v7

    .line 7516
    goto :goto_4

    .line 7521
    :cond_f
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7524
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_16

    array-length v8, p0

    if-nez v8, :cond_1d

    :cond_16
    if-eqz v0, :cond_1b

    array-length v8, v0

    if-nez v8, :cond_1d

    :cond_1b
    move v6, v7

    .line 7526
    goto :goto_4

    .line 7528
    :cond_1d
    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    .line 7535
    array-length v5, p0

    .line 7536
    .local v5, "nStored":I
    array-length v4, v0

    .line 7538
    .local v4, "nDevice":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    if-ge v1, v5, :cond_3d

    .line 7539
    const/4 v3, 0x0

    .line 7540
    .local v3, "match":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    if-ge v2, v4, :cond_35

    .line 7541
    aget-object v8, p0, v1

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 7542
    const/4 v3, 0x1

    .line 7546
    :cond_35
    if-eqz v3, :cond_4

    .line 7538
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 7540
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .end local v2    # "j":I
    .end local v3    # "match":Z
    :cond_3d
    move v6, v7

    .line 7550
    goto :goto_4
.end method

.method private warnEdmAdminOperationCompleted()V
    .registers 3

    .prologue
    .line 10428
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "edm.intent.action.backup.service.available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10429
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10430
    return-void
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    .prologue
    .line 1484
    iget-object v0, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1485
    iget-object v0, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1486
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 8839
    const/4 v1, 0x0

    .line 8841
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v3, p0, mJournal:Ljava/io/File;

    if-nez v3, :cond_11

    const-string/jumbo v3, "journal"

    const/4 v4, 0x0

    iget-object v5, p0, mJournalDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, mJournal:Ljava/io/File;

    .line 8842
    :cond_11
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, mJournal:Ljava/io/File;

    const-string/jumbo v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2f
    .catchall {:try_start_1 .. :try_end_1b} :catchall_59

    .line 8843
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8844
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_65
    .catchall {:try_start_1b .. :try_end_25} :catchall_62

    .line 8849
    if-eqz v2, :cond_2a

    :try_start_27
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2c

    :cond_2a
    move-object v1, v2

    .line 8851
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_2b
    :goto_2b
    return-void

    .line 8849
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_2c
    move-exception v3

    move-object v1, v2

    .line 8850
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2b

    .line 8845
    :catch_2f
    move-exception v0

    .line 8846
    .local v0, "e":Ljava/io/IOException;
    :goto_30
    :try_start_30
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8847
    const/4 v3, 0x0

    iput-object v3, p0, mJournal:Ljava/io/File;
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_59

    .line 8849
    if-eqz v1, :cond_2b

    :try_start_53
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_2b

    :catch_57
    move-exception v3

    goto :goto_2b

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_59
    move-exception v3

    :goto_5a
    if-eqz v1, :cond_5f

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    throw v3

    :catch_60
    move-exception v4

    goto :goto_5f

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_62
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_5a

    .line 8845
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_65
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_30
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 9364
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "acknowledgeFullBackupOrRestore : token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " allow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9368
    iget-object v6, p0, mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6

    .line 9369
    :try_start_25
    iget-object v5, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullParams;

    .line 9370
    .local v1, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_74

    .line 9374
    if-eqz v1, :cond_77

    iget-boolean v5, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->privilegeApp:Z

    if-eqz v5, :cond_77

    .line 9375
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9383
    :goto_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9385
    .local v2, "oldId":J
    :try_start_41
    iget-object v6, p0, mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_a4

    .line 9386
    if-eqz v1, :cond_a9

    .line 9387
    :try_start_46
    iget-object v5, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 9388
    iget-object v5, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 9390
    if-eqz p2, :cond_96

    .line 9391
    instance-of v5, v1, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    if-eqz v5, :cond_93

    const/4 v4, 0x2

    .line 9395
    .local v4, "verb":I
    :goto_59
    iput-object p5, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 9396
    iput-object p3, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    .line 9397
    iput-object p4, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 9400
    iget-object v5, p0, mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9401
    iget-object v5, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9402
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9411
    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "verb":I
    :goto_6f
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_46 .. :try_end_70} :catchall_a1

    .line 9413
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9415
    return-void

    .line 9370
    .end local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    .end local v2    # "oldId":J
    :catchall_74
    move-exception v5

    :try_start_75
    monitor-exit v6
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v5

    .line 9376
    .restart local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :cond_77
    iget-boolean v5, p0, isEdmBackupRequest:Z

    if-nez v5, :cond_89

    iget-boolean v5, p0, isEdmRestoreRequest:Z

    if-nez v5, :cond_89

    .line 9378
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 9380
    :cond_89
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 9391
    .restart local v2    # "oldId":J
    :cond_93
    const/16 v4, 0xa

    goto :goto_59

    .line 9404
    :cond_96
    :try_start_96
    const-string v5, "BackupManagerService"

    const-string v7, "User rejected full backup/restore operation"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9406
    invoke-virtual {p0, v1}, signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    goto :goto_6f

    .line 9411
    :catchall_a1
    move-exception v5

    monitor-exit v6
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v5
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    .line 9413
    :catchall_a4
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 9409
    :cond_a9
    :try_start_a9
    const-string v5, "BackupManagerService"

    const-string v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_a1

    goto :goto_6f
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1005
    iget-object v1, p0, mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 1006
    :try_start_3
    iget-object v0, p0, mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    monitor-exit v1

    .line 1009
    return-void

    .line 1007
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 2088
    invoke-virtual {p0}, allAgentPackages()Ljava/util/List;

    move-result-object v4

    .line 2089
    .local v4, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_13

    .line 2091
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 2092
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 2091
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2096
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_13
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 2098
    :cond_17
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .prologue
    .line 9679
    iget-object v2, p0, mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9680
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_3d

    .line 9681
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9682
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 9683
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    .line 9684
    const/4 v1, 0x0

    iput-boolean v1, p0, mConnecting:Z

    .line 9689
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_36
    iget-object v1, p0, mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9690
    monitor-exit v2

    .line 9691
    return-void

    .line 9686
    :cond_3d
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 9690
    :catchall_60
    move-exception v1

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9698
    iget-boolean v0, p0, mConnecting:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 9713
    :goto_5
    return-void

    .line 9702
    :cond_6
    iget-object v1, p0, mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9703
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_39

    .line 9704
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "agentDisconnected pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9705
    const/4 v0, 0x0

    iput-object v0, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    .line 9706
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnecting:Z

    .line 9711
    :goto_2f
    iget-object v0, p0, mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 9712
    monitor-exit v1

    goto :goto_5

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v0

    .line 9708
    :cond_39
    :try_start_39
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_36

    goto :goto_2f
.end method

.method allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2164
    const/16 v4, 0x40

    .line 2165
    .local v4, "flags":I
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 2166
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 2167
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_e
    if-ltz v1, :cond_40

    .line 2168
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 2170
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_16
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2171
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_24

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_2a

    .line 2173
    :cond_24
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2167
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2179
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2181
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_27

    .line 2183
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_3b
    move-exception v3

    .line 2184
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_27

    .line 2187
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_40
    return-object v5
.end method

.method public backupNow()V
    .registers 5

    .prologue
    .line 8940
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8942
    iget-object v1, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 8943
    const-string v1, "BackupManagerService"

    const-string v2, "Not running backup while in battery save mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8944
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 8960
    :goto_1d
    return-void

    .line 8946
    :cond_1e
    const-string v1, "BackupManagerService"

    const-string v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8947
    iget-object v2, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8950
    :try_start_28
    iget-object v1, p0, mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_2d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_28 .. :try_end_2d} :catch_37
    .catchall {:try_start_28 .. :try_end_2d} :catchall_34

    .line 8957
    :goto_2d
    :try_start_2d
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    .line 8958
    monitor-exit v2

    goto :goto_1d

    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v1

    .line 8951
    :catch_37
    move-exception v0

    .line 8953
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_38
    const-string v1, "BackupManagerService"

    const-string/jumbo v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_34

    goto :goto_2d
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 22
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    .line 4726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 4727
    .local v14, "now":J
    const/4 v9, 0x0

    .line 4728
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-wide/32 v12, 0x5265c00

    .line 4730
    .local v12, "latency":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEnabled:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, mProvisioned:Z

    if-nez v2, :cond_16

    .line 4738
    :cond_14
    const/4 v2, 0x0

    .line 4820
    :goto_15
    return v2

    .line 4743
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4744
    const-string v2, "BackupManagerService"

    const-string v3, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-wide/32 v6, 0xdbba00

    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    .line 4746
    const/4 v2, 0x0

    goto :goto_15

    .line 4750
    :cond_33
    const-string v2, "BackupManagerService"

    const-string v3, "Beginning scheduled full backup operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    move-object/from16 v0, p0

    iget-object v0, v0, mQueueLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 4755
    :try_start_41
    move-object/from16 v0, p0

    iget-object v2, v0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v2, :cond_54

    .line 4756
    const-string v2, "BackupManagerService"

    const-string v3, "Backup triggered but one already/still running!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    const/4 v2, 0x0

    monitor-exit v17

    goto :goto_15

    .line 4818
    :catchall_51
    move-exception v2

    monitor-exit v17
    :try_end_53
    .catchall {:try_start_41 .. :try_end_53} :catchall_51

    throw v2

    .line 4760
    :cond_54
    :try_start_54
    move-object/from16 v0, p0

    iget-object v2, v0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_68

    .line 4763
    const-string v2, "BackupManagerService"

    const-string v3, "Backup queue empty; doing nothing"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4765
    const/4 v2, 0x0

    monitor-exit v17

    goto :goto_15

    .line 4771
    :cond_68
    const/16 v16, 0x1

    .line 4773
    .local v16, "runBackup":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 4777
    const/16 v16, 0x0

    .line 4781
    const-wide/32 v12, 0xdbba00

    .line 4784
    :cond_81
    if-eqz v16, :cond_a4

    .line 4785
    move-object/from16 v0, p0

    iget-object v2, v0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object v9, v0

    .line 4786
    iget-wide v2, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    sub-long v18, v14, v2

    .line 4787
    .local v18, "timeSinceRun":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v18, v2

    if-ltz v2, :cond_d1

    const/16 v16, 0x1

    .line 4788
    :goto_9d
    if-nez v16, :cond_a4

    .line 4794
    const-wide/32 v2, 0x5265c00

    sub-long v12, v2, v18

    .line 4798
    .end local v18    # "timeSinceRun":J
    :cond_a4
    if-nez v16, :cond_d4

    .line 4800
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    move-wide v10, v12

    .line 4803
    .local v10, "deferTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v11}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 4808
    const/4 v2, 0x0

    monitor-exit v17

    goto/16 :goto_15

    .line 4787
    .end local v10    # "deferTime":J
    .restart local v18    # "timeSinceRun":J
    :cond_d1
    const/16 v16, 0x0

    goto :goto_9d

    .line 4812
    .end local v18    # "timeSinceRun":J
    :cond_d4
    move-object/from16 v0, p0

    iget-object v2, v0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4813
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4814
    .local v8, "latch":Ljava/util/concurrent/CountDownLatch;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    aput-object v3, v5, v2

    .line 4815
    .local v5, "pkg":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4817
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4818
    monitor-exit v17
    :try_end_106
    .catchall {:try_start_54 .. :try_end_106} :catchall_51

    .line 4820
    const/4 v2, 0x1

    goto/16 :goto_15
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 9785
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9788
    const/4 v1, 0x1

    .line 9789
    .local v1, "needPermission":Z
    if-nez p2, :cond_3c

    .line 9790
    iget-object p2, p0, mCurrentTransport:Ljava/lang/String;

    .line 9792
    if-eqz p1, :cond_3c

    .line 9793
    const/4 v0, 0x0

    .line 9795
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_2a
    iget-object v3, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_30} :catch_6e

    move-result-object v0

    .line 9801
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 9805
    const/4 v1, 0x0

    .line 9810
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_3c
    if-eqz v1, :cond_a6

    .line 9811
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9817
    :goto_47
    monitor-enter p0

    .line 9818
    :try_start_48
    iget-object v3, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-nez v3, :cond_64

    iget-boolean v3, p0, isEdmBackupRequest:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, mEdmBackupAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_58
    iget-boolean v3, p0, isEdmRestoreRequest:Z

    if-eqz v3, :cond_af

    iget-object v3, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 9821
    :cond_64
    const-string v3, "BackupManagerService"

    const-string v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9822
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_48 .. :try_end_6d} :catchall_c4

    .line 9827
    :goto_6d
    return-object v3

    .line 9796
    .restart local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_6e
    move-exception v2

    .line 9797
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9798
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9814
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a6
    const-string v3, "BackupManagerService"

    const-string/jumbo v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 9824
    :cond_af
    :try_start_af
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 9825
    iget-object v3, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 9826
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_af .. :try_end_c1} :catchall_c4

    .line 9827
    iget-object v3, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    goto :goto_6d

    .line 9826
    :catchall_c4
    move-exception v3

    :try_start_c5
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 14
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 2294
    const/4 v0, 0x0

    .line 2295
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v5, p0, mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2296
    const/4 v6, 0x1

    :try_start_7
    iput-boolean v6, p0, mConnecting:Z

    .line 2297
    const/4 v6, 0x0

    iput-object v6, p0, mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_9f

    .line 2299
    :try_start_c
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 2300
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 2306
    .local v2, "timeoutMark":J
    :cond_34
    :goto_34
    iget-boolean v6, p0, mConnecting:Z

    if-eqz v6, :cond_7c

    iget-object v6, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_7c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_c2
    .catchall {:try_start_c .. :try_end_3f} :catchall_9f

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_7c

    .line 2308
    :try_start_44
    iget-object v6, p0, mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 2309
    iget-boolean v6, p0, mConnecting:Z

    if-nez v6, :cond_34

    iget-object v6, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_34

    .line 2310
    const/4 v6, 0x1

    iput-boolean v6, p0, mConnecting:Z

    .line 2313
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_5b} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_5b} :catch_c2
    .catchall {:try_start_44 .. :try_end_5b} :catchall_9f

    goto :goto_34

    .line 2315
    :catch_5c
    move-exception v1

    .line 2317
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5d
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_7a} :catch_c2
    .catchall {:try_start_5d .. :try_end_7a} :catchall_9f

    .line 2319
    :try_start_7a
    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_9f

    .line 2336
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "timeoutMark":J
    :goto_7b
    return-object v4

    .line 2324
    .restart local v2    # "timeoutMark":J
    :cond_7c
    :try_start_7c
    iget-boolean v6, p0, mConnecting:Z

    if-ne v6, v10, :cond_a2

    .line 2325
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_9d} :catch_c2
    .catchall {:try_start_7c .. :try_end_9d} :catchall_9f

    .line 2327
    :try_start_9d
    monitor-exit v5

    goto :goto_7b

    .line 2335
    .end local v2    # "timeoutMark":J
    :catchall_9f
    move-exception v4

    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_9f

    throw v4

    .line 2329
    .restart local v2    # "timeoutMark":J
    :cond_a2
    :try_start_a2
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "got agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-object v0, p0, mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_bf} :catch_c2
    .catchall {:try_start_a2 .. :try_end_bf} :catchall_9f

    .line 2335
    .end local v2    # "timeoutMark":J
    :cond_bf
    :goto_bf
    :try_start_bf
    monitor-exit v5
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_9f

    move-object v4, v0

    .line 2336
    goto :goto_7b

    .line 2332
    :catch_c2
    move-exception v4

    goto :goto_bf
.end method

.method bindTransport(Landroid/content/pm/ServiceInfo;)Z
    .registers 8
    .param p1, "transport"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 2059
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    .local v2, "svcName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2064
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2067
    iget-object v4, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2068
    :try_start_16
    iget-object v3, p0, mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 2069
    .local v0, "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-nez v0, :cond_39

    .line 2070
    new-instance v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/pm/ServiceInfo;)V

    .line 2071
    .restart local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    iget-object v3, p0, mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    :goto_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_3f

    .line 2079
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 2076
    :cond_39
    :try_start_39
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_2e

    .line 2078
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_3f

    throw v3
.end method

.method checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    .registers 10
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    .line 2028
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2030
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 2032
    .local v1, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2b

    .line 2033
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2034
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v0, :cond_2b

    .line 2035
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2036
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0, v3}, tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 2034
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 2039
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :cond_2b
    return-void
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2344
    :try_start_0
    iget-boolean v6, p0, isEdmRestoreRequest:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2} :catch_1f

    if-eqz v6, :cond_3f

    .line 2347
    :try_start_4
    iget-object v6, p0, mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    iget v8, p0, mEdmUserId:I

    invoke-interface {v6, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_1f

    move-result-object v2

    .line 2355
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :goto_d
    :try_start_d
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_47

    .line 2391
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_15
    return-void

    .line 2348
    :catch_16
    move-exception v1

    .line 2349
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Fail to obtain package info at clear application data synchrounous"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_15

    .line 2360
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 2361
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tried to clear data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2353
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3f
    :try_start_3f
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_45} :catch_1f

    move-result-object v2

    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_d

    .line 2365
    :cond_47
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;

    invoke-direct {v3, p0}, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 2367
    .local v3, "observer":Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
    iget-object v7, p0, mClearDataLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2368
    const/4 v6, 0x1

    :try_start_50
    iput-boolean v6, p0, mClearingData:Z
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_7e

    .line 2370
    :try_start_52
    iget-boolean v6, p0, isEdmRestoreRequest:Z

    if-eqz v6, :cond_81

    .line 2372
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    iget v8, p0, mEdmUserId:I

    invoke-interface {v6, p1, v3, v8}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5d} :catch_88
    .catchall {:try_start_52 .. :try_end_5d} :catchall_7e

    .line 2381
    :goto_5d
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long v4, v8, v10

    .line 2382
    .local v4, "timeoutMark":J
    :goto_65
    iget-boolean v6, p0, mClearingData:Z

    if-eqz v6, :cond_8a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_7e

    move-result-wide v8

    cmp-long v6, v8, v4

    if-gez v6, :cond_8a

    .line 2384
    :try_start_71
    iget-object v6, p0, mClearDataLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_78} :catch_79
    .catchall {:try_start_71 .. :try_end_78} :catchall_7e

    goto :goto_65

    .line 2385
    :catch_79
    move-exception v0

    .line 2387
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    :try_start_7b
    iput-boolean v6, p0, mClearingData:Z

    goto :goto_65

    .line 2390
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "timeoutMark":J
    :catchall_7e
    move-exception v6

    monitor-exit v7
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_7e

    throw v6

    .line 2374
    :cond_81
    :try_start_81
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    const/4 v8, 0x0

    invoke-interface {v6, p1, v3, v8}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_87} :catch_88
    .catchall {:try_start_81 .. :try_end_87} :catchall_7e

    goto :goto_5d

    .line 2376
    :catch_88
    move-exception v6

    goto :goto_5d

    .line 2390
    .restart local v4    # "timeoutMark":J
    :cond_8a
    :try_start_8a
    monitor-exit v7
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_7e

    goto :goto_15
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8884
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clearBackupData() of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8887
    :try_start_26
    move-object/from16 v0, p0

    iget-object v12, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_31} :catch_8c

    move-result-object v6

    .line 8896
    .local v6, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const-string v13, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_ae

    .line 8898
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 8914
    .local v3, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_55
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8b

    .line 8917
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 8918
    move-object/from16 v0, p0

    iget-object v13, v0, mQueueLock:Ljava/lang/Object;

    monitor-enter v13

    .line 8919
    :try_start_6b
    invoke-direct/range {p0 .. p1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v11

    .line 8920
    .local v11, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v11, :cond_d0

    .line 8922
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v14, 0xc

    new-instance v15, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    invoke-direct/range {v15 .. v18}, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 8924
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v14, 0x36ee80

    invoke-virtual {v12, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8925
    monitor-exit v13
    :try_end_8b
    .catchall {:try_start_6b .. :try_end_8b} :catchall_f7

    .line 8935
    .end local v3    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v11    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_8b
    :goto_8b
    return-void

    .line 8888
    :catch_8c
    move-exception v4

    .line 8889
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such package \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' - not clearing backup data"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 8903
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_ae
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 8904
    .restart local v3    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 8905
    .local v2, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_bc
    if-ge v5, v2, :cond_55

    .line 8906
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    .line 8907
    .local v10, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v10, :cond_cd

    .line 8908
    invoke-virtual {v3, v10}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 8905
    :cond_cd
    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 8927
    .end local v2    # "N":I
    .end local v5    # "i":I
    .end local v10    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_d0
    :try_start_d0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 8928
    .local v8, "oldId":J
    move-object/from16 v0, p0

    iget-object v12, v0, mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8929
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v14, 0x4

    new-instance v15, Lcom/android/server/backup/BackupManagerService$ClearParams;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v6}, Lcom/android/server/backup/BackupManagerService$ClearParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v12, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 8931
    .restart local v7    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v12, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8932
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8933
    monitor-exit v13

    goto :goto_8b

    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "oldId":J
    .end local v11    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_f7
    move-exception v12

    monitor-exit v13
    :try_end_f9
    .catchall {:try_start_d0 .. :try_end_f9} :catchall_f7

    throw v12
.end method

.method clearBackupTrace()V
    .registers 3

    .prologue
    .line 1013
    iget-object v1, p0, mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 1014
    :try_start_3
    iget-object v0, p0, mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1015
    monitor-exit v1

    .line 1017
    return-void

    .line 1015
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .param p1, "currentSession"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 9831
    monitor-enter p0

    .line 9832
    :try_start_1
    iget-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_f

    .line 9833
    const-string v0, "BackupManagerService"

    const-string/jumbo v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9842
    :goto_d
    monitor-exit p0

    .line 9843
    return-void

    .line 9835
    :cond_f
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9836
    const/4 v0, 0x0

    iput-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 9838
    invoke-direct {p0}, warnEdmAdminOperationCompleted()V

    .line 9840
    iget-object v0, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    goto :goto_d

    .line 9842
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8856
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 8857
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_7

    .line 8880
    :goto_6
    return-void

    .line 8868
    :cond_7
    invoke-direct {p0, p1}, dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 8869
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_3b

    .line 8870
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 8875
    :cond_3b
    iget-object v2, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method deviceIsEncrypted()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 3867
    :try_start_1
    iget-object v2, p0, mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-eq v2, v1, :cond_12

    iget-object v2, p0, mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_14

    move-result v2

    if-eq v2, v1, :cond_12

    .line 3875
    :goto_11
    return v1

    .line 3867
    :cond_12
    const/4 v1, 0x0

    goto :goto_11

    .line 3871
    :catch_14
    move-exception v0

    .line 3874
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with mount service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method deviceIsProvisioned()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 8963
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8964
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 10196
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "BackupManagerService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 10200
    .local v4, "identityToken":J
    if-eqz p3, :cond_43

    .line 10201
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_10
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_43

    aget-object v0, v1, v2

    .line 10202
    .local v0, "arg":Ljava/lang/String;
    const-string v6, "-h"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 10203
    const-string v6, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10204
    const-string v6, "  -h       : this help text"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10205
    const-string v6, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_4a

    .line 10215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10217
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_30
    return-void

    .line 10207
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_31
    :try_start_31
    const-string v6, "agents"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 10208
    invoke-direct {p0, p2}, dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_4a

    .line 10215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_30

    .line 10201
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 10213
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_43
    :try_start_43
    invoke-direct {p0, p2}, dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    .line 10215
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_30

    :catchall_4a
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method endFullBackup()V
    .registers 4

    .prologue
    .line 4826
    iget-object v1, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4827
    :try_start_3
    iget-object v0, p0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v0, :cond_14

    .line 4829
    const-string v0, "BackupManagerService"

    const-string v2, "Telling running backup to stop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4831
    iget-object v0, p0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->setRunning(Z)V

    .line 4833
    :cond_14
    monitor-exit v1

    .line 4834
    return-void

    .line 4833
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method enqueueFullBackup(Ljava/lang/String;J)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .prologue
    .line 4655
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    .line 4656
    .local v4, "newEntry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v7, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4657
    :try_start_8
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4661
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_2a

    .line 4662
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 4663
    .local v1, "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v6, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 4664
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4661
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 4672
    .end local v1    # "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_2a
    const/4 v5, -0x1

    .line 4673
    .local v5, "which":I
    const-wide/16 v8, 0x0

    cmp-long v6, p2, v8

    if-lez v6, :cond_50

    .line 4674
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_39
    if-ltz v5, :cond_50

    .line 4675
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 4676
    .local v2, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v8, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v6, v8, p2

    if-gtz v6, :cond_5d

    .line 4677
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4682
    .end local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_50
    if-gez v5, :cond_58

    .line 4684
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4686
    :cond_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_60

    .line 4687
    invoke-direct {p0}, writeFullBackupScheduleAsync()V

    .line 4688
    return-void

    .line 4674
    .restart local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_5d
    add-int/lit8 v5, v5, -0x1

    goto :goto_39

    .line 4686
    .end local v0    # "N":I
    .end local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v3    # "i":I
    .end local v5    # "which":I
    :catchall_60
    move-exception v6

    :try_start_61
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v6
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .registers 29
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 9077
    move-object/from16 v0, p0

    iget-boolean v3, v0, isEdmBackupRequest:Z

    if-nez v3, :cond_20

    .line 9079
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string/jumbo v6, "fullBackup"

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9084
    :goto_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 9085
    .local v15, "callingUserHandle":I
    if-eqz v15, :cond_2d

    .line 9086
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Backup supported only for the device owner"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9081
    .end local v15    # "callingUserHandle":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string/jumbo v6, "fullBackup"

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 9090
    .restart local v15    # "callingUserHandle":I
    :cond_2d
    if-nez p6, :cond_40

    .line 9091
    if-nez p4, :cond_40

    .line 9095
    if-eqz p9, :cond_38

    move-object/from16 v0, p9

    array-length v3, v0

    if-nez v3, :cond_40

    .line 9096
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Backup requested but neither shared nor any apps named"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9102
    :cond_40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 9103
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 9106
    .local v16, "oldId":J
    :try_start_48
    invoke-virtual/range {p0 .. p0}, deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_63

    .line 9107
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup not supported before setup"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_129

    .line 9163
    :try_start_55
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_1da

    .line 9167
    :goto_58
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9168
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9170
    :goto_62
    return-void

    .line 9111
    :cond_63
    :try_start_63
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting full backup: apks="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " obb="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shared="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " all="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " system="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkgs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9114
    const-string v3, "BackupManagerService"

    const-string v5, "Beginning full backup..."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9116
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    move-object/from16 v0, p0

    iget v13, v0, mExtraFlag:I

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;I)V

    .line 9118
    .local v2, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    iget-boolean v0, v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->privilegeApp:Z

    move/from16 v18, v0

    .line 9119
    .local v18, "oldPrivilege":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, isPrivilegeBackupApp(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->privilegeApp:Z

    .line 9121
    invoke-virtual/range {p0 .. p0}, generateToken()I

    move-result v4

    .line 9122
    .local v4, "token":I
    move-object/from16 v0, p0

    iget-object v5, v0, mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_f2
    .catchall {:try_start_63 .. :try_end_f2} :catchall_129

    .line 9123
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v3, v0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9124
    monitor-exit v5
    :try_end_fa
    .catchall {:try_start_f2 .. :try_end_fa} :catchall_126

    .line 9126
    :try_start_fa
    iget-boolean v3, v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->privilegeApp:Z

    if-eqz v3, :cond_138

    .line 9127
    const/4 v5, 0x1

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, mEncPassword:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 9159
    :goto_10b
    const-string v3, "BackupManagerService"

    const-string v5, "Waiting for full backup completion..."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9160
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_117
    .catchall {:try_start_fa .. :try_end_117} :catchall_129

    .line 9163
    :try_start_117
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_1e1

    .line 9167
    :goto_11a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9168
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 9124
    :catchall_126
    move-exception v3

    :try_start_127
    monitor-exit v5
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    :try_start_128
    throw v3
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_129

    .line 9162
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v4    # "token":I
    .end local v18    # "oldPrivilege":Z
    :catchall_129
    move-exception v3

    .line 9163
    :try_start_12a
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_1e4

    .line 9167
    :goto_12d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9168
    const-string v5, "BackupManagerService"

    const-string v6, "Full backup processing complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    .line 9129
    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v4    # "token":I
    .restart local v18    # "oldPrivilege":Z
    :cond_138
    :try_start_138
    move-object/from16 v0, p0

    iget-boolean v3, v0, isEdmBackupRequest:Z

    if-eqz v3, :cond_186

    .line 9131
    move-object/from16 v0, p0

    iget-object v3, v0, mEdmBackupAppPkgName:Ljava/lang/String;

    if-eqz v3, :cond_177

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_15c

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$3300(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, mEdmBackupAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_162

    :cond_15c
    move-object/from16 v0, p0

    iget-boolean v3, v0, mBackupRunning:Z

    if-eqz v3, :cond_177

    .line 9135
    :cond_162
    const/4 v3, -0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, resetEdmBackupTags(I)V
    :try_end_168
    .catchall {:try_start_138 .. :try_end_168} :catchall_129

    .line 9163
    :try_start_168
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16b} :catch_1dd

    .line 9167
    :goto_16b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9168
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 9138
    :cond_177
    const/4 v5, 0x1

    :try_start_178
    const-string v6, ""

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v8, v0, mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    goto :goto_10b

    .line 9141
    :cond_186
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting backup confirmation UI, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9142
    const-string/jumbo v3, "fullback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, startConfirmationUi(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 9143
    const-string v3, "BackupManagerService"

    const-string v5, "Unable to launch full backup confirmation"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9144
    move-object/from16 v0, p0

    iget-object v3, v0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_1b7
    .catchall {:try_start_178 .. :try_end_1b7} :catchall_129

    .line 9163
    :try_start_1b7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1df

    .line 9167
    :goto_1ba
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9168
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 9149
    :cond_1c6
    :try_start_1c6
    move-object/from16 v0, p0

    iget-object v3, v0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 9154
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_1d8
    .catchall {:try_start_1c6 .. :try_end_1d8} :catchall_129

    goto/16 :goto_10b

    .line 9164
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v4    # "token":I
    .end local v18    # "oldPrivilege":Z
    :catch_1da
    move-exception v3

    goto/16 :goto_58

    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v4    # "token":I
    .restart local v18    # "oldPrivilege":Z
    :catch_1dd
    move-exception v3

    goto :goto_16b

    :catch_1df
    move-exception v3

    goto :goto_1ba

    :catch_1e1
    move-exception v3

    goto/16 :goto_11a

    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v4    # "token":I
    .end local v18    # "oldPrivilege":Z
    :catch_1e4
    move-exception v5

    goto/16 :goto_12d
.end method

.method public fullBackupEx(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .registers 19
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8987
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    array-length v1, v0

    if-gtz v1, :cond_10

    .line 8988
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "packageName is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8991
    :cond_10
    iget-object v13, p0, mBackupRestoreLock:Ljava/lang/Object;

    monitor-enter v13

    .line 8992
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_5b

    const/4 v3, 0x1

    .line 8993
    .local v3, "includeApk":Z
    :goto_18
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_5d

    const/4 v4, 0x1

    .line 8994
    .local v4, "includeObb":Z
    :goto_1d
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_5f

    const/4 v5, 0x1

    .line 8995
    .local v5, "includeShared":Z
    :goto_22
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_61

    const/4 v6, 0x1

    .line 8996
    .local v6, "includeWidgets":Z
    :goto_27
    and-int/lit8 v1, p4, 0x10

    if-eqz v1, :cond_63

    const/4 v7, 0x1

    .line 8997
    .local v7, "includeAllApps":Z
    :goto_2c
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_65

    const/4 v8, 0x1

    .line 8998
    .local v8, "includeAllSystem":Z
    :goto_31
    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_67

    const/4 v9, 0x1

    .line 8999
    .local v9, "doCompress":Z
    :goto_36
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_69

    const/4 v11, 0x1

    .line 9000
    .local v11, "doObbOnly":Z
    :goto_3d
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6b

    const/4 v12, 0x1

    .line 9002
    .local v12, "doSizeOnly":Z
    :goto_44
    if-nez v12, :cond_6d

    .line 9003
    :try_start_46
    move-object/from16 v0, p3

    iput-object v0, p0, mEncPassword:Ljava/lang/String;

    .line 9004
    move/from16 v0, p4

    iput v0, p0, mExtraFlag:I

    .line 9005
    if-eqz v11, :cond_51

    .line 9006
    const/4 v4, 0x1

    :cond_51
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v10, p2

    .line 9009
    invoke-virtual/range {v1 .. v10}, fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 9012
    const/4 v1, 0x0

    monitor-exit v13

    .line 9014
    :goto_5a
    return-object v1

    .line 8992
    .end local v3    # "includeApk":Z
    .end local v4    # "includeObb":Z
    .end local v5    # "includeShared":Z
    .end local v6    # "includeWidgets":Z
    .end local v7    # "includeAllApps":Z
    .end local v8    # "includeAllSystem":Z
    .end local v9    # "doCompress":Z
    .end local v11    # "doObbOnly":Z
    .end local v12    # "doSizeOnly":Z
    :cond_5b
    const/4 v3, 0x0

    goto :goto_18

    .line 8993
    .restart local v3    # "includeApk":Z
    :cond_5d
    const/4 v4, 0x0

    goto :goto_1d

    .line 8994
    .restart local v4    # "includeObb":Z
    :cond_5f
    const/4 v5, 0x0

    goto :goto_22

    .line 8995
    .restart local v5    # "includeShared":Z
    :cond_61
    const/4 v6, 0x0

    goto :goto_27

    .line 8996
    .restart local v6    # "includeWidgets":Z
    :cond_63
    const/4 v7, 0x0

    goto :goto_2c

    .line 8997
    .restart local v7    # "includeAllApps":Z
    :cond_65
    const/4 v8, 0x0

    goto :goto_31

    .line 8998
    .restart local v8    # "includeAllSystem":Z
    :cond_67
    const/4 v9, 0x0

    goto :goto_36

    .line 8999
    .restart local v9    # "doCompress":Z
    :cond_69
    const/4 v11, 0x0

    goto :goto_3d

    .line 9000
    .restart local v11    # "doObbOnly":Z
    :cond_6b
    const/4 v12, 0x0

    goto :goto_44

    .line 9014
    .restart local v12    # "doSizeOnly":Z
    :cond_6d
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {p0, v1}, getBackupDataSize(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v13

    goto :goto_5a

    .line 9016
    :catchall_76
    move-exception v1

    monitor-exit v13
    :try_end_78
    .catchall {:try_start_46 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 14
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 9231
    iget-boolean v0, p0, isEdmRestoreRequest:Z

    if-nez v0, :cond_1c

    .line 9233
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "fullRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9238
    :goto_e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 9239
    .local v7, "callingUserHandle":I
    if-eqz v7, :cond_27

    .line 9240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9235
    .end local v7    # "callingUserHandle":I
    :cond_1c
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "fullRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 9243
    .restart local v7    # "callingUserHandle":I
    :cond_27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 9244
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 9249
    .local v10, "oldId":J
    :try_start_2f
    invoke-virtual {p0}, deviceIsProvisioned()Z

    move-result v0

    if-nez v0, :cond_64

    .line 9250
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore not permitted before setup"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_ac

    .line 9303
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4a

    .line 9307
    :goto_3f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9308
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9310
    :goto_49
    return-void

    .line 9304
    :catch_4a
    move-exception v8

    .line 9305
    .local v8, "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 9254
    .end local v8    # "e":Ljava/io/IOException;
    :cond_64
    :try_start_64
    const-string v0, "BackupManagerService"

    const-string v2, "Beginning full restore..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9256
    new-instance v9, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    invoke-direct {v9, p0, p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 9257
    .local v9, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    invoke-direct {p0, v6}, isPrivilegeBackupApp(I)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->privilegeApp:Z

    .line 9259
    invoke-virtual {p0}, generateToken()I

    move-result v1

    .line 9260
    .local v1, "token":I
    iget-object v2, p0, mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_7d
    .catchall {:try_start_64 .. :try_end_7d} :catchall_ac

    .line 9261
    :try_start_7d
    iget-object v0, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9262
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_a9

    .line 9264
    :try_start_83
    iget-boolean v0, v9, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->privilegeApp:Z

    if-eqz v0, :cond_bb

    .line 9265
    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, p0, mEncPassword:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 9299
    :goto_91
    const-string v0, "BackupManagerService"

    const-string v2, "Waiting for full restore completion..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9300
    invoke-virtual {p0, v9}, waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_9b
    .catchall {:try_start_83 .. :try_end_9b} :catchall_ac

    .line 9303
    :try_start_9b
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_18b

    .line 9307
    :goto_9e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9308
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 9262
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    .line 9302
    .end local v1    # "token":I
    .end local v9    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :catchall_ac
    move-exception v0

    .line 9303
    :try_start_ad
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_1a6

    .line 9307
    :goto_b0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9308
    const-string v2, "BackupManagerService"

    const-string v3, "Full restore processing complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 9267
    .restart local v1    # "token":I
    .restart local v9    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :cond_bb
    :try_start_bb
    iget-boolean v0, p0, isEdmRestoreRequest:Z

    if-eqz v0, :cond_125

    .line 9269
    iget-object v2, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_ac

    .line 9270
    :try_start_c2
    iget-object v0, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    if-eqz v0, :cond_114

    iget-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v0, :cond_d8

    iget-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$3300(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    :cond_d8
    iget-boolean v0, p0, mBackupRunning:Z

    if-eqz v0, :cond_114

    iget-object v0, p0, mPendingBackups:Ljava/util/HashMap;

    iget-object v3, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 9274
    :cond_e6
    const/4 v0, -0x3

    invoke-direct {p0, v0}, resetEdmRestoreTags(I)V

    .line 9275
    monitor-exit v2
    :try_end_eb
    .catchall {:try_start_c2 .. :try_end_eb} :catchall_122

    .line 9303
    :try_start_eb
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_fa

    .line 9307
    :goto_ee
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9308
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 9304
    :catch_fa
    move-exception v8

    .line 9305
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 9277
    .end local v8    # "e":Ljava/io/IOException;
    :cond_114
    :try_start_114
    monitor-exit v2
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_122

    .line 9278
    const/4 v2, 0x1

    :try_start_116
    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    :try_end_120
    .catchall {:try_start_116 .. :try_end_120} :catchall_ac

    goto/16 :goto_91

    .line 9277
    :catchall_122
    move-exception v0

    :try_start_123
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_122

    :try_start_124
    throw v0

    .line 9281
    :cond_125
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting restore confirmation UI, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9282
    const-string/jumbo v0, "fullrest"

    invoke-virtual {p0, v1, v0}, startConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17b

    .line 9283
    const-string v0, "BackupManagerService"

    const-string v2, "Unable to launch full restore confirmation"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9284
    iget-object v0, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_152
    .catchall {:try_start_124 .. :try_end_152} :catchall_ac

    .line 9303
    :try_start_152
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_161

    .line 9307
    :goto_155
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9308
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 9304
    :catch_161
    move-exception v8

    .line 9305
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 9289
    .end local v8    # "e":Ljava/io/IOException;
    :cond_17b
    :try_start_17b
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 9294
    invoke-virtual {p0, v1, v9}, startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_189
    .catchall {:try_start_17b .. :try_end_189} :catchall_ac

    goto/16 :goto_91

    .line 9304
    :catch_18b
    move-exception v8

    .line 9305
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 9304
    .end local v1    # "token":I
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :catch_1a6
    move-exception v8

    .line 9305
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to close fd after full restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b0
.end method

.method public fullRestoreEx(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 9224
    iget-object v1, p0, mBackupRestoreLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9225
    :try_start_3
    iput-object p2, p0, mEncPassword:Ljava/lang/String;

    .line 9226
    invoke-virtual {p0, p1}, fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 9227
    monitor-exit v1

    .line 9228
    return-void

    .line 9227
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 16
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 9173
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "fullTransportBackup"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9176
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 9177
    .local v8, "callingUserHandle":I
    if-eqz v8, :cond_19

    .line 9178
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9181
    :cond_19
    iget-object v1, p0, mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    invoke-direct {p0, v1}, fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 9182
    const-string v1, "BackupManagerService"

    const-string v2, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9209
    :cond_2c
    const-string v1, "BackupManagerService"

    const-string v2, "Done with full transport backup."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9211
    return-void

    .line 9185
    :cond_34
    const-string v1, "BackupManagerService"

    const-string/jumbo v3, "fullTransportBackup()"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9188
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9189
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;)V

    .line 9191
    .local v0, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "full-transport-master"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 9194
    :goto_56
    :try_start_56
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_6a

    .line 9202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 9203
    .local v12, "now":J
    move-object v7, p1

    .local v7, "arr$":[Ljava/lang/String;
    array-length v10, v7

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_60
    if-ge v9, v10, :cond_2c

    aget-object v11, v7, v9

    .line 9204
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {p0, v11, v12, v13}, enqueueFullBackup(Ljava/lang/String;J)V

    .line 9203
    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    .line 9196
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "now":J
    :catch_6a
    move-exception v1

    goto :goto_56
.end method

.method generateToken()I
    .registers 4

    .prologue
    .line 676
    :cond_0
    iget-object v2, p0, mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 677
    :try_start_3
    iget-object v1, p0, mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 678
    .local v0, "token":I
    monitor-exit v2

    .line 679
    if-ltz v0, :cond_0

    .line 680
    return v0

    .line 678
    .end local v0    # "token":I
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2405
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "getAvailableRestoreToken"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    iget-wide v0, p0, mAncestralToken:J

    .line 2409
    .local v0, "token":J
    iget-object v3, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2410
    :try_start_f
    iget-object v2, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2414
    iget-wide v0, p0, mCurrentToken:J

    .line 2416
    :cond_19
    monitor-exit v3

    .line 2418
    return-wide v0

    .line 2416
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 9587
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9590
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 9591
    :try_start_d
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_21

    .line 9592
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1e

    .line 9594
    :try_start_17
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1d
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    move-result-object v0

    .line 9597
    .local v0, "intent":Landroid/content/Intent;
    :try_start_1b
    monitor-exit v3

    .line 9604
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1c
    return-object v0

    .line 9598
    :catch_1d
    move-exception v2

    .line 9602
    :cond_1e
    monitor-exit v3

    .line 9604
    const/4 v0, 0x0

    goto :goto_1c

    .line 9602
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9537
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9540
    iget-object v0, p0, mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 9634
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "getDataManagementIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9637
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 9638
    :try_start_d
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_21

    .line 9639
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1e

    .line 9641
    :try_start_17
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1d
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    move-result-object v0

    .line 9644
    .local v0, "intent":Landroid/content/Intent;
    :try_start_1b
    monitor-exit v3

    .line 9651
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1c
    return-object v0

    .line 9645
    :catch_1d
    move-exception v2

    .line 9649
    :cond_1e
    monitor-exit v3

    .line 9651
    const/4 v0, 0x0

    goto :goto_1c

    .line 9649
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v2
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 9657
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "getDataManagementLabel"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9660
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 9661
    :try_start_d
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_21

    .line 9662
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1e

    .line 9664
    :try_start_17
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1d
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    move-result-object v0

    .line 9666
    .local v0, "text":Ljava/lang/String;
    :try_start_1b
    monitor-exit v3

    .line 9673
    .end local v0    # "text":Ljava/lang/String;
    :goto_1c
    return-object v0

    .line 9667
    :catch_1d
    move-exception v2

    .line 9671
    :cond_1e
    monitor-exit v3

    .line 9673
    const/4 v0, 0x0

    goto :goto_1c

    .line 9671
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v2
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 9613
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "getDestinationString"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9616
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 9617
    :try_start_d
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_21

    .line 9618
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1e

    .line 9620
    :try_start_17
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1d
    .catchall {:try_start_17 .. :try_end_1a} :catchall_21

    move-result-object v0

    .line 9622
    .local v0, "text":Ljava/lang/String;
    :try_start_1b
    monitor-exit v3

    .line 9629
    .end local v0    # "text":Ljava/lang/String;
    :goto_1c
    return-object v0

    .line 9623
    :catch_1d
    move-exception v2

    .line 9627
    :cond_1e
    monitor-exit v3

    .line 9629
    const/4 v0, 0x0

    goto :goto_1c

    .line 9627
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v2
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x1

    .line 2481
    const/4 v1, 0x0

    .line 2482
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2483
    :try_start_5
    iget-object v3, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v1, v0

    .line 2488
    if-eqz v1, :cond_13

    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2489
    .local v2, "state":I
    :cond_13
    if-nez v2, :cond_39

    .line 2490
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMEOUT: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2492
    iget-object v3, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2494
    :cond_39
    iget-object v3, p0, mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 2495
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_4b

    .line 2498
    if-eqz v1, :cond_4a

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_4a

    .line 2499
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 2501
    :cond_4a
    return-void

    .line 2495
    .end local v2    # "state":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3
.end method

.method public hasBackupPassword()Z
    .registers 4

    .prologue
    .line 1679
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "hasBackupPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, mPasswordHash:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, mPasswordHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 9505
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9506
    iget-boolean v0, p0, mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 9545
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string/jumbo v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9547
    const/4 v3, 0x0

    .line 9548
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9549
    .local v2, "known":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 9550
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 9551
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 9555
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_43

    .line 9556
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 9557
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9559
    :cond_43
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2194
    const-string v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2210
    :goto_8
    return-void

    .line 2196
    :cond_9
    iget-object v4, p0, mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 2197
    :try_start_c
    iget-object v3, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    monitor-exit v4

    goto :goto_8

    .line 2209
    :catchall_16
    move-exception v3

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v3

    .line 2199
    :cond_19
    const/4 v1, 0x0

    .line 2201
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1a
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, mEverStored:Ljava/io/File;

    const-string/jumbo v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_39
    .catchall {:try_start_1a .. :try_end_24} :catchall_66

    .line 2202
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2203
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_72
    .catchall {:try_start_24 .. :try_end_2e} :catchall_6f

    .line 2207
    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_36
    .catchall {:try_start_30 .. :try_end_33} :catchall_16

    :cond_33
    move-object v1, v2

    .line 2209
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_16

    goto :goto_8

    .line 2207
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_36
    move-exception v3

    move-object v1, v2

    .line 2208
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_34

    .line 2204
    :catch_39
    move-exception v0

    .line 2205
    .local v0, "e":Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_3a .. :try_end_5e} :catchall_66

    .line 2207
    if-eqz v1, :cond_34

    :try_start_60
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_16

    goto :goto_34

    :catch_64
    move-exception v3

    goto :goto_34

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_66
    move-exception v3

    :goto_67
    if-eqz v1, :cond_6c

    :try_start_69
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_16

    :cond_6c
    :goto_6c
    :try_start_6c
    throw v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_16

    :catch_6d
    move-exception v5

    goto :goto_6c

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_6f
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_67

    .line 2204
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_72
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_3a
.end method

.method public opComplete(IJ)V
    .registers 12
    .param p1, "token"    # I
    .param p2, "result"    # J

    .prologue
    .line 9851
    const/4 v3, 0x0

    .line 9852
    .local v3, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v5, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 9853
    :try_start_4
    iget-object v4, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v3, v0

    .line 9854
    if-eqz v3, :cond_13

    .line 9855
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 9857
    :cond_13
    iget-object v4, p0, mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 9858
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3b

    .line 9861
    if-eqz v3, :cond_3a

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v4, :cond_3a

    .line 9862
    iget-object v4, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v5, 0x15

    iget-object v6, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 9864
    .local v2, "msg":Landroid/os/Message;
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, p2, v4

    if-lez v4, :cond_3e

    const v4, 0x7fffffff

    :goto_33
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 9865
    iget-object v4, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9867
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3a
    return-void

    .line 9858
    :catchall_3b
    move-exception v4

    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v4

    .line 9864
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_3e
    long-to-int v4, p2

    goto :goto_33
.end method

.method passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "candidatePw"    # Ljava/lang/String;
    .param p3, "rounds"    # I

    .prologue
    const/4 v1, 0x1

    .line 1580
    iget-object v2, p0, mPasswordHash:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 1582
    if-eqz p2, :cond_f

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1595
    :cond_f
    :goto_f
    return v1

    .line 1587
    :cond_10
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_26

    .line 1588
    iget-object v2, p0, mPasswordSalt:[B

    invoke-direct {p0, p1, p2, v2, p3}, buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1589
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v2, p0, mPasswordHash:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1595
    .end local v0    # "currentPwHash":Ljava/lang/String;
    :cond_26
    const/4 v1, 0x0

    goto :goto_f
.end method

.method prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .registers 11
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 2438
    iget-object v2, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2439
    :try_start_3
    iget-object v1, p0, mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2441
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2442
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2443
    monitor-exit v2

    .line 2444
    return-void

    .line 2443
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 13
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x0

    .line 1703
    iget-object v4, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1706
    :try_start_8
    invoke-direct {p0, p2}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 1707
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_3a

    .line 1708
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1709
    .local v3, "transportDirName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1710
    .local v1, "stateDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "_need_init_"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1712
    .local v0, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_30

    .line 1716
    iget-object v4, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_27} :catch_39

    .line 1718
    :try_start_27
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_39

    .line 1745
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 1724
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :cond_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1725
    iget-object v4, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_38} :catch_39

    goto :goto_2f

    .line 1729
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :catch_39
    move-exception v4

    .line 1736
    :cond_3a
    if-eqz p1, :cond_2f

    .line 1737
    iget-object v4, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1738
    iget-object v6, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v7, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    if-eqz p1, :cond_53

    const/4 v4, 0x1

    :goto_48
    invoke-virtual {v7, v8, v4, v5, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v8, 0x36ee80

    invoke-virtual {v6, v4, v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2f

    :cond_53
    move v4, v5

    goto :goto_48

    .line 1719
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :catch_55
    move-exception v4

    goto :goto_2f
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2214
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing backed-up knowledge of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    iget-object v7, p0, mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 2221
    :try_start_1b
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, mBaseStateDir:Ljava/io/File;

    const-string/jumbo v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_bb

    .line 2222
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 2224
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_26
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rws"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_aa
    .catchall {:try_start_26 .. :try_end_2e} :catchall_b4

    .line 2225
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v3, "known":Ljava/io/RandomAccessFile;
    :try_start_2e
    iget-object v6, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2226
    iget-object v6, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2227
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_48} :catch_49
    .catchall {:try_start_2e .. :try_end_48} :catchall_c2

    goto :goto_39

    .line 2235
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :catch_49
    move-exception v0

    move-object v2, v3

    .line 2240
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_4b
    :try_start_4b
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2241
    iget-object v6, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2242
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2243
    iget-object v6, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_72
    .catchall {:try_start_4b .. :try_end_72} :catchall_b4

    .line 2245
    if-eqz v2, :cond_77

    :try_start_74
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_be
    .catchall {:try_start_74 .. :try_end_77} :catchall_bb

    .line 2247
    .end local v0    # "e":Ljava/io/IOException;
    :cond_77
    :goto_77
    :try_start_77
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_bb

    .line 2248
    return-void

    .line 2230
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :cond_79
    :try_start_79
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_49
    .catchall {:try_start_79 .. :try_end_7c} :catchall_c2

    .line 2231
    const/4 v2, 0x0

    .line 2232
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :try_start_7d
    iget-object v6, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_ac

    .line 2233
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_aa} :catch_aa
    .catchall {:try_start_7d .. :try_end_aa} :catchall_b4

    .line 2235
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_aa
    move-exception v0

    goto :goto_4b

    .line 2245
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_ac
    if-eqz v2, :cond_77

    :try_start_ae
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2
    .catchall {:try_start_ae .. :try_end_b1} :catchall_bb

    goto :goto_77

    :catch_b2
    move-exception v6

    goto :goto_77

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_b4
    move-exception v6

    :goto_b5
    if-eqz v2, :cond_ba

    :try_start_b7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_c0
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bb

    :cond_ba
    :goto_ba
    :try_start_ba
    throw v6

    .line 2247
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_bb
    move-exception v6

    monitor-exit v7
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_bb

    throw v6

    .line 2245
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_be
    move-exception v6

    goto :goto_77

    .end local v0    # "e":Ljava/io/IOException;
    :catch_c0
    move-exception v8

    goto :goto_ba

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :catchall_c2
    move-exception v6

    move-object v2, v3

    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    goto :goto_b5
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    .line 2126
    if-nez p1, :cond_b

    .line 2127
    const-string v5, "BackupManagerService"

    const-string/jumbo v6, "removePackageParticipants with null list"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_a
    return-void

    .line 2133
    :cond_b
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_a

    aget-object v3, v0, v1

    .line 2135
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 2136
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_30

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2137
    invoke-direct {p0, v4, v3}, removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 2138
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2140
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2133
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method resetBackupState(Ljava/io/File;)V
    .registers 14
    .param p1, "stateFileDir"    # Ljava/io/File;

    .prologue
    .line 1751
    iget-object v9, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1753
    :try_start_3
    iget-object v8, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 1754
    iget-object v8, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1756
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mCurrentToken:J

    .line 1757
    invoke-virtual {p0}, writeRestoreTokens()V

    .line 1760
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1a
    if-ge v3, v4, :cond_30

    aget-object v7, v1, v3

    .line 1762
    .local v7, "sf":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "_need_init_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 1763
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1760
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1766
    .end local v7    # "sf":Ljava/io/File;
    :cond_30
    monitor-exit v9
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_5e

    .line 1769
    iget-object v9, p0, mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1770
    :try_start_34
    iget-object v8, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1771
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .local v2, "i":I
    :goto_3b
    if-ge v2, v0, :cond_64

    .line 1772
    iget-object v8, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1773
    .local v6, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v6, :cond_61

    .line 1774
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1775
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5}, dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4b

    .line 1779
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_5b
    move-exception v8

    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_5b

    throw v8

    .line 1766
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "len$":I
    :catchall_5e
    move-exception v8

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v8

    .line 1771
    .restart local v0    # "N":I
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v4    # "len$":I
    .restart local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1779
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_64
    :try_start_64
    monitor-exit v9
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_5b

    .line 1780
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 9718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2b

    .line 9719
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-system process uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " attemping install-time restore"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9781
    :cond_2a
    :goto_2a
    return-void

    .line 9724
    :cond_2b
    const/4 v11, 0x0

    .line 9726
    .local v11, "skip":Z
    invoke-virtual {p0, p1}, getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    .line 9727
    .local v6, "restoreSet":J
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAtInstall pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " token="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " restoreSet="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9730
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_6c

    .line 9732
    const/4 v11, 0x1

    .line 9736
    :cond_6c
    iget-object v1, p0, mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 9737
    .local v3, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v3, :cond_7c

    .line 9738
    const-string v1, "BackupManagerService"

    const-string v2, "No transport"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9739
    const/4 v11, 0x1

    .line 9742
    :cond_7c
    iget-boolean v1, p0, mAutoRestore:Z

    if-nez v1, :cond_9b

    .line 9744
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-restorable state: auto="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, mAutoRestore:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9746
    const/4 v11, 0x1

    .line 9749
    :cond_9b
    if-nez v11, :cond_bd

    .line 9756
    :try_start_9d
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 9758
    .local v4, "dirName":Ljava/lang/String;
    iget-object v1, p0, mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9762
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 9763
    .local v10, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLjava/lang/String;I)V

    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9765
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_bd} :catch_d0

    .line 9773
    .end local v4    # "dirName":Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_bd
    :goto_bd
    if-eqz v11, :cond_2a

    .line 9776
    const-string v1, "BackupManagerService"

    const-string v2, "Finishing install immediately"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9778
    :try_start_c6
    iget-object v1, p0, mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cb} :catch_cd

    goto/16 :goto_2a

    .line 9779
    :catch_cd
    move-exception v1

    goto/16 :goto_2a

    .line 9766
    :catch_d0
    move-exception v0

    .line 9768
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to contact transport"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9769
    const/4 v11, 0x1

    goto :goto_bd
.end method

.method restoreWidgetData(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .prologue
    .line 7556
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 7557
    return-void
.end method

.method scheduleNextFullBackupJob(J)V
    .registers 20
    .param p1, "transportMinLatency"    # J

    .prologue
    .line 4627
    move-object/from16 v0, p0

    iget-object v12, v0, mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4628
    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_49

    .line 4632
    move-object/from16 v0, p0

    iget-object v7, v0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-wide v10, v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    .line 4633
    .local v10, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v10

    .line 4634
    .local v8, "timeSinceLast":J
    const-wide/32 v14, 0x5265c00

    cmp-long v7, v8, v14

    if-gez v7, :cond_46

    const-wide/32 v14, 0x5265c00

    sub-long v2, v14, v8

    .line 4636
    .local v2, "appLatency":J
    :goto_2e
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 4637
    .local v4, "latency":J
    new-instance v6, Lcom/android/server/backup/BackupManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    .line 4642
    .local v6, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v7, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v14, 0x9c4

    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4648
    .end local v2    # "appLatency":J
    .end local v4    # "latency":J
    .end local v6    # "r":Ljava/lang/Runnable;
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :goto_44
    monitor-exit v12

    .line 4649
    return-void

    .line 4634
    .restart local v8    # "timeSinceLast":J
    .restart local v10    # "upcomingLastBackup":J
    :cond_46
    const-wide/16 v2, 0x0

    goto :goto_2e

    .line 4645
    .end local v8    # "timeSinceLast":J
    .end local v10    # "upcomingLastBackup":J
    :cond_49
    const-string v7, "BackupManagerService"

    const-string v13, "Full backup queue empty; not scheduling"

    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 4648
    :catchall_51
    move-exception v7

    monitor-exit v12
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw v7
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 9564
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "selectBackupTransport"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9567
    iget-object v4, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 9568
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_4f

    move-result-wide v0

    .line 9570
    .local v0, "oldId":J
    :try_start_11
    iget-object v2, p0, mCurrentTransport:Ljava/lang/String;

    .line 9571
    .local v2, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, mCurrentTransport:Ljava/lang/String;

    .line 9572
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "backup_transport"

    invoke-static {v3, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 9574
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransport() set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_4a

    .line 9578
    :try_start_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    return-object v2

    .end local v2    # "prevTransport":Ljava/lang/String;
    :catchall_4a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 9580
    .end local v0    # "oldId":J
    :catchall_4f
    move-exception v3

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public setAutoRestore(Z)V
    .registers 7
    .param p1, "doAutoRestore"    # Z

    .prologue
    .line 9477
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "setAutoRestore"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9480
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto restore => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9484
    .local v0, "oldId":J
    :try_start_26
    monitor-enter p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_41

    .line 9485
    :try_start_27
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "backup_auto_restore"

    if-eqz p1, :cond_3c

    const/4 v2, 0x1

    :goto_32
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9487
    iput-boolean p1, p0, mAutoRestore:Z

    .line 9488
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3e

    .line 9490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9492
    return-void

    .line 9485
    :cond_3c
    const/4 v2, 0x0

    goto :goto_32

    .line 9488
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 9490
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupEnabled(Z)V
    .registers 15
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 9420
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    .line 9421
    .local v1, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz p1, :cond_1a

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 9422
    const-string v7, "BackupManagerService"

    const-string v8, "Backup is not allowed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9473
    :goto_19
    return-void

    .line 9426
    :cond_1a
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    const-string/jumbo v11, "setBackupEnabled"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9429
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup enabled => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 9433
    .local v4, "oldId":J
    :try_start_40
    iget-boolean v6, p0, mEnabled:Z

    .line 9434
    .local v6, "wasEnabled":Z
    monitor-enter p0
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_72

    .line 9435
    :try_start_43
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "backup_enabled"

    if-eqz p1, :cond_6d

    :goto_4d
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9437
    iput-boolean p1, p0, mEnabled:Z

    .line 9438
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_6f

    .line 9440
    :try_start_53
    iget-object v8, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_72

    .line 9441
    if-eqz p1, :cond_77

    if-nez v6, :cond_77

    :try_start_5a
    iget-boolean v7, p0, mProvisioned:Z

    if-eqz v7, :cond_77

    .line 9443
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 9444
    const-wide/16 v10, 0x0

    invoke-virtual {p0, v10, v11}, scheduleNextFullBackupJob(J)V

    .line 9469
    :cond_68
    :goto_68
    monitor-exit v8
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_a8

    .line 9471
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :cond_6d
    move v7, v8

    .line 9435
    goto :goto_4d

    .line 9438
    :catchall_6f
    move-exception v7

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v7
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 9471
    .end local v6    # "wasEnabled":Z
    :catchall_72
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 9445
    .restart local v6    # "wasEnabled":Z
    :cond_77
    if-nez p1, :cond_68

    .line 9449
    :try_start_79
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    .line 9454
    if-eqz v6, :cond_68

    iget-boolean v7, p0, mProvisioned:Z

    if-eqz v7, :cond_68

    .line 9458
    iget-object v9, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v9
    :try_end_87
    .catchall {:try_start_79 .. :try_end_87} :catchall_a8

    .line 9459
    :try_start_87
    new-instance v0, Ljava/util/HashSet;

    iget-object v7, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9460
    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v9
    :try_end_93
    .catchall {:try_start_87 .. :try_end_93} :catchall_ab

    .line 9462
    :try_start_93
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_97
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9463
    .local v3, "transport":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v3}, recordInitPendingLocked(ZLjava/lang/String;)V

    goto :goto_97

    .line 9469
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "transport":Ljava/lang/String;
    :catchall_a8
    move-exception v7

    monitor-exit v8
    :try_end_aa
    .catchall {:try_start_93 .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw v7
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_72

    .line 9460
    :catchall_ab
    move-exception v7

    :try_start_ac
    monitor-exit v9
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw v7

    .line 9465
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_ae
    iget-object v7, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_ba
    .catchall {:try_start_ad .. :try_end_ba} :catchall_a8

    goto :goto_68
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.BACKUP"

    const-string/jumbo v21, "setBackupPassword"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    move-object/from16 v0, p0

    iget v0, v0, mPasswordVersion:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_46

    const/4 v11, 0x1

    .line 1607
    .local v11, "pbkdf2Fallback":Z
    :goto_1d
    const-string v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_48

    if-eqz v11, :cond_43

    const-string v19, "PBKDF2WithHmacSHA1And8bit"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_48

    .line 1610
    :cond_43
    const/16 v19, 0x0

    .line 1675
    :cond_45
    :goto_45
    return v19

    .line 1603
    .end local v11    # "pbkdf2Fallback":Z
    :cond_46
    const/4 v11, 0x0

    goto :goto_1d

    .line 1614
    .restart local v11    # "pbkdf2Fallback":Z
    :cond_48
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mPasswordVersion:I

    .line 1615
    const/4 v12, 0x0

    .line 1616
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 1618
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :try_start_52
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5f} :catch_ac
    .catchall {:try_start_52 .. :try_end_5f} :catchall_cb

    .line 1619
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .local v13, "pwFout":Ljava/io/FileOutputStream;
    :try_start_5f
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_196
    .catchall {:try_start_5f .. :try_end_64} :catchall_18d

    .line 1620
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .local v15, "pwOut":Ljava/io/DataOutputStream;
    :try_start_64
    move-object/from16 v0, p0

    iget v0, v0, mPasswordVersion:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6f} :catch_19a
    .catchall {:try_start_64 .. :try_end_6f} :catchall_191

    .line 1626
    if-eqz v15, :cond_74

    :try_start_71
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 1627
    :cond_74
    if-eqz v13, :cond_79

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_a3

    .line 1634
    :cond_79
    :goto_79
    if-eqz p2, :cond_81

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_f4

    .line 1635
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_e0

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_e0

    .line 1638
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to clear backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/16 v19, 0x0

    goto :goto_45

    .line 1628
    :catch_a3
    move-exception v7

    .line 1629
    .local v7, "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to close pw version record"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1621
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catch_ac
    move-exception v7

    .line 1622
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_ad
    :try_start_ad
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to write backup pw version; password not changed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_cb

    .line 1623
    const/16 v19, 0x0

    .line 1626
    if-eqz v14, :cond_bb

    :try_start_b8
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1627
    :cond_bb
    if-eqz v12, :cond_45

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c0} :catch_c1

    goto :goto_45

    .line 1628
    :catch_c1
    move-exception v7

    .line 1629
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 1625
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_cb
    move-exception v19

    .line 1626
    :goto_cc
    if-eqz v14, :cond_d1

    :try_start_ce
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1627
    :cond_d1
    if-eqz v12, :cond_d6

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d6} :catch_d7

    .line 1630
    :cond_d6
    :goto_d6
    throw v19

    .line 1628
    :catch_d7
    move-exception v7

    .line 1629
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 1642
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_e0
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordHash:Ljava/lang/String;

    .line 1643
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordSalt:[B

    .line 1644
    const/16 v19, 0x1

    goto/16 :goto_45

    .line 1649
    :cond_f4
    const/16 v19, 0x200

    :try_start_f6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, randomBytes(I)[B

    move-result-object v18

    .line 1650
    .local v18, "salt":[B
    const-string v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_10f} :catch_161

    move-result-object v8

    .line 1652
    .local v8, "newPwHash":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "pwf":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 1653
    .local v5, "buffer":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 1655
    .local v9, "out":Ljava/io/DataOutputStream;
    :try_start_114
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_123
    .catchall {:try_start_114 .. :try_end_123} :catchall_16d

    .line 1656
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .local v17, "pwf":Ljava/io/OutputStream;
    :try_start_123
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_17e

    .line 1657
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .local v6, "buffer":Ljava/io/OutputStream;
    :try_start_12a
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12f
    .catchall {:try_start_12a .. :try_end_12f} :catchall_182

    .line 1660
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_12f
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1661
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1662
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 1664
    move-object/from16 v0, p0

    iput-object v8, v0, mPasswordHash:Ljava/lang/String;

    .line 1665
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordSalt:[B
    :try_end_14e
    .catchall {:try_start_12f .. :try_end_14e} :catchall_187

    .line 1666
    const/16 v19, 0x1

    .line 1668
    if-eqz v10, :cond_155

    :try_start_152
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 1669
    :cond_155
    if-eqz v6, :cond_15a

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1670
    :cond_15a
    if-eqz v17, :cond_45

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_15f} :catch_161

    goto/16 :goto_45

    .line 1672
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .end local v18    # "salt":[B
    :catch_161
    move-exception v7

    .line 1673
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to set backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/16 v19, 0x0

    goto/16 :goto_45

    .line 1668
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v8    # "newPwHash":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v18    # "salt":[B
    :catchall_16d
    move-exception v19

    :goto_16e
    if-eqz v9, :cond_173

    :try_start_170
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 1669
    :cond_173
    if-eqz v5, :cond_178

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1670
    :cond_178
    if-eqz v16, :cond_17d

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    :cond_17d
    throw v19
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_17e} :catch_161

    .line 1668
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_17e
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_182
    move-exception v19

    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_187
    move-exception v19

    move-object v9, v10

    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .line 1625
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .end local v18    # "salt":[B
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_18d
    move-exception v19

    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_cc

    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_191
    move-exception v19

    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_cc

    .line 1621
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    :catch_196
    move-exception v7

    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_ad

    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_19a
    move-exception v7

    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_ad
.end method

.method public setBackupProvisioned(Z)V
    .registers 5
    .param p1, "available"    # Z

    .prologue
    .line 9496
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9501
    return-void
.end method

.method public setupEdmBackupRestore(ZLjava/lang/String;I)Z
    .registers 8
    .param p1, "isBackup"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10402
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 10421
    :goto_c
    return v0

    .line 10406
    :cond_d
    if-eqz p2, :cond_1f

    iget-object v2, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v2, :cond_1f

    iget-object v2, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$3300(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_1f
    iget-boolean v2, p0, mBackupRunning:Z

    if-eqz v2, :cond_2b

    .line 10408
    :cond_23
    const-string v1, "BackupManagerService"

    const-string v2, "cannot procced with edm backup - backup manager service already running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 10411
    :cond_2b
    if-eqz p1, :cond_3c

    .line 10412
    const-string v0, "BackupManagerService"

    const-string v2, "Running a EDM backup pass"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10413
    iput-boolean v1, p0, isEdmBackupRequest:Z

    .line 10414
    iput-object p2, p0, mEdmBackupAppPkgName:Ljava/lang/String;

    .line 10420
    :goto_38
    iput p3, p0, mEdmUserId:I

    move v0, v1

    .line 10421
    goto :goto_c

    .line 10416
    :cond_3c
    const-string v0, "BackupManagerService"

    const-string v2, "Running a EDM restore pass"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10417
    iput-boolean v1, p0, isEdmRestoreRequest:Z

    .line 10418
    iput-object p2, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    goto :goto_38
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 6
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    const/4 v3, -0x2

    .line 9345
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 9346
    :try_start_4
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9347
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 9348
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1b

    .line 9351
    iget-boolean v0, p0, isEdmBackupRequest:Z

    if-eqz v0, :cond_1e

    .line 9352
    invoke-direct {p0, v3}, resetEdmBackupTags(I)V

    .line 9356
    :cond_17
    :goto_17
    invoke-direct {p0}, warnEdmAdminOperationCompleted()V

    .line 9358
    return-void

    .line 9348
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0

    .line 9353
    :cond_1e
    iget-boolean v0, p0, isEdmRestoreRequest:Z

    if-eqz v0, :cond_17

    .line 9354
    invoke-direct {p0, v3}, resetEdmRestoreTags(I)V

    goto :goto_17
.end method

.method startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9329
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 9331
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9332
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .registers 7
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 9314
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9315
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v2, "com.android.backupconfirm"

    const-string v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9317
    const-string v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9318
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9319
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 9323
    const/4 v2, 0x1

    .end local v0    # "confIntent":Landroid/content/Intent;
    :goto_1c
    return v2

    .line 9320
    :catch_1d
    move-exception v1

    .line 9321
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 3459
    :try_start_0
    iget-object v1, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3464
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_24

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_24

    .line 3468
    iget-object v1, p0, mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    .line 3475
    :cond_24
    :goto_24
    return-void

    .line 3472
    :catch_25
    move-exception v0

    .line 3473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method tryBindTransport(Landroid/content/pm/ServiceInfo;)Z
    .registers 8
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v2, 0x0

    .line 2044
    :try_start_1
    iget-object v3, p0, mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2045
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_17

    .line 2047
    invoke-virtual {p0, p1}, bindTransport(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    .line 2054
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_16
    return v2

    .line 2049
    .restart local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_17
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not privileged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_37} :catch_38

    goto :goto_16

    .line 2051
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_38
    move-exception v0

    .line 2052
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem resolving transport package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 4
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 9335
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 9336
    :goto_3
    :try_start_3
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_13

    .line 9338
    :try_start_b
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    .line 9339
    :catch_11
    move-exception v0

    goto :goto_3

    .line 9341
    :cond_13
    :try_start_13
    monitor-exit v1

    .line 9342
    return-void

    .line 9341
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method

.method waitUntilOperationComplete(I)Z
    .registers 8
    .param p1, "token"    # I

    .prologue
    const/4 v4, 0x1

    .line 2450
    const/4 v1, 0x0

    .line 2451
    .local v1, "finalState":I
    const/4 v2, 0x0

    .line 2452
    .local v2, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v5, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2454
    :goto_6
    :try_start_6
    iget-object v3, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v2, v0

    .line 2455
    if-nez v2, :cond_1d

    .line 2471
    :goto_12
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_2c

    .line 2473
    iget-object v3, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2476
    if-ne v1, v4, :cond_2f

    move v3, v4

    :goto_1c
    return v3

    .line 2459
    :cond_1d
    :try_start_1d
    iget v3, v2, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2c

    if-nez v3, :cond_29

    .line 2461
    :try_start_21
    iget-object v3, p0, mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_2c

    goto :goto_6

    .line 2462
    :catch_27
    move-exception v3

    goto :goto_6

    .line 2466
    :cond_29
    :try_start_29
    iget v1, v2, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2467
    goto :goto_12

    .line 2471
    :catchall_2c
    move-exception v3

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2c

    throw v3

    .line 2476
    :cond_2f
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method writeRestoreTokens()V
    .registers 8

    .prologue
    .line 2255
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, mTokenFile:Ljava/io/File;

    const-string/jumbo v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2258
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2261
    iget-wide v4, p0, mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2262
    iget-wide v4, p0, mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2265
    iget-object v4, p0, mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_24

    .line 2266
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2275
    :cond_20
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2279
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_23
    return-void

    .line 2268
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_24
    iget-object v4, p0, mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2269
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget-object v4, p0, mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2271
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_51

    .line 2276
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    :catch_61
    move-exception v1

    .line 2277
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method
