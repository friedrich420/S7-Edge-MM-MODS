.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$SettingsObserver;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PAROLE_TIMEOUT:I = 0x6

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_PAROLE_END_TIMEOUT:I = 0x7

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EVENT:I = 0x0

.field private static final ONE_MINUTE:J = 0xea60L

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppIdleDurationMillis:J

.field mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mAppIdleParoleDurationMillis:J

.field mAppIdleParoleIntervalMillis:J

.field mAppIdleParoled:Z

.field mAppIdleWallclockThresholdMillis:J

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mCheckIdleIntervalMillis:J

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mHandler:Landroid/os/Handler;

.field private mLastAppIdleParoledTime:J

.field private final mLock:Ljava/lang/Object;

.field private mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mRealTimeSnapshot:J

.field private mScreenOn:Z

.field mScreenOnSystemTimeSnapshot:J

.field mScreenOnTime:J

.field mSystemTimeSnapshot:J

.field private mUsageStatsDir:Ljava/io/File;

.field private mUsageStatsWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/usage/IUsageStatsWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUserState:Landroid/util/SparseArray;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUsageStatsWatchers:Ljava/util/HashMap;

    .line 158
    new-instance v0, Lcom/android/server/usage/AppIdleHistory;

    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory;-><init>()V

    iput-object v0, p0, mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPackageAccessListeners:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 166
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    .line 102
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    .line 102
    iget-object v0, p0, mUsageStatsWatchers:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkAndGetTimeLocked()J
    .registers 15

    .prologue
    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 547
    .local v4, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 548
    .local v8, "actualRealtime":J
    iget-wide v10, p0, mRealTimeSnapshot:J

    sub-long v10, v8, v10

    iget-wide v12, p0, mSystemTimeSnapshot:J

    add-long v2, v10, v12

    .line 549
    .local v2, "expectedSystemTime":J
    const/4 v6, 0x0

    .line 550
    .local v6, "resetBeginIdleTime":Z
    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x7d0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4b

    .line 554
    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    iget-wide v12, p0, mAppIdleDurationMillis:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_30

    .line 555
    iput-wide v4, p0, mScreenOnSystemTimeSnapshot:J

    .line 556
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mScreenOnTime:J

    .line 557
    const/4 v6, 0x1

    .line 559
    :cond_30
    iget-object v10, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 560
    .local v7, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    if-ge v0, v7, :cond_47

    .line 561
    iget-object v10, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 562
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJZ)V

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 564
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_47
    iput-wide v8, p0, mRealTimeSnapshot:J

    .line 565
    iput-wide v4, p0, mSystemTimeSnapshot:J

    .line 567
    .end local v0    # "i":I
    .end local v7    # "userCount":I
    :cond_4b
    return-wide v4
.end method

.method private cleanUpRemovedUsersLocked()V
    .registers 11

    .prologue
    .line 292
    iget-object v7, p0, mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 293
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_17

    .line 294
    :cond_f
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "There can\'t be no users"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 297
    :cond_17
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 298
    .local v3, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_25

    .line 316
    :cond_24
    return-void

    .line 304
    :cond_25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 306
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 307
    .local v4, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v4, :cond_45

    .line 308
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 309
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 312
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_45
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 313
    .local v0, "deleteCount":I
    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v0, :cond_24

    .line 314
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, deleteRecursively(Ljava/io/File;)V

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 8
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .prologue
    .line 575
    const-wide/16 v0, 0x0

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p0, mRealTimeSnapshot:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 576
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 9
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 518
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 519
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_13

    .line 520
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_13

    aget-object v4, v0, v2

    .line 521
    .local v4, "subFile":Ljava/io/File;
    invoke-static {v4}, deleteRecursively(Ljava/io/File;)V

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 525
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subFile":Ljava/io/File;
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_31

    .line 526
    const-string v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_31
    return-void
.end method

.method private flushToDiskLocked()V
    .registers 6

    .prologue
    .line 989
    iget-object v3, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 990
    .local v2, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 991
    iget-object v3, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 992
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 995
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_17
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 996
    return-void
.end method

.method private getScreenOnTimeFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 466
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mUsageStatsDir:Ljava/io/File;

    const-string v2, "0/screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getScreenOnTimeLocked(J)J
    .registers 8
    .param p1, "now"    # J

    .prologue
    .line 458
    iget-boolean v0, p0, mScreenOn:Z

    if-eqz v0, :cond_c

    .line 459
    iget-wide v0, p0, mScreenOnSystemTimeSnapshot:J

    sub-long v0, p1, v0

    iget-wide v2, p0, mScreenOnTime:J

    add-long/2addr v0, v2

    .line 461
    :goto_b
    return-wide v0

    :cond_c
    iget-wide v0, p0, mScreenOnTime:J

    goto :goto_b
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 532
    iget-object v1, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 533
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_2a

    .line 534
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, mUsageStatsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 536
    .restart local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-direct {p0, p2, p3}, getScreenOnTimeLocked(J)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->init(JJ)V

    .line 537
    iget-object v1, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    :cond_2a
    return-object v0
