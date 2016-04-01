.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/io/File;

.field private static final DATA_PATH:Ljava/io/File;

.field static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final MONITOR_INTERVAL:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/io/File;

.field static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field static final localLOGV:Z


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private final mCacheFileStats:Landroid/os/StatFs;

.field private mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

.field mClearSucceeded:Z

.field mClearingCache:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataFileStats:Landroid/os/StatFs;

.field private mFreeMem:J

.field private mFreeMemAfterLastCacheClear:J

.field private final mHandler:Landroid/os/Handler;

.field private final mIsBootImageOnDisk:Z

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private final mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

.field mLowMemFlag:Z

.field private mMemCacheStartTrimThreshold:J

.field private mMemCacheTrimToThreshold:J

.field private mMemFullFlag:Z

.field private mMemFullThreshold:J

.field mMemLowThreshold:J

.field private final mRemoteService:Landroid/os/IBinder;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStorageFullIntent:Landroid/content/Intent;

.field private final mStorageLowIntent:Landroid/content/Intent;

.field private final mStorageNotFullIntent:Landroid/content/Intent;

.field private final mStorageOkIntent:Landroid/content/Intent;

.field private final mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private final mTotalMemory:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, DATA_PATH:Ljava/io/File;

    .line 110
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, SYSTEM_PATH:Ljava/io/File;

    .line 111
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, CACHE_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 100
    iput-boolean v2, p0, mLowMemFlag:Z

    .line 101
    iput-boolean v2, p0, mMemFullFlag:Z

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mThreadStartTime:J

    .line 114
    iput-boolean v2, p0, mClearSucceeded:Z

    .line 148
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 414
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$4;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$4;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, mRemoteService:Landroid/os/IBinder;

    .line 330
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 332
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastReportedFreeMemTime:J

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mResolver:Landroid/content/ContentResolver;

    .line 334
    invoke-static {}, isBootImageOnDisk()Z

    move-result v0

    iput-boolean v0, p0, mIsBootImageOnDisk:Z

    .line 336
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, DATA_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mDataFileStats:Landroid/os/StatFs;

    .line 337
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, SYSTEM_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mSystemFileStats:Landroid/os/StatFs;

    .line 338
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, CACHE_PATH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mCacheFileStats:Landroid/os/StatFs;

    .line 340
    iget-object v0, p0, mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, mTotalMemory:J

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mStorageLowIntent:Landroid/content/Intent;

    .line 343
    iget-object v0, p0, mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mStorageOkIntent:Landroid/content/Intent;

    .line 345
    iget-object v0, p0, mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mStorageFullIntent:Landroid/content/Intent;

    .line 347
    iget-object v0, p0, mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mStorageNotFullIntent:Landroid/content/Intent;

    .line 349
    iget-object v0, p0, mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 78
    invoke-direct {p0}, sendNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 78
    iget-boolean v0, p0, mIsBootImageOnDisk:Z

    return v0
.end method

.method private cancelFullNotification()V
    .registers 4

    .prologue
    .line 540
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 541
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mStorageNotFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 542
    return-void
.end method

.method private cancelNotification()V
    .registers 6

    .prologue
    .line 515
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 517
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 521
    .local v1, "mNotificationMgr":Landroid/app/NotificationManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 523
    iget-object v2, p0, mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 524
    iget-object v2, p0, mStorageOkIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 525
    return-void
.end method

.method private clearCache()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 223
    iget-object v1, p0, mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_d

    .line 225
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    iput-object v1, p0, mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    .line 227
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, mClearingCache:Z

    .line 230
    :try_start_10
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-wide v4, p0, mMemCacheTrimToThreshold:J

    iget-object v3, p0, mClearCacheObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_23} :catch_24

    .line 237
    :goto_23
    return-void

    .line 232
    :catch_24
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-boolean v6, p0, mClearingCache:Z

    .line 235
    iput-boolean v6, p0, mClearSucceeded:Z

    goto :goto_23
.end method

