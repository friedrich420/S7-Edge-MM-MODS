.class Lcom/android/server/content/AppIdleMonitor;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AppIdleMonitor.java"


# instance fields
.field private mAppIdleParoleOn:Z

.field private final mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 3
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    .line 36
    iput-object p1, p0, mSyncManager:Lcom/android/server/content/SyncManager;

    .line 37
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 38
    iget-object v0, p0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    iput-boolean v0, p0, mAppIdleParoleOn:Z

    .line 40
    iget-object v0, p0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method isAppIdle(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uidForAppId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 54
    iget-boolean v0, p0, mAppIdleParoleOn:Z

    if-nez v0, :cond_e

    iget-object v0, p0, mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 60
    if-eqz p3, :cond_3

    .line 62
    :goto_2
    return-void

    .line 61
    :cond_3
    iget-object v0, p0, mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/SyncManager;->onAppNotIdle(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onParoleStateChanged(Z)V
    .registers 2
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 66
    invoke-virtual {p0, p1}, setAppIdleParoleOn(Z)V

    .line 67
    return-void
.end method

.method setAppIdleParoleOn(Z)V
    .registers 5
    .param p1, "appIdleParoleOn"    # Z

    .prologue
    .line 44
    iget-boolean v0, p0, mAppIdleParoleOn:Z

    if-ne v0, p1, :cond_5

    .line 51
    :cond_4
    :goto_4
    return-void

    .line 47
    :cond_5
    iput-boolean p1, p0, mAppIdleParoleOn:Z

    .line 48
    iget-boolean v0, p0, mAppIdleParoleOn:Z

    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, mSyncManager:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncManager;->onAppNotIdle(Ljava/lang/String;I)V

    goto :goto_4
.end method