.end method

.method private isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 947
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 948
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v1, :cond_11

    move v4, v5

    .line 957
    :goto_10
    return v4

    .line 949
    :cond_11
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 950
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v0, :cond_19

    move v4, v5

    goto :goto_10

    .line 951
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 952
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v3, :cond_35

    .line 953
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 954
    const/4 v4, 0x1

    goto :goto_10

    .line 952
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_35
    move v4, v5

    .line 957
    goto :goto_10
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 967
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "network_score"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 969
    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    if-eqz p1, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private isAppIdleFiltered(Ljava/lang/String;IILcom/android/server/usage/UserUsageStatsService;JJ)Z
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "userService"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p5, "timeNow"    # J
    .param p7, "screenOnTime"    # J

    .prologue
    .line 819
    if-nez p1, :cond_4

    const/4 v1, 0x0

    .line 867
    :goto_3
    return v1

    .line 821
    :cond_4
    iget-boolean v1, p0, mAppIdleEnabled:Z

    if-nez v1, :cond_a

    .line 822
    const/4 v1, 0x0

    goto :goto_3

    .line 824
    :cond_a
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_10

    .line 826
    const/4 v1, 0x0

    goto :goto_3

    .line 828
    :cond_10
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 831
    const/4 v1, 0x0

    goto :goto_3

    .line 837
    :cond_1a
    :try_start_1a
    iget-object v1, p0, mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistExceptIdleApp(Ljava/lang/String;)Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_24

    move-result v1

    if-eqz v1, :cond_25

    .line 838
    const/4 v1, 0x0

    goto :goto_3

    .line 840
    :catch_24
    move-exception v1

    .line 843
    :cond_25
    invoke-direct {p0, p1, p3}, isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 844
    const/4 v1, 0x0

    goto :goto_3

    .line 847
    :cond_2d
    invoke-direct {p0, p1}, isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 848
    const/4 v1, 0x0

    goto :goto_3

    .line 851
    :cond_35
    invoke-direct {p0, p1}, isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 852
    const/4 v1, 0x0

    goto :goto_3

    .line 855
    :cond_3d
    iget-object v1, p0, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_4b

    iget-object v1, p0, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, p1, p3}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 857
    const/4 v1, 0x0

    goto :goto_3

    .line 861
    :cond_4b
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 862
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_5d

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->isBoundCocktailPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 863
    const/4 v1, 0x0

    goto :goto_3

    :cond_5d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    .line 867
    invoke-direct/range {v1 .. v7}, isAppIdleUnfiltered(Ljava/lang/String;Lcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v1

    goto :goto_3
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;Lcom/android/server/usage/UserUsageStatsService;JJ)Z
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userService"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p3, "timeNow"    # J
    .param p5, "screenOnTime"    # J

    .prologue
    .line 748
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 749
    :try_start_3
    invoke-virtual {p2, p1}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 750
    .local v2, "beginIdleTime":J
    invoke-virtual {p2, p1}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    move-result-wide v4

    .local v4, "lastUsedTime":J
    move-object v1, p0

    move-wide/from16 v6, p5

    move-wide v8, p3

    .line 751
    invoke-virtual/range {v1 .. v9}, hasPassedIdleTimeoutLocked(JJJJ)Z

    move-result v0

    monitor-exit v10

    return v0

    .line 753
    .end local v2    # "beginIdleTime":J
    .end local v4    # "lastUsedTime":J
    :catchall_15
    move-exception v0

    monitor-exit v10
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 961
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 962
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 429
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 430
    .local v0, "uid":I
    if-eqz p3, :cond_12

    .line 431
    iget-object v1, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v2, 0xf

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V

    .line 439
    .end local v0    # "uid":I
    :goto_11
    return-void

    .line 434
    .restart local v0    # "uid":I
    :cond_12
    iget-object v1, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v2, 0x10

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_11

    .line 437
    .end local v0    # "uid":I
    :catch_1a
    move-exception v1

    goto :goto_11
.end method

.method private postNextParoleTimeout()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    .line 337
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    iget-wide v2, p0, mLastAppIdleParoledTime:J

    iget-wide v4, p0, mAppIdleParoleIntervalMillis:J

    add-long/2addr v2, v4

    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 343
    .local v0, "timeLeft":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_19

    .line 344
    const-wide/16 v0, 0x0

    .line 346
    :cond_19
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    return-void
.end method

.method private postParoleEndTimeout()V
    .registers 5

    .prologue
    const/4 v1, 0x7

    .line 351
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-wide v2, p0, mAppIdleParoleDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 353
    return-void
.end method

.method private postParoleStateChanged()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 357
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 359
    return-void
.end method