.method private static isBootImageOnDisk()Z
    .registers 5

    .prologue
    .line 364
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v3, :cond_15

    aget-object v2, v0, v1

    .line 365
    .local v2, "instructionSet":Ljava/lang/String;
    invoke-static {v2}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 366
    const/4 v4, 0x0

    .line 369
    .end local v2    # "instructionSet":Ljava/lang/String;
    :goto_11
    return v4

    .line 364
    .restart local v2    # "instructionSet":Ljava/lang/String;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 369
    .end local v2    # "instructionSet":Ljava/lang/String;
    :cond_15
    const/4 v4, 0x1

    goto :goto_11
.end method

.method private restatDataDir()V
    .registers 23

    .prologue
    .line 172
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, mDataFileStats:Landroid/os/StatFs;

    sget-object v18, DATA_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v7, v0, mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mFreeMem:J
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2d} :catch_14a

    .line 179
    :goto_2d
    const-string/jumbo v7, "debug.freemem"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "debugFreeMem":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 181
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mFreeMem:J

    .line 184
    :cond_46
    move-object/from16 v0, p0

    iget-object v7, v0, mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v18, "sys_free_storage_log_interval"

    const-wide/16 v20, 0x2d0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x3c

    mul-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    mul-long v10, v18, v20

    .line 188
    .local v10, "freeMemLogInterval":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 189
    .local v4, "currTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-eqz v7, :cond_7b

    move-object/from16 v0, p0

    iget-wide v0, v0, mLastReportedFreeMemTime:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    cmp-long v7, v18, v10

    if-ltz v7, :cond_fe

    .line 191
    :cond_7b
    move-object/from16 v0, p0

    iput-wide v4, v0, mLastReportedFreeMemTime:J

    .line 192
    const-wide/16 v14, -0x1

    .local v14, "mFreeSystem":J
    const-wide/16 v12, -0x1

    .line 194
    .local v12, "mFreeCache":J
    :try_start_83
    move-object/from16 v0, p0

    iget-object v7, v0, mSystemFileStats:Landroid/os/StatFs;

    sget-object v18, SYSTEM_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v7, v0, mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mSystemFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_a4} :catch_147

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v14, v18, v20

    .line 201
    :goto_aa
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v7, v0, mCacheFileStats:Landroid/os/StatFs;

    sget-object v18, CACHE_PATH:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v7, v0, mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mCacheFileStats:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_aa .. :try_end_cb} :catch_145

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v12, v18, v20

    .line 207
    :goto_d1
    const/16 v7, 0xaba

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, mFreeMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 211
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :cond_fe
    move-object/from16 v0, p0

    iget-object v7, v0, mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v18, "disk_free_change_reporting_threshold"

    const-wide/32 v20, 0x200000

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v7, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 215
    .local v16, "threshold":J
    move-object/from16 v0, p0

    iget-wide v0, v0, mFreeMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mLastReportedFreeMem:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 216
    .local v8, "delta":J
    cmp-long v7, v8, v16

    if-gtz v7, :cond_12b

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v7, v8, v18

    if-gez v7, :cond_144

    .line 217
    :cond_12b
    move-object/from16 v0, p0

    iget-wide v0, v0, mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mLastReportedFreeMem:J

    .line 218
    const/16 v7, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, mFreeMem:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 220
    :cond_144
    return-void

    .line 204
    .end local v8    # "delta":J
    .end local v16    # "threshold":J
    .restart local v12    # "mFreeCache":J
    .restart local v14    # "mFreeSystem":J
    :catch_145
    move-exception v7

    goto :goto_d1

    .line 197
    :catch_147
    move-exception v7

    goto/16 :goto_aa

    .line 175
    .end local v4    # "currTime":J
    .end local v6    # "debugFreeMem":Ljava/lang/String;
    .end local v10    # "freeMemLogInterval":J
    .end local v12    # "mFreeCache":J
    .end local v14    # "mFreeSystem":J
    :catch_14a
    move-exception v7

    goto/16 :goto_2d
.end method

.method private sendFullNotification()V
    .registers 4

    .prologue
    .line 532
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mStorageFullIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 533
    return-void
