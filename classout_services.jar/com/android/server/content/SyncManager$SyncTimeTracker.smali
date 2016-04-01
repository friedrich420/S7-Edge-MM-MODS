.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 4

    .prologue
    .line 2055
    iput-object p1, p0, this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2057
    const/4 v0, 0x0

    iput-boolean v0, p0, mLastWasSyncing:Z

    .line 2059
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/content/SyncManager;
    .param p2, "x1"    # Lcom/android/server/content/SyncManager$1;

    .prologue
    .line 2055
    invoke-direct {p0, p1}, <init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .registers 7

    .prologue
    .line 2078
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, mLastWasSyncing:Z

    if-nez v2, :cond_9

    iget-wide v2, p0, mTimeSpentSyncing:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 2081
    :goto_7
    monitor-exit p0

    return-wide v2

    .line 2080
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2081
    .local v0, "now":J
    iget-wide v2, p0, mTimeSpentSyncing:J

    iget-wide v4, p0, mWhenSyncStarted:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_7

    .line 2078
    .end local v0    # "now":J
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update()V
    .registers 9

    .prologue
    .line 2065
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    .line 2066
    .local v0, "isSyncInProgress":Z
    :goto_c
    iget-boolean v1, p0, mLastWasSyncing:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    if-ne v0, v1, :cond_14

    .line 2074
    :goto_10
    monitor-exit p0

    return-void

    .line 2065
    .end local v0    # "isSyncInProgress":Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_c

    .line 2067
    .restart local v0    # "isSyncInProgress":Z
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2068
    .local v2, "now":J
    if-eqz v0, :cond_22

    .line 2069
    iput-wide v2, p0, mWhenSyncStarted:J

    .line 2073
    :goto_1c
    iput-boolean v0, p0, mLastWasSyncing:Z
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_10

    .line 2065
    .end local v0    # "isSyncInProgress":Z
    .end local v2    # "now":J
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2071
    .restart local v0    # "isSyncInProgress":Z
    .restart local v2    # "now":J
    :cond_22
    :try_start_22
    iget-wide v4, p0, mTimeSpentSyncing:J

    iget-wide v6, p0, mWhenSyncStarted:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, mTimeSpentSyncing:J
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_1f

    goto :goto_1c
.end method