.method private readScreenOnTimeLocked()J
    .registers 7

    .prologue
    .line 470
    const-wide/16 v2, 0x0

    .line 471
    .local v2, "screenOnTime":J
    invoke-direct {p0}, getScreenOnTimeFile()Ljava/io/File;

    move-result-object v4

    .line 472
    .local v4, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_2a

    .line 476
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_2c

    move-result-wide v2

    move-object v0, v1

    .line 480
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_28

    .line 486
    .end local v0    # "reader":Ljava/io/BufferedReader;
    :goto_23
    return-wide v2

    .line 484
    :cond_24
    invoke-direct {p0, v2, v3}, writeScreenOnTimeLocked(J)V

    goto :goto_23

    .line 481
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    :catch_28
    move-exception v5

    goto :goto_23

    .line 477
    :catch_2a
    move-exception v5

    goto :goto_20

    .end local v0    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_2c
    move-exception v5

    move-object v0, v1

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "reader":Ljava/io/BufferedReader;
    goto :goto_20
.end method

.method private static validRange(JJJ)Z
    .registers 8
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 985
    cmp-long v0, p2, p0

    if-gtz v0, :cond_a

    cmp-long v0, p2, p4

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private writeScreenOnTimeLocked(J)V
    .registers 8
    .param p1, "screenOnTime"    # J

    .prologue
    .line 490
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {p0}, getScreenOnTimeFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 491
    .local v2, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v0, 0x0

    .line 493
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 494
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 495
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_1d

    .line 499
    :goto_1c
    return-void

    .line 496
    :catch_1d
    move-exception v1

    .line 497
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1c
.end method