.end method

.method private sendNotification()V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 472
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 475
    .local v0, "context":Landroid/content/Context;
    const/16 v3, 0xab9

    iget-wide v12, p0, mFreeMem:J

    invoke-static {v3, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 477
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_a0

    const-string v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    :goto_18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v2, "lowMemIntent":Landroid/content/Intent;
    const-string/jumbo v3, "memory"

    iget-wide v12, p0, mFreeMem:J

    invoke-virtual {v2, v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 481
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 482
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 485
    .local v8, "mNotificationMgr":Landroid/app/NotificationManager;
    const v3, 0x1040355

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 487
    .local v10, "title":Ljava/lang/CharSequence;
    iget-boolean v3, p0, mIsBootImageOnDisk:Z

    if-eqz v3, :cond_a4

    const v3, 0x1040356

    :goto_3f
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 490
    .local v6, "details":Ljava/lang/CharSequence;
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 492
    .local v7, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080755

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x1060059

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v3, "sys"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 505
    .local v9, "notification":Landroid/app/Notification;
    iget v1, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v9, Landroid/app/Notification;->flags:I

    .line 506
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v11, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 508
    iget-object v1, p0, mStorageLowIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 509
    return-void

    .line 477
    .end local v2    # "lowMemIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v7    # "intent":Landroid/app/PendingIntent;
    .end local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_a0
    const-string v3, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    goto/16 :goto_18

    .line 487
    .restart local v2    # "lowMemIntent":Landroid/content/Intent;
    .restart local v8    # "mNotificationMgr":Landroid/app/NotificationManager;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_a4
    const v3, 0x1040357

    goto :goto_3f
.end method


# virtual methods
.method checkMemory(Z)V
    .registers 12
    .param p1, "checkCache"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 244
    iget-boolean v2, p0, mClearingCache:Z

    if-eqz v2, :cond_23

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, mThreadStartTime:J

    sub-long v0, v2, v4

    .line 248
    .local v0, "diffTime":J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    .line 249
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Thread that clears cache file seems to run for ever"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v0    # "diffTime":J
    :cond_1c
    :goto_1c
    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v9, v2, v3}, postCheckMemoryMsg(ZJ)V

    .line 318
    return-void

    .line 252
    :cond_23
    invoke-direct {p0}, restatDataDir()V

    .line 256
    iget-wide v2, p0, mFreeMem:J

    iget-wide v4, p0, mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_8d

    .line 257
    if-eqz p1, :cond_78

    .line 263
    iget-wide v2, p0, mFreeMem:J

    iget-wide v4, p0, mMemCacheStartTrimThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_54

    .line 266
    iget-wide v2, p0, mFreeMemAfterLastCacheClear:J

    iget-wide v4, p0, mFreeMem:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, mMemLowThreshold:J

    iget-wide v6, p0, mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_54

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mThreadStartTime:J

    .line 272
    iput-boolean v8, p0, mClearSucceeded:Z

    .line 273
    invoke-direct {p0}, clearCache()V

    .line 299
    :cond_54
    :goto_54
    iget-boolean v2, p0, mLowMemFlag:Z

    if-nez v2, :cond_66

    iget-boolean v2, p0, mIsBootImageOnDisk:Z

    if-nez v2, :cond_66

    .line 300
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "No boot image on disk due to lack of space. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, sendNotification()V

    .line 303
    :cond_66
    iget-wide v2, p0, mFreeMem:J

    iget-wide v4, p0, mMemFullThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a2

    .line 304
    iget-boolean v2, p0, mMemFullFlag:Z

    if-nez v2, :cond_1c

    .line 305
    invoke-direct {p0}, sendFullNotification()V

    .line 306
    iput-boolean v9, p0, mMemFullFlag:Z

    goto :goto_1c

    .line 279
    :cond_78
    iget-wide v2, p0, mFreeMem:J

    iput-wide v2, p0, mFreeMemAfterLastCacheClear:J

    .line 280
    iget-boolean v2, p0, mLowMemFlag:Z

    if-nez v2, :cond_54

    .line 283
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Running low on memory. Sending notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, sendNotification()V

    .line 285
    iput-boolean v9, p0, mLowMemFlag:Z

    goto :goto_54

    .line 292
    :cond_8d
    iget-wide v2, p0, mFreeMem:J

    iput-wide v2, p0, mFreeMemAfterLastCacheClear:J

    .line 293
    iget-boolean v2, p0, mLowMemFlag:Z

    if-eqz v2, :cond_54

    .line 294
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Memory available. Cancelling notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, cancelNotification()V

    .line 296
    iput-boolean v8, p0, mLowMemFlag:Z

    goto :goto_54

    .line 309
    :cond_a2
    iget-boolean v2, p0, mMemFullFlag:Z

    if-eqz v2, :cond_1c

    .line 310
    invoke-direct {p0}, cancelFullNotification()V

    .line 311
    iput-boolean v8, p0, mMemFullFlag:Z

    goto/16 :goto_1c
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 431
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 433
    .local v0, "context":Landroid/content/Context;
    const-string v1, "Current DeviceStorageMonitor state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    const-string v1, "  mFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, mFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    const-string v1, " mTotalMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-wide v2, p0, mTotalMemory:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    const-string v1, "  mFreeMemAfterLastCacheClear="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-wide v2, p0, mFreeMemAfterLastCacheClear:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    const-string v1, "  mLastReportedFreeMem="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    iget-wide v2, p0, mLastReportedFreeMem:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    const-string v1, " mLastReportedFreeMemTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    iget-wide v2, p0, mLastReportedFreeMemTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 446
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 448
    const-string v1, "  mLowMemFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mLowMemFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 449
    const-string v1, " mMemFullFlag="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mMemFullFlag:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 450
    const-string v1, " mIsBootImageOnDisk="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mIsBootImageOnDisk:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 452
    const-string v1, "  mClearSucceeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mClearSucceeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 453
    const-string v1, " mClearingCache="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mClearingCache:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 455
    const-string v1, "  mMemLowThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    iget-wide v2, p0, mMemLowThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    const-string v1, " mMemFullThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    iget-wide v2, p0, mMemFullThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const-string v1, "  mMemCacheStartTrimThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget-wide v2, p0, mMemCacheStartTrimThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    const-string v1, " mMemCacheTrimToThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    iget-wide v2, p0, mMemCacheTrimToThreshold:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public onStart()V
    .registers 9

    .prologue
    .line 379
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 380
    .local v0, "sm":Landroid/os/storage/StorageManager;
    sget-object v1, DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, mMemLowThreshold:J

    .line 381
    sget-object v1, DATA_PATH:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, mMemFullThreshold:J

    .line 383
    iget-wide v2, p0, mMemLowThreshold:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    iget-wide v4, p0, mMemFullThreshold:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    iput-wide v2, p0, mMemCacheStartTrimThreshold:J

    .line 384
    iget-wide v2, p0, mMemLowThreshold:J

    iget-wide v4, p0, mMemLowThreshold:J

    iget-wide v6, p0, mMemCacheStartTrimThreshold:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, mMemCacheTrimToThreshold:J

    .line 386
    iget-wide v2, p0, mTotalMemory:J

    iput-wide v2, p0, mFreeMemAfterLastCacheClear:J

    .line 387
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, checkMemory(Z)V

    .line 389
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 390
    iget-object v1, p0, mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 392
    const-string/jumbo v1, "devicestoragemonitor"

    iget-object v2, p0, mRemoteService:Landroid/os/IBinder;

    invoke-virtual {p0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 393
    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v2, p0, mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v1, v2}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method postCheckMemoryMsg(ZJ)V
    .registers 10
    .param p1, "clearCache"    # Z
    .param p2, "delay"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 322
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_16

    move v0, v1

    :goto_e
    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 326
    return-void

    :cond_16
    move v0, v2

    .line 323
    goto :goto_e
.end method