# virtual methods
.method addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 770
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_3
    iget-object v0, p0, mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 772
    iget-object v0, p0, mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_10
    monitor-exit v1

    .line 775
    return-void

    .line 774
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method checkIdleStates(I)V
    .registers 27
    .param p1, "checkUserId"    # I

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAppIdleEnabled:Z

    if-nez v3, :cond_7

    .line 409
    :goto_6
    return-void

    .line 373
    :cond_7
    const/4 v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_8c

    .line 374
    :try_start_c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_95

    move-result-object v23

    .line 382
    .local v23, "userIds":[I
    :goto_14
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    move-object/from16 v0, v23

    array-length v3, v0

    if-ge v2, v3, :cond_a2

    .line 383
    aget v6, v23, v2

    .line 384
    .local v6, "userId":I
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x2200

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v20

    .line 389
    .local v20, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 390
    :try_start_31
    invoke-direct/range {p0 .. p0}, checkAndGetTimeLocked()J

    move-result-wide v8

    .line 391
    .local v8, "timeNow":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, getScreenOnTimeLocked(J)J

    move-result-wide v10

    .line 392
    .local v10, "screenOnTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v9}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v7

    .line 394
    .local v7, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v19

    .line 395
    .local v19, "packageCount":I
    const/16 v18, 0x0

    .local v18, "p":I
    :goto_47
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9a

    .line 396
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    .line 397
    .local v21, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 398
    .local v4, "packageName":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, isAppIdleFiltered(Ljava/lang/String;IILcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v15

    .line 401
    .local v15, "isIdle":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    if-eqz v15, :cond_98

    const/4 v3, 0x1

    :goto_77
    invoke-virtual {v12, v13, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v13, v4

    move v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V
    :try_end_89
    .catchall {:try_start_31 .. :try_end_89} :catchall_9f

    .line 395
    add-int/lit8 v18, v18, 0x1

    goto :goto_47

    .line 376
    .end local v2    # "i":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v8    # "timeNow":J
    .end local v10    # "screenOnTime":J
    .end local v15    # "isIdle":Z
    .end local v18    # "p":I
    .end local v19    # "packageCount":I
    .end local v20    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    .end local v23    # "userIds":[I
    :cond_8c
    const/4 v3, 0x1

    :try_start_8d
    new-array v0, v3, [I

    move-object/from16 v23, v0

    const/4 v3, 0x0

    aput p1, v23, v3
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_94} :catch_95

    .restart local v23    # "userIds":[I
    goto :goto_14

    .line 378
    .end local v23    # "userIds":[I
    :catch_95
    move-exception v22

    .line 379
    .local v22, "re":Landroid/os/RemoteException;
    goto/16 :goto_6

    .line 401
    .end local v22    # "re":Landroid/os/RemoteException;
    .restart local v2    # "i":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .restart local v8    # "timeNow":J
    .restart local v10    # "screenOnTime":J
    .restart local v15    # "isIdle":Z
    .restart local v18    # "p":I
    .restart local v19    # "packageCount":I
    .restart local v20    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v21    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v23    # "userIds":[I
    :cond_98
    const/4 v3, 0x0

    goto :goto_77

    .line 405
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v15    # "isIdle":Z
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    :cond_9a
    :try_start_9a
    monitor-exit v24

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 405
    .end local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v8    # "timeNow":J
    .end local v10    # "screenOnTime":J
    .end local v18    # "p":I
    .end local v19    # "packageCount":I
    :catchall_9f
    move-exception v3

    monitor-exit v24
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_9f

    throw v3

    .line 407
    .end local v6    # "userId":I
    .end local v20    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_a2
    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, mHandler:Landroid/os/Handler;

    const/4 v12, 0x5

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-virtual {v5, v12, v0, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v12, v0, mCheckIdleIntervalMillis:J

    invoke-virtual {v3, v5, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6
.end method

.method checkParoleTimeout()V
    .registers 9

    .prologue
    .line 413
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 414
    :try_start_3
    iget-boolean v2, p0, mAppIdleParoled:Z

    if-nez v2, :cond_19

    .line 415
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v4

    iget-wide v6, p0, mLastAppIdleParoledTime:J

    sub-long v0, v4, v6

    .line 416
    .local v0, "timeSinceLastParole":J
    iget-wide v4, p0, mAppIdleParoleIntervalMillis:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1b

    .line 418
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, setAppIdleParoled(Z)V

    .line 424
    .end local v0    # "timeSinceLastParole":J
    :cond_19
    :goto_19
    monitor-exit v3

    .line 425
    return-void

    .line 421
    .restart local v0    # "timeSinceLastParole":J
    :cond_1b
    invoke-direct {p0}, postNextParoleTimeout()V

    goto :goto_19

    .line 424
    .end local v0    # "timeSinceLastParole":J
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1002
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1003
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, getScreenOnTimeLocked(J)J

    move-result-wide v4

    .line 1004
    .local v4, "screenOnTime":J
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v6, "  "

    invoke-direct {v2, p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1005
    .local v2, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1006
    .local v0, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1008
    iget-object v6, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1009
    .local v3, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v3, :cond_82

    .line 1010
    const-string/jumbo v6, "user"

    iget-object v8, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1012
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1013
    const-string v6, "--checkin"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 1014
    iget-object v6, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;J)V

    .line 1022
    :cond_50
    :goto_50
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1016
    :cond_56
    iget-object v6, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;J)V

    .line 1017
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1018
    array-length v6, p1

    if-lez v6, :cond_50

    const-string/jumbo v6, "history"

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1019
    iget-object v6, p0, mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v8, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v2, v8}, Lcom/android/server/usage/AppIdleHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_50

    .line 1061
    .end local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "userCount":I
    .end local v4    # "screenOnTime":J
    :catchall_7f
    move-exception v6

    monitor-exit v7
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw v6

    .line 1024
    .restart local v0    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v3    # "userCount":I
    .restart local v4    # "screenOnTime":J
    :cond_82
    :try_start_82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Screen On Timebase:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, mScreenOnTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1027
    const-string v6, "Settings:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    const-string v6, "  mAppIdleDurationMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    iget-wide v8, p0, mAppIdleDurationMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1031
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1033
    const-string v6, "  mAppIdleWallclockThresholdMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    iget-wide v8, p0, mAppIdleWallclockThresholdMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1035
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1037
    const-string v6, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    iget-wide v8, p0, mCheckIdleIntervalMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1039
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1041
    const-string v6, "  mAppIdleParoleIntervalMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    iget-wide v8, p0, mAppIdleParoleIntervalMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1043
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1045
    const-string v6, "  mAppIdleParoleDurationMillis="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    iget-wide v8, p0, mAppIdleParoleDurationMillis:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1047
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1049
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1050
    const-string/jumbo v6, "mAppIdleEnabled="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, mAppIdleEnabled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1051
    const-string v6, " mAppIdleParoled="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, mAppIdleParoled:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1052
    const-string v6, " mScreenOn="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, mScreenOn:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1053
    const-string/jumbo v6, "mLastAppIdleParoledTime="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    iget-wide v8, p0, mLastAppIdleParoledTime:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1055
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1056
    const-string/jumbo v6, "mScreenOnTime="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, mScreenOnTime:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1057
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1058
    const-string/jumbo v6, "mScreenOnSystemTimeSnapshot="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    iget-wide v8, p0, mScreenOnSystemTimeSnapshot:J

    invoke-static {v8, v9, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1060
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1061
    monitor-exit v7
    :try_end_130
    .catchall {:try_start_82 .. :try_end_130} :catchall_7f

    .line 1062
    return-void
.end method

.method flushToDisk()V
    .registers 3

    .prologue
    .line 681
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_3
    invoke-direct {p0}, flushToDiskLocked()V

    .line 683
    monitor-exit v1

    .line 684
    return-void

    .line 683
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 651
    :try_start_7
    invoke-direct/range {p0 .. p0}, checkAndGetTimeLocked()J

    move-result-wide v12

    .line 652
    .local v12, "timeNow":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, getScreenOnTimeLocked(J)J

    move-result-wide v10

    .line 653
    .local v10, "screenOnTime":J
    if-eqz p3, :cond_8b

    move-object/from16 v0, p0

    iget-wide v14, v0, mAppIdleDurationMillis:J

    :goto_17
    sub-long v14, v10, v14

    const-wide/16 v16, 0x1388

    sub-long v20, v14, v16

    .line 655
    .local v20, "deviceUsageTime":J
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v22

    .line 657
    .local v22, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 658
    .local v6, "beginIdleTime":J
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    move-result-wide v8

    .local v8, "lastUsedTime":J
    move-object/from16 v5, p0

    .line 659
    invoke-virtual/range {v5 .. v13}, hasPassedIdleTimeoutLocked(JJJJ)Z

    move-result v4

    .line 661
    .local v4, "previouslyIdle":Z
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->setBeginIdleTime(Ljava/lang/String;J)V

    .line 662
    if-eqz p3, :cond_8e

    move-object/from16 v0, p0

    iget-wide v14, v0, mAppIdleWallclockThresholdMillis:J

    :goto_4a
    sub-long v14, v12, v14

    const-wide/16 v16, 0x1388

    sub-long v14, v14, v16

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/usage/UserUsageStatsService;->setSystemLastUsedTime(Ljava/lang/String;J)V

    .line 665
    move/from16 v0, p3

    if-eq v4, v0, :cond_89

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    if-eqz p3, :cond_91

    const/4 v5, 0x1

    :goto_68
    move/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v15, v0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 669
    if-nez p3, :cond_7a

    .line 670
    invoke-direct/range {p0 .. p3}, notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 672
    :cond_7a
    move-object/from16 v0, p0

    iget-object v14, v0, mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move-wide/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V

    .line 674
    :cond_89
    monitor-exit v23

    .line 675
    return-void

    .line 653
    .end local v4    # "previouslyIdle":Z
    .end local v6    # "beginIdleTime":J
    .end local v8    # "lastUsedTime":J
    .end local v20    # "deviceUsageTime":J
    .end local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_8b
    const-wide/16 v14, 0x0

    goto :goto_17

    .line 662
    .restart local v4    # "previouslyIdle":Z
    .restart local v6    # "beginIdleTime":J
    .restart local v8    # "lastUsedTime":J
    .restart local v20    # "deviceUsageTime":J
    .restart local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_8e
    const-wide/16 v14, 0x0

    goto :goto_4a

    .line 667
    :cond_91
    const/4 v5, 0x0

    goto :goto_68

    .line 674
    .end local v4    # "previouslyIdle":Z
    .end local v6    # "beginIdleTime":J
    .end local v8    # "lastUsedTime":J
    .end local v10    # "screenOnTime":J
    .end local v12    # "timeNow":J
    .end local v20    # "deviceUsageTime":J
    .end local v22    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_93
    move-exception v5

    monitor-exit v23
    :try_end_95
    .catchall {:try_start_7 .. :try_end_95} :catchall_93

    throw v5
.end method

.method getIdleUidsForUser(I)[I
    .registers 24
    .param p1, "userId"    # I

    .prologue
    .line 871
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAppIdleEnabled:Z

    if-nez v3, :cond_c

    .line 872
    const/4 v3, 0x0

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 936
    :cond_b
    :goto_b
    return-object v18

    .line 878
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 879
    :try_start_11
    invoke-direct/range {p0 .. p0}, checkAndGetTimeLocked()J

    move-result-wide v8

    .line 880
    .local v8, "timeNow":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v7

    .line 881
    .local v7, "userService":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, getScreenOnTimeLocked(J)J

    move-result-wide v10

    .line 882
    .local v10, "screenOnTime":J
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_37

    .line 886
    :try_start_24
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v19

    .line 888
    .local v19, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v19, :cond_3a

    .line 889
    const/4 v3, 0x0

    new-array v0, v3, [I

    move-object/from16 v18, v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_36} :catch_7b

    goto :goto_b

    .line 882
    .end local v7    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v8    # "timeNow":J
    .end local v10    # "screenOnTime":J
    .end local v19    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3

    .line 891
    .restart local v7    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .restart local v8    # "timeNow":J
    .restart local v10    # "screenOnTime":J
    .restart local v19    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :cond_3a
    :try_start_3a
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_7b

    move-result-object v12

    .line 898
    .local v12, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v20, Landroid/util/SparseIntArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseIntArray;-><init>()V

    .line 902
    .local v20, "uidStates":Landroid/util/SparseIntArray;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    .local v14, "i":I
    :goto_49
    if-ltz v14, :cond_9d

    .line 903
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 906
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v11}, isAppIdleFiltered(Ljava/lang/String;IILcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v15

    .line 909
    .local v15, "idle":Z
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v16

    .line 910
    .local v16, "index":I
    if-gez v16, :cond_84

    .line 911
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v15, :cond_82

    const/high16 v3, 0x10000

    :goto_71
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    :goto_78
    add-int/lit8 v14, v14, -0x1

    goto :goto_49

    .line 892
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "i":I
    .end local v15    # "idle":Z
    .end local v16    # "index":I
    .end local v19    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v20    # "uidStates":Landroid/util/SparseIntArray;
    :catch_7b
    move-exception v13

    .line 893
    .local v13, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    new-array v0, v3, [I

    move-object/from16 v18, v0

    goto :goto_b

    .line 911
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v14    # "i":I
    .restart local v15    # "idle":Z
    .restart local v16    # "index":I
    .restart local v19    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v20    # "uidStates":Landroid/util/SparseIntArray;
    :cond_82
    const/4 v3, 0x0

    goto :goto_71

    .line 913
    :cond_84
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v21

    .line 914
    .local v21, "value":I
    add-int/lit8 v4, v21, 0x1

    if-eqz v15, :cond_9b

    const/high16 v3, 0x10000

    :goto_92
    add-int/2addr v3, v4

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_78

    :cond_9b
    const/4 v3, 0x0

    goto :goto_92

    .line 918
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "idle":Z
    .end local v16    # "index":I
    .end local v21    # "value":I
    :cond_9d
    const/16 v17, 0x0

    .line 919
    .local v17, "numIdle":I
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    :goto_a5
    if-ltz v14, :cond_ba

    .line 920
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v21

    .line 921
    .restart local v21    # "value":I
    move/from16 v0, v21

    and-int/lit16 v3, v0, 0x7fff

    shr-int/lit8 v4, v21, 0x10

    if-ne v3, v4, :cond_b7

    .line 922
    add-int/lit8 v17, v17, 0x1

    .line 919
    :cond_b7
    add-int/lit8 v14, v14, -0x1

    goto :goto_a5

    .line 926
    .end local v21    # "value":I
    :cond_ba
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 927
    .local v18, "res":[I
    const/16 v17, 0x0

    .line 928
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    :goto_c8
    if-ltz v14, :cond_b

    .line 929
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v21

    .line 930
    .restart local v21    # "value":I
    move/from16 v0, v21

    and-int/lit16 v3, v0, 0x7fff

    shr-int/lit8 v4, v21, 0x10

    if-ne v3, v4, :cond_e2

    .line 931
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v18, v17

    .line 932
    add-int/lit8 v17, v17, 0x1

    .line 928
    :cond_e2
    add-int/lit8 v14, v14, -0x1

    goto :goto_c8
.end method

.method hasPassedIdleTimeoutLocked(JJJJ)Z
    .registers 12
    .param p1, "beginIdleTime"    # J
    .param p3, "lastUsedTime"    # J
    .param p5, "screenOnTime"    # J
    .param p7, "currentTime"    # J

    .prologue
    .line 765
    iget-wide v0, p0, mAppIdleDurationMillis:J

    sub-long v0, p5, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    iget-wide v0, p0, mAppIdleWallclockThresholdMillis:J

    sub-long v0, p7, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method informListeners(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isIdle"    # Z

    .prologue
    .line 973
    iget-object v2, p0, mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 974
    .local v1, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZ)V

    goto :goto_6

    .line 976
    .end local v1    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_16
    return-void
.end method

.method informParoleStateChanged()V
    .registers 4

    .prologue
    .line 979
    iget-object v2, p0, mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 980
    .local v1, "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    iget-boolean v2, p0, mAppIdleParoled:Z

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_6

    .line 982
    .end local v1    # "listener":Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
    :cond_18
    return-void
.end method

.method isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uidForAppId"    # I
    .param p3, "userId"    # I
    .param p4, "timeNow"    # J

    .prologue
    .line 800
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 801
    const-wide/16 v2, -0x1

    cmp-long v0, p4, v2

    if-nez v0, :cond_d

    .line 802
    :try_start_9
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide p4

    .line 804
    :cond_d
    invoke-direct {p0, p3, p4, p5}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v5

    .line 805
    .local v5, "userService":Lcom/android/server/usage/UserUsageStatsService;
    invoke-direct {p0, p4, p5}, getScreenOnTimeLocked(J)J

    move-result-wide v8

    .line 806
    .local v8, "screenOnTime":J
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_23

    .line 807
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, isAppIdleFiltered(Ljava/lang/String;IILcom/android/server/usage/UserUsageStatsService;JJ)Z

    move-result v0

    return v0

    .line 806
    .end local v5    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v8    # "screenOnTime":J
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method isAppIdleFilteredOrParoled(Ljava/lang/String;IJ)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timeNow"    # J

    .prologue
    const/4 v7, 0x0

    .line 784
    iget-boolean v0, p0, mAppIdleParoled:Z

    if-eqz v0, :cond_7

    move v0, v7

    .line 794
    :goto_6
    return v0

    .line 788
    :cond_7
    :try_start_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 791
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_1e} :catch_20

    move-result v0

    goto :goto_6

    .line 792
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_20
    move-exception v0

    move v0, v7

    .line 794
    goto :goto_6
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .prologue
    .line 210
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_77

    .line 212
    new-instance v0, Lcom/android/server/usage/UsageStatsService$SettingsObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Handler;)V

    .line 213
    .local v0, "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->registerObserver()V

    .line 214
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService$SettingsObserver;->updateSettings()V

    .line 216
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 217
    const-string/jumbo v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 219
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 221
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 223
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, mPowerManager:Landroid/os/PowerManager;

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mScreenOnSystemTimeSnapshot:J

    .line 226
    monitor-enter p0

    .line 227
    :try_start_5c
    invoke-direct {p0}, readScreenOnTimeLocked()J

    move-result-wide v2

    iput-wide v2, p0, mScreenOnTime:J

    .line 228
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_71

    .line 229
    iget-object v1, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 230
    monitor-enter p0

    .line 231
    :try_start_6c
    invoke-virtual {p0}, updateDisplayLocked()V

    .line 232
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_74

    .line 236
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_70
    :goto_70
    return-void

    .line 228
    .restart local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1

    .line 232
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1

    .line 233
    .end local v0    # "settingsObserver":Lcom/android/server/usage/UsageStatsService$SettingsObserver;
    :cond_77
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_70

    .line 234
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/BatteryManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    invoke-virtual {p0, v1}, setAppIdleParoled(Z)V

    goto :goto_70
.end method

.method onDeviceIdleModeChanged()V
    .registers 11

    .prologue
    .line 502
    iget-object v1, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 504
    .local v0, "deviceIdle":Z
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 505
    :try_start_9
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v6

    iget-wide v8, p0, mLastAppIdleParoledTime:J

    sub-long v2, v6, v8

    .line 506
    .local v2, "timeSinceLastParole":J
    if-nez v0, :cond_1f

    iget-wide v6, p0, mAppIdleParoleIntervalMillis:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1f

    .line 509
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, setAppIdleParoled(Z)V

    .line 514
    :cond_1d
    :goto_1d
    monitor-exit v4

    .line 515
    return-void

    .line 510
    :cond_1f
    if-eqz v0, :cond_1d

    .line 512
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setAppIdleParoled(Z)V

    goto :goto_1d

    .line 514
    .end local v2    # "timeSinceLastParole":J
    :catchall_26
    move-exception v1

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onStart()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 171
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 173
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 175
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .local v7, "systemDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "usagestats"

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mUsageStatsDir:Ljava/io/File;

    .line 177
    iget-object v0, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 178
    iget-object v0, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage stats directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_6f
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "userActions":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mAppIdleEnabled:Z

    .line 190
    iget-boolean v0, p0, mAppIdleEnabled:Z

    if-eqz v0, :cond_bc

    .line 191
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.CHARGING"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v6, "deviceStates":Landroid/content/IntentFilter;
    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$DeviceStateReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    .end local v6    # "deviceStates":Landroid/content/IntentFilter;
    :cond_bc
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_bf
    invoke-direct {p0}, cleanUpRemovedUsersLocked()V

    .line 199
    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_e5

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mRealTimeSnapshot:J

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mSystemTimeSnapshot:J

    .line 204
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v0, v1}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 205
    const-string/jumbo v0, "usagestats"

    new-instance v1, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v1, p0, v4}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 206
    return-void

    .line 199
    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v0
.end method

.method public onStatsUpdated()V
    .registers 5

    .prologue
    .line 288
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    return-void
.end method

.method postCheckIdleStates(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 362
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 719
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 720
    invoke-static/range {v0 .. v5}, validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_12

    .line 721
    const/4 v3, 0x0

    monitor-exit v8

    .line 726
    :goto_11
    return-object v3

    .line 724
    :cond_12
    invoke-direct {p0, p1, v0, v1}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 726
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v3

    monitor-exit v8

    goto :goto_11

    .line 727
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1f
    move-exception v3

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    .registers 14
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 734
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 735
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p2

    move-wide v4, p4

    .line 736
    invoke-static/range {v0 .. v5}, validRange(JJJ)Z

    move-result v2

    if-nez v2, :cond_12

    .line 737
    const/4 v2, 0x0

    monitor-exit v7

    .line 742
    :goto_11
    return-object v2

    .line 740
    :cond_12
    invoke-direct {p0, p1, v0, v1}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    .line 742
    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v2

    monitor-exit v7

    goto :goto_11

    .line 743
    .end local v0    # "timeNow":J
    .end local v6    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1c
    move-exception v2

    monitor-exit v7
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method queryUsageStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 702
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 703
    invoke-static/range {v0 .. v5}, validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_12

    .line 704
    const/4 v3, 0x0

    monitor-exit v8

    .line 709
    :goto_11
    return-object v3

    .line 707
    :cond_12
    invoke-direct {p0, p1, v0, v1}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 709
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v3

    monitor-exit v8

    goto :goto_11

    .line 710
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1f
    move-exception v3

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .prologue
    .line 778
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    :try_start_3
    iget-object v0, p0, mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 780
    monitor-exit v1

    .line 781
    return-void

    .line 780
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 690
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_3
    const-string v0, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 693
    invoke-direct {p0}, cleanUpRemovedUsersLocked()V

    .line 694
    monitor-exit v1

    .line 695
    return-void

    .line 694
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 623
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, "packages":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_32

    aget-object v3, v0, v1

    .line 629
    .local v3, "packageName":Ljava/lang/String;
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 631
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_22

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_22

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_25

    .line 625
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 635
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_25
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 636
    const/4 v6, 0x0

    invoke-virtual {p0, v3, p3, v6}, forceIdleState(Ljava/lang/String;IZ)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2f} :catch_30

    goto :goto_22

    .line 638
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catch_30
    move-exception v6

    goto :goto_22

    .line 642
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 23
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 594
    :try_start_7
    invoke-direct/range {p0 .. p0}, checkAndGetTimeLocked()J

    move-result-wide v10

    .line 595
    .local v10, "timeNow":J
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, getScreenOnTimeLocked(J)J

    move-result-wide v8

    .line 596
    .local v8, "screenOnTime":J
    invoke-direct/range {p0 .. p1}, convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 598
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v10, v11}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v18

    .line 600
    .local v18, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->getBeginIdleTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 601
    .local v4, "beginIdleTime":J
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->getSystemLastUsedTime(Ljava/lang/String;)J

    move-result-wide v6

    .local v6, "lastUsedTime":J
    move-object/from16 v3, p0

    .line 602
    invoke-virtual/range {v3 .. v11}, hasPassedIdleTimeoutLocked(JJJJ)Z

    move-result v2

    .line 604
    .local v2, "previouslyIdle":Z
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;J)V

    .line 606
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x1

    if-eq v3, v12, :cond_59

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_59

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x6

    if-eq v3, v12, :cond_59

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x7

    if-ne v3, v12, :cond_8e

    .line 610
    :cond_59
    if-eqz v2, :cond_8e

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, mHandler:Landroid/os/Handler;

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {v12, v13, v0, v14, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 614
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v3, v1, v12}, notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 615
    move-object/from16 v0, p0

    iget-object v12, v0, mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v15, 0x0

    move/from16 v14, p2

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/usage/AppIdleHistory;->addEntry(Ljava/lang/String;IZJ)V

    .line 618
    :cond_8e
    monitor-exit v19

    .line 619
    return-void

    .line 618
    .end local v2    # "previouslyIdle":Z
    .end local v4    # "beginIdleTime":J
    .end local v6    # "lastUsedTime":J
    .end local v8    # "screenOnTime":J
    .end local v10    # "timeNow":J
    .end local v18    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_90
    move-exception v3

    monitor-exit v19
    :try_end_92
    .catchall {:try_start_7 .. :try_end_92} :catchall_90

    throw v3
.end method

.method setAppIdle(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 940
    if-nez p1, :cond_3

    .line 944
    :goto_2
    return-void

    .line 942
    :cond_3
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    if-eqz p2, :cond_11

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method setAppIdleParoled(Z)V
    .registers 6
    .param p1, "paroled"    # Z

    .prologue
    .line 320
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_3
    iget-boolean v0, p0, mAppIdleParoled:Z

    if-eq v0, p1, :cond_11

    .line 322
    iput-boolean p1, p0, mAppIdleParoled:Z

    .line 324
    if-eqz p1, :cond_13

    .line 325
    invoke-direct {p0}, postParoleEndTimeout()V

    .line 330
    :goto_e
    invoke-direct {p0}, postParoleStateChanged()V

    .line 332
    :cond_11
    monitor-exit v1

    .line 333
    return-void

    .line 327
    :cond_13
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v2

    iput-wide v2, p0, mLastAppIdleParoledTime:J

    .line 328
    invoke-direct {p0}, postNextParoleTimeout()V

    goto :goto_e

    .line 332
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method shutdown()V
    .registers 4

    .prologue
    .line 582
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 583
    :try_start_3
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    invoke-direct {p0}, flushToDiskLocked()V

    .line 585
    invoke-virtual {p0}, flushToDisk()V

    .line 586
    monitor-exit v1

    .line 587
    return-void

    .line 586
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method updateDisplayLocked()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v3, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    const/4 v2, 0x1

    .line 445
    .local v2, "screenOn":Z
    :cond_f
    iget-boolean v3, p0, mScreenOn:Z

    if-ne v2, v3, :cond_14

    .line 455
    :goto_13
    return-void

    .line 447
    :cond_14
    iput-boolean v2, p0, mScreenOn:Z

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 449
    .local v0, "now":J
    iget-boolean v3, p0, mScreenOn:Z

    if-eqz v3, :cond_21

    .line 450
    iput-wide v0, p0, mScreenOnSystemTimeSnapshot:J

    goto :goto_13

    .line 452
    :cond_21
    iget-wide v4, p0, mScreenOnTime:J

    iget-wide v6, p0, mScreenOnSystemTimeSnapshot:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, mScreenOnTime:J

    .line 453
    iget-wide v4, p0, mScreenOnTime:J

    invoke-direct {p0, v4, v5}, writeScreenOnTimeLocked(J)V

    goto :goto_13
.end method
