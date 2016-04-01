.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.super Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.source "CocktailBarManagerServiceContainer.java"

# interfaces
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
.implements Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
.implements Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;
.implements Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
.implements Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;,
        Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
    }
.end annotation


# static fields
.field private static final ACTION_EDGE_APP_START:Ljava/lang/String; = "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

.field private static final COCKTAIL_BAR_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_USER_ID:I = -0xa


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

.field private mCocktailBarHandler:Landroid/os/Handler;

.field private final mCocktailBarServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

.field private final mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

.field private mFilterCategory:I

.field private mHost:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/cocktailbar/ICocktailHost;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private final mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

.field private mPersonalManager:Landroid/os/PersonaManager;

.field private mSafeMode:Z

.field private final mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

.field private final mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

.field private final mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

.field private mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-class v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;-><init>()V

    .line 84
    iput-object v4, p0, mContext:Landroid/content/Context;

    .line 85
    iput-object v4, p0, mIntent:Landroid/content/Intent;

    .line 86
    iput v5, p0, mCurrentUserId:I

    .line 87
    iput-object v4, p0, mHost:Landroid/util/Pair;

    .line 88
    iput v5, p0, mFilterCategory:I

    .line 92
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    .line 1014
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mCocktailBarHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    iput-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .line 113
    new-instance v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V

    iput-object v0, p0, mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    .line 114
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 115
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    .line 116
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-direct {v0, p0, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;)V

    iput-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    .line 117
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    move-result-object v0

    iput-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 118
    invoke-static {}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->getInstance()Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    move-result-object v0

    iput-object v0, p0, mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    .line 119
    new-instance v0, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    .line 120
    new-instance v0, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    iget-object v1, p0, mCocktailBarHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    .line 121
    new-instance v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager$OnCocktailBarPolicyListener;)V

    iput-object v0, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    .line 122
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 123
    new-instance v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;)V

    iput-object v0, p0, mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .line 125
    :cond_94
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mCocktailBarServices:Landroid/util/SparseArray;

    .line 128
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 129
    invoke-direct {p0, v5}, createCocktailBarManagerServiceImplLocked(I)V

    .line 131
    :cond_a7
    invoke-direct {p0}, registerOnCrossProfileProvidersChangedListener()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 73
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 73
    iput-object p1, p0, mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mCocktailBarSettingObserver:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, ensureGroupStateLoaded(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .prologue
    .line 73
    iget-object v0, p0, mCocktailBarServices:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, onUserStarted(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, onUserStopped(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, onUserSwitched(I)V

    return-void
.end method

.method private bootCompleted()V
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, createCocktailBarManagerServiceImpl(I)V

    .line 151
    invoke-direct {p0}, registerBroadcastReceiver()V

    .line 152
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 237
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_2f
    return-void
.end method

.method private createCocktailBarManagerServiceImpl(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 209
    iget-object v2, p0, mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v2

    .line 210
    :try_start_3
    iget-object v1, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 211
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-nez v0, :cond_10

    .line 212
    invoke-direct {p0, p1}, createCocktailBarManagerServiceImplLocked(I)V

    .line 214
    :cond_10
    monitor-exit v2

    .line 215
    return-void

    .line 214
    .end local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private createCocktailBarManagerServiceImplLocked(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 218
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mCocktailBarHandler:Landroid/os/Handler;

    iget-object v3, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v4, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    .line 219
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, mHost:Landroid/util/Pair;

    if-eqz v1, :cond_24

    .line 220
    iget-object v1, p0, mHost:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v2, p0, mHost:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, mFilterCategory:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    .line 222
    :cond_24
    iget-object v1, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 223
    iget-object v1, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    return-void
.end method

.method private enforceCocktailBarService()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 940
    iget-object v1, p0, mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v1

    .line 941
    :try_start_4
    iget-object v2, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v2, v0, :cond_f

    .line 942
    const/4 v0, 0x0

    monitor-exit v1

    .line 944
    :goto_e
    return v0

    :cond_f
    monitor-exit v1

    goto :goto_e

    .line 945
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private ensureGroupStateLoaded(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, -0x1

    .line 184
    iget-object v6, p0, mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v6

    .line 185
    :try_start_4
    iget-object v5, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 186
    .local v4, "profileIds":[I
    const/4 v1, 0x0

    .line 187
    .local v1, "newMemberCount":I
    array-length v3, v4

    .line 188
    .local v3, "profileIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_22

    .line 189
    aget v2, v4, v0

    .line 190
    .local v2, "profileId":I
    iget-object v5, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_1f

    .line 191
    const/4 v5, -0x1

    aput v5, v4, v0

    .line 188
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 193
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 196
    .end local v2    # "profileId":I
    :cond_22
    if-gtz v1, :cond_26

    .line 197
    monitor-exit v6

    .line 206
    :goto_25
    return-void

    .line 199
    :cond_26
    const/4 v0, 0x0

    :goto_27
    if-ge v0, v3, :cond_33

    .line 200
    aget v2, v4, v0

    .line 201
    .restart local v2    # "profileId":I
    if-eq v2, v7, :cond_30

    .line 202
    invoke-direct {p0, v2}, createCocktailBarManagerServiceImplLocked(I)V

    .line 199
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 205
    .end local v2    # "profileId":I
    :cond_33
    monitor-exit v6

    goto :goto_25

    .end local v0    # "i":I
    .end local v1    # "newMemberCount":I
    .end local v3    # "profileIdCount":I
    .end local v4    # "profileIds":[I
    :catchall_35
    move-exception v5

    monitor-exit v6
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v5
.end method

.method private getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 243
    const/4 v6, 0x0

    .line 245
    .local v6, "initial":Z
    iget-object v7, p0, mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v7

    .line 246
    :try_start_4
    iget-object v1, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 247
    .local v0, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    if-nez v0, :cond_56

    .line 248
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find CocktailBarManagerService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .end local v0    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mCocktailBarHandler:Landroid/os/Handler;

    iget-object v3, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    iget-object v4, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;I)V

    .line 250
    .restart local v0    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    iget-object v1, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 251
    iget-object v1, p0, mHost:Landroid/util/Pair;

    if-eqz v1, :cond_55

    .line 252
    iget-object v1, p0, mHost:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v2, p0, mHost:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, mFilterCategory:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    .line 254
    :cond_55
    const/4 v6, 0x1

    .line 256
    :cond_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_61

    .line 257
    if-eqz v6, :cond_60

    iget-object v1, p0, mHost:Landroid/util/Pair;

    if-eqz v1, :cond_60

    .line 258
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->initialize()V

    .line 260
    :cond_60
    return-object v0

    .line 256
    .end local v0    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1
.end method

.method private onUserStarted(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 949
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserStarted : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-direct {p0, p1}, ensureGroupStateLoaded(I)V

    .line 951
    return-void
.end method

.method private onUserStopped(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x2

    .line 954
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onUserStopped : userId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v4

    if-nez v4, :cond_21

    .line 984
    :goto_20
    return-void

    .line 958
    :cond_21
    iget-object v5, p0, mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v5

    .line 959
    :try_start_24
    iget-object v4, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    .line 960
    .local v3, "userIndex":I
    if-ltz v3, :cond_31

    .line 961
    iget-object v4, p0, mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 963
    :cond_31
    iget-object v4, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 964
    .local v1, "serviceIndex":I
    if-ltz v1, :cond_8b

    .line 965
    iget-object v4, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 966
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->systemDestroy()V

    .line 967
    iget-object v4, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 968
    const/16 v4, 0x64

    if-lt p1, v4, :cond_8b

    iget-object v4, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v4

    if-ne v4, v7, :cond_8b

    .line 969
    iget-object v4, p0, mPersonalManager:Landroid/os/PersonaManager;

    if-nez v4, :cond_66

    .line 970
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, mPersonalManager:Landroid/os/PersonaManager;

    .line 972
    :cond_66
    iget-object v4, p0, mPersonalManager:Landroid/os/PersonaManager;

    invoke-virtual {v4, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v2

    .line 973
    .local v2, "sm":Landroid/os/PersonaManager$StateManager;
    if-eqz v2, :cond_90

    sget-object v4, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v4

    if-eqz v4, :cond_90

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 975
    iget-object v4, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v6, 0x0

    iget-object v7, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 983
    .end local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .end local v2    # "sm":Landroid/os/PersonaManager$StateManager;
    :cond_8b
    :goto_8b
    monitor-exit v5

    goto :goto_20

    .end local v1    # "serviceIndex":I
    .end local v3    # "userIndex":I
    :catchall_8d
    move-exception v4

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_24 .. :try_end_8f} :catchall_8d

    throw v4

    .line 978
    .restart local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    .restart local v1    # "serviceIndex":I
    .restart local v2    # "sm":Landroid/os/PersonaManager$StateManager;
    .restart local v3    # "userIndex":I
    :cond_90
    :try_start_90
    iget-object v4, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v6, 0x0

    iget-object v7, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onSetModeForcely(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V
    :try_end_9d
    .catchall {:try_start_90 .. :try_end_9d} :catchall_8d

    goto :goto_8b
.end method

.method private onUserSwitched(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 987
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserSwitched : userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1012
    :cond_1f
    :goto_1f
    return-void

    .line 991
    :cond_20
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 992
    iget-object v1, p0, mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1f

    if-ltz p1, :cond_1f

    const/16 v1, 0x64

    if-ge p1, v1, :cond_1f

    iget v1, p0, mCurrentUserId:I

    if-eq v1, p1, :cond_1f

    .line 993
    iget v1, p0, mCurrentUserId:I

    invoke-direct {p0, v1}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeAllUpdatedCocktails()V

    .line 994
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 995
    move v0, p1

    .line 996
    .local v0, "userIdF":I
    iget-object v1, p0, mCocktailBarHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    iput p1, p0, mCurrentUserId:I

    goto :goto_1f
.end method

.method private registerBroadcastReceiver()V
    .registers 20

    .prologue
    .line 157
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v4, "configFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 163
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v8, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v12, "sdFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 176
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v16, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_STARTED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .registers 3

    .prologue
    .line 227
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 230
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_d

    .line 231
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 233
    :cond_d
    return-void
.end method


# virtual methods
.method public activateCocktailBar()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 751
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->activateCocktailBar()V

    .line 757
    :goto_d
    return-void

    .line 753
    :cond_e
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callbacks"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 602
    :goto_6
    return-void

    .line 601
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V

    goto :goto_6
.end method

.method public closeCocktail(Ljava/lang/String;II)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 408
    :goto_6
    return-void

    .line 406
    :cond_7
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->closeCocktail(Ljava/lang/String;II)V

    goto :goto_6
.end method

.method public cocktailBarreboot(Ljava/lang/String;)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 935
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;->reboot(Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method public cocktailBarshutdown(Ljava/lang/String;)V
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 929
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, mShutdownManager:Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;->shutdown(Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public deactivateCocktailBar()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 762
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->deactivateCocktailBar()V

    .line 768
    :goto_d
    return-void

    .line 764
    :cond_e
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deactivateCocktailBar : Calling uid is not system uid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 509
    :goto_6
    return-void

    .line 507
    :cond_7
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableCocktail(Landroid/content/ComponentName;)V

    goto :goto_6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1129
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    sget-object v6, TAG:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v5, p0, mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1131
    :try_start_c
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, " "

    invoke-direct {v2, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1132
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v4, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1133
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_51

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1136
    iget-object v4, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 1137
    .local v3, "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v3, p1, v2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1139
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1141
    .end local v3    # "service":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_51
    iget-object v4, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    iget-object v4, p0, mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    iget-object v4, p0, mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    monitor-exit v5

    .line 1145
    return-void

    .line 1144
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_6e
    move-exception v4

    monitor-exit v5
    :try_end_70
    .catchall {:try_start_c .. :try_end_70} :catchall_6e

    throw v4
.end method

.method public getAllCocktailIds()[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v6

    if-nez v6, :cond_8

    .line 485
    const/4 v1, 0x0

    .line 499
    :cond_7
    return-object v1

    .line 487
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 488
    .local v5, "userId":I
    invoke-direct {p0, v5}, ensureGroupStateLoaded(I)V

    .line 489
    iget-object v6, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v6, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 490
    .local v4, "profileIds":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    array-length v6, v4

    if-ge v2, v6, :cond_2a

    .line 492
    aget v6, v4, v2

    invoke-direct {p0, v6}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getAllCocktailIds(Ljava/util/ArrayList;)V

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 494
    :cond_2a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 495
    .local v0, "N":I
    new-array v1, v0, [I

    .line 496
    .local v1, "cocktailIds":[I
    const/4 v2, 0x0

    :goto_31
    if-ge v2, v0, :cond_7

    .line 497
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_31
.end method

.method public getCocktaiBarWakeUpState()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    return v0
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 8
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 465
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v5

    if-nez v5, :cond_9

    move-object v0, v4

    .line 479
    :cond_8
    :goto_8
    return-object v0

    .line 468
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 469
    .local v3, "userId":I
    invoke-direct {p0, v3}, ensureGroupStateLoaded(I)V

    .line 470
    iget-object v5, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v5, v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v2

    .line 472
    .local v2, "profileIds":[I
    const/4 v0, 0x0

    .line 473
    .local v0, "cocktail":Lcom/samsung/android/cocktailbar/Cocktail;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v5, v2

    if-ge v1, v5, :cond_2a

    .line 474
    aget v5, v2, v1

    invoke-direct {p0, v5}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v0

    .line 475
    if-nez v0, :cond_8

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2a
    move-object v0, v4

    .line 479
    goto :goto_8
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCocktailBarVisibility()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    return v0
.end method

.method public getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 515
    const/4 v0, 0x0

    .line 518
    :goto_7
    return v0

    .line 517
    :cond_8
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 518
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailId(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_7
.end method

.method public getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_a

    .line 525
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 528
    :goto_9
    return-object v0

    .line 527
    :cond_a
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 528
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    goto :goto_9
.end method

.method public getEnabledCocktailIds()[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v6

    if-nez v6, :cond_a

    .line 446
    const/4 v6, 0x0

    new-array v1, v6, [I

    .line 460
    :cond_9
    return-object v1

    .line 448
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 449
    .local v5, "userId":I
    invoke-direct {p0, v5}, ensureGroupStateLoaded(I)V

    .line 450
    iget-object v6, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v6, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 451
    .local v4, "profileIds":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    array-length v6, v4

    if-ge v2, v6, :cond_30

    .line 453
    aget v6, v4, v2

    invoke-direct {p0, v6}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->getEnabledCocktailIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 455
    :cond_30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 456
    .local v0, "N":I
    new-array v1, v0, [I

    .line 457
    .local v1, "cocktailIds":[I
    const/4 v2, 0x0

    :goto_37
    if-ge v2, v0, :cond_9

    .line 458
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_37
.end method

.method public getWindowType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getWindowType()I

    move-result v0

    return v0
.end method

.method public isAllowTransientBarCocktailBar()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 654
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 652
    :pswitch_b
    const/4 v0, 0x1

    goto :goto_a

    .line 649
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public isBoundCocktailPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v1

    if-nez v1, :cond_8

    .line 544
    const/4 v1, 0x0

    .line 558
    :goto_7
    return v1

    .line 548
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2c

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 555
    .local v0, "callingUid":I
    :goto_20
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_31

    .line 556
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system process can call this"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    .end local v0    # "callingUid":I
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .restart local v0    # "callingUid":I
    goto :goto_20

    .line 558
    :cond_31
    invoke-direct {p0, p2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isBoundCocktailPackage(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 534
    const/4 v0, 0x0

    .line 538
    :goto_7
    return v0

    .line 537
    :cond_8
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_7
.end method

.method public notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "viewId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 418
    :goto_6
    return-void

    .line 416
    :cond_7
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V

    goto :goto_6
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 576
    :goto_6
    return-void

    .line 575
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailVisibiltyChanged(II)V

    goto :goto_6
.end method

.method public notifyKeyguardState(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 567
    :goto_6
    return-void

    .line 566
    :cond_7
    iget v0, p0, mCurrentUserId:I

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyKeyguardState(Z)V

    goto :goto_6
.end method

.method public onChangeVisibleEdgeService(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 908
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 912
    :goto_6
    return-void

    .line 911
    :cond_7
    iget v0, p0, mCurrentUserId:I

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->changeVisibleEdgeService(Z)V

    goto :goto_6
.end method

.method public onChangedResumePackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "resumePackageName"    # Ljava/lang/String;

    .prologue
    .line 916
    iget-object v0, p0, mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->changeResumePackage(Ljava/lang/String;I)V

    .line 917
    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 921
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-eqz p2, :cond_38

    .line 923
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCrossProfileWidgetProvidersChanged : packages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_38
    return-void
.end method

.method public onNotifyCocktailBarWakeUp(ZII)V
    .registers 5
    .param p1, "enable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 716
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 720
    :goto_6
    return-void

    .line 719
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->notifyCocktailBarWakeUp(ZII)V

    goto :goto_6
.end method

.method public onRemoveCocktail(II)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 900
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 904
    :goto_6
    return-void

    .line 903
    :cond_7
    invoke-direct {p0, p2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->removeCocktail(I)V

    goto :goto_6
.end method

.method public onResetMode(IILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;

    .prologue
    .line 852
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->setMode(II)V

    .line 853
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->isDisableCocktailBarMode(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 854
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->hideAndLockCocktailBar(ZI)V

    .line 856
    :cond_14
    return-void
.end method

.method public onRestrictMode(ZI)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "mode"    # I

    .prologue
    .line 872
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->isDisableCocktailBarMode(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 873
    :goto_8
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->restrictCocktailBar(ZI)V

    .line 874
    return-void

    .line 872
    :cond_e
    const/4 p1, 0x0

    goto :goto_8
.end method

.method public onSetMode(IILjava/lang/String;I)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;
    .param p4, "cocktailType"    # I

    .prologue
    .line 837
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v2

    if-nez v2, :cond_7

    .line 848
    :cond_6
    :goto_6
    return-void

    .line 840
    :cond_7
    invoke-direct {p0, p1}, ensureGroupStateLoaded(I)V

    .line 841
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 842
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 843
    aget v2, v1, v0

    invoke-direct {p0, v2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setMode(ILjava/lang/String;I)V

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 845
    :cond_20
    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->isDisableCocktailBarMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 846
    iget-object v2, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->hideAndLockCocktailBar(ZI)V

    goto :goto_6
.end method

.method public onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V
    .registers 12
    .param p1, "currentUserId"    # I
    .param p2, "newUserId"    # I
    .param p3, "currentUserType"    # I
    .param p4, "newUserType"    # I
    .param p5, "modeId"    # I
    .param p6, "callback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 879
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 888
    :cond_6
    :goto_6
    return-void

    .line 882
    :cond_7
    invoke-direct {p0, p2}, ensureGroupStateLoaded(I)V

    .line 883
    invoke-direct {p0, p1}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->disableUser(I)V

    .line 884
    invoke-direct {p0, p2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    iget-object v1, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v1, p5}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCocktailBarMode(I)Lcom/android/server/cocktailbar/mode/CocktailBarMode;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->enableUser(ILcom/android/server/cocktailbar/mode/CocktailBarMode;)V

    .line 885
    iget-object v0, p0, mHost:Landroid/util/Pair;

    if-eqz v0, :cond_6

    .line 886
    invoke-direct {p0, p2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    iget-object v0, p0, mHost:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailHost;

    iget-object v1, p0, mHost:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p0, mFilterCategory:I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    goto :goto_6
.end method

.method public onUnsetMode(IILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "mode"    # I
    .param p3, "modeName"    # Ljava/lang/String;

    .prologue
    .line 860
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v2

    if-nez v2, :cond_7

    .line 868
    :cond_6
    return-void

    .line 863
    :cond_7
    invoke-direct {p0, p1}, ensureGroupStateLoaded(I)V

    .line 864
    iget-object v2, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 865
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 866
    aget v2, v1, v0

    invoke-direct {p0, v2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unsetMode(ILjava/lang/String;)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public onUpdateCocktail(II)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 892
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 896
    :goto_6
    return-void

    .line 895
    :cond_7
    invoke-direct {p0, p2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(I)V

    goto :goto_6
.end method

.method public partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 373
    :goto_6
    return-void

    .line 366
    :cond_7
    if-nez p2, :cond_12

    .line 367
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateCocktail : contentView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 371
    :cond_12
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateCocktail(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    goto :goto_6
.end method

.method public partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "helpView"    # Landroid/widget/RemoteViews;
    .param p3, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 388
    :goto_6
    return-void

    .line 381
    :cond_7
    if-nez p2, :cond_12

    .line 382
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "partiallyUpdateHelpView : helpView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 386
    :cond_12
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->partiallyUpdateHelpView(Ljava/lang/String;ILandroid/widget/RemoteViews;)V

    goto :goto_6
.end method

.method public registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "cm"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    if-nez p2, :cond_3

    .line 828
    :cond_2
    :goto_2
    return-void

    .line 824
    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, mCurrentUserId:I

    invoke-static {v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    goto :goto_2
.end method

.method public registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 11
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "cm"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v7

    if-nez v7, :cond_7

    .line 811
    :cond_6
    return-void

    .line 802
    :cond_7
    iget-object v7, p0, mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->registerFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v5

    .line 803
    .local v5, "res":Z
    if-eqz v5, :cond_6

    .line 804
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 805
    .local v6, "userId":I
    invoke-direct {p0, v6}, ensureGroupStateLoaded(I)V

    .line 806
    iget-object v7, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v7, v6}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v4

    .line 807
    .local v4, "profileIds":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1f
    if-ge v1, v3, :cond_6

    aget v2, v0, v1

    .line 808
    .local v2, "id":I
    invoke-direct {p0, v2}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestUpdateFeeds()V

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "cm"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 789
    return-void
.end method

.method public removeCocktailUIService()V
    .registers 3

    .prologue
    .line 732
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 733
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 735
    :cond_f
    return-void
.end method

.method public requestToDisableCocktail(I)Z
    .registers 3
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktail(I)Z

    move-result v0

    goto :goto_7
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .registers 3
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToDisableCocktailByCategory(I)Z

    move-result v0

    goto :goto_7
.end method

.method public requestToUpdateCocktail(I)Z
    .registers 3
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktail(I)Z

    move-result v0

    goto :goto_7
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .registers 3
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 330
    const/4 v0, 0x0

    .line 332
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->requestToUpdateCocktailByCategory(I)Z

    move-result v0

    goto :goto_7
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .registers 4
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 584
    :goto_6
    return-void

    .line 583
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendDragEvent(ILandroid/view/DragEvent;)V

    goto :goto_6
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 728
    :goto_6
    return-void

    .line 727
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    goto :goto_6
.end method

.method public setCocktailBarStatus(ZZ)V
    .registers 4
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateCocktailBarStatus(ZZ)V

    .line 783
    return-void
.end method

.method public setCocktailBarWakeUpState(Z)V
    .registers 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    .line 707
    return-void
.end method

.method public setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .registers 7
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 266
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_8

    .line 277
    :cond_7
    :goto_7
    return-void

    .line 269
    :cond_8
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, mHost:Landroid/util/Pair;

    .line 270
    iput p3, p0, mFilterCategory:I

    .line 271
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    .line 273
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->isExistKioskContainers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget v1, p0, mCurrentUserId:I

    if-eq v0, v1, :cond_7

    .line 275
    iget v0, p0, mCurrentUserId:I

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;IZ)V

    goto :goto_7
.end method

.method public setDisableTickerView(I)V
    .registers 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 592
    :goto_6
    return-void

    .line 591
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setDisableTickerView(I)V

    goto :goto_6
.end method

.method public setEnabledCocktailIds([I)V
    .registers 6
    .param p1, "cocktailIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v3

    if-nez v3, :cond_7

    .line 441
    :cond_6
    return-void

    .line 435
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 436
    .local v2, "userId":I
    invoke-direct {p0, v2}, ensureGroupStateLoaded(I)V

    .line 437
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 438
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 439
    aget v3, v1, v0

    invoke-direct {p0, v3}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->setEnabledCocktailIds([I)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public showAndLockCocktailBar()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 739
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->showAndLockCocktailBar(ZI)V

    .line 741
    return-void
.end method

.method public showCocktail(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 398
    :goto_6
    return-void

    .line 396
    :cond_7
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->showCocktail(Ljava/lang/String;I)V

    goto :goto_6
.end method

.method public startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V
    .registers 8
    .param p1, "host"    # Lcom/samsung/android/cocktailbar/ICocktailHost;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v3

    if-nez v3, :cond_7

    .line 291
    :cond_6
    return-void

    .line 284
    :cond_7
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, mHost:Landroid/util/Pair;

    .line 285
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 286
    .local v2, "userId":I
    invoke-direct {p0, v2}, ensureGroupStateLoaded(I)V

    .line 287
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v1

    .line 288
    .local v1, "profileIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 289
    aget v3, v1, v0

    invoke-direct {p0, v3}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;I)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public stopListening(Ljava/lang/String;)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 296
    .local v2, "userId":I
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopListening() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, v2}, ensureGroupStateLoaded(I)V

    .line 299
    iget-object v3, p0, mHost:Landroid/util/Pair;

    if-eqz v3, :cond_4f

    iget-object v3, p0, mHost:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 300
    const/4 v3, 0x0

    iput-object v3, p0, mHost:Landroid/util/Pair;

    .line 301
    iget-object v4, p0, mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    .line 302
    :try_start_3b
    iget-object v3, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 303
    .local v1, "serviceIndex":I
    if-ltz v1, :cond_4e

    .line 304
    iget-object v3, p0, mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 305
    .local v0, "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->deleteHostAndDisableAllCocktails()V

    .line 307
    .end local v0    # "impl":Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
    :cond_4e
    monitor-exit v4

    .line 309
    .end local v1    # "serviceIndex":I
    :cond_4f
    return-void

    .line 307
    :catchall_50
    move-exception v3

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_50

    throw v3
.end method

.method public switchDefaultCocktail()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 645
    :goto_6
    return-void

    .line 644
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->switchDefaultCocktail()V

    goto :goto_6
.end method

.method public systemRunning(Z)V
    .registers 7
    .param p1, "safeMode"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, mSafeMode:Z

    .line 136
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 137
    invoke-direct {p0}, registerBroadcastReceiver()V

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mIntent:Landroid/content/Intent;

    .line 139
    iget-object v1, p0, mIntent:Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const-string v3, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 147
    :goto_2f
    return-void

    .line 142
    :cond_30
    invoke-direct {p0}, bootCompleted()V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2f
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 611
    :goto_6
    return-void

    .line 610
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->unbindRemoteViewsService(ILandroid/content/Intent;)V

    goto :goto_6
.end method

.method public unlockCocktailBar(I)V
    .registers 4
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->showAndLockCocktailBar(ZI)V

    .line 746
    return-void
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "client"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, mClientManager:Lcom/android/server/cocktailbar/client/CocktailBarClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/client/CocktailBarClientManager;->unregisterClient(Landroid/os/IBinder;)V

    .line 833
    return-void
.end method

.method public unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, mFeedsManager:Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/feeds/CocktailBarFeedsManager;->unregisterFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 817
    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "callback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 794
    return-void
.end method

.method public updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailInfo"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p3, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 358
    :goto_6
    return-void

    .line 351
    :cond_7
    if-nez p2, :cond_12

    .line 352
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCocktail : cocktailInfo is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 356
    :cond_12
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateCocktail(Ljava/lang/String;ILcom/samsung/android/cocktailbar/CocktailInfo;)V

    goto :goto_6
.end method

.method public updateCocktailBarPosition(I)V
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updatePosition(I)V

    .line 616
    return-void
.end method

.method public updateCocktailBarStateFromSystem(I)V
    .registers 3
    .param p1, "windowType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateStateFromSystem(I)V

    .line 778
    return-void
.end method

.method public updateCocktailBarVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateVisibility(I)V

    .line 773
    return-void
.end method

.method public updateCocktailBarWindowType(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "windowType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, mStatePolicyController:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->updateWindowType(Ljava/lang/String;I)V

    .line 622
    return-void
.end method

.method public updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    .local p3, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-direct {p0}, enforceCocktailBarService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 428
    :goto_6
    return-void

    .line 426
    :cond_7
    iget-object v0, p0, mSecurityPolicy:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->updateFeeds(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_6
.end method

.method public updateLongpressGesture(Z)V
    .registers 3
    .param p1, "bEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 671
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 672
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateLongpressGesture(Z)V

    .line 673
    return-void
.end method

.method public updateSysfsBarLength(I)V
    .registers 3
    .param p1, "barLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 683
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 684
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    .line 685
    return-void
.end method

.method public updateSysfsDeadZone(I)V
    .registers 3
    .param p1, "deadzone"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 678
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsDeadZone(I)V

    .line 679
    return-void
.end method

.method public updateSysfsGripDisable(Z)V
    .registers 3
    .param p1, "bDisable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 690
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsGripDisable(Z)V

    .line 691
    return-void
.end method

.method public updateWakeupArea(I)V
    .registers 3
    .param p1, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 666
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupArea(I)V

    .line 667
    return-void
.end method

.method public updateWakeupGesture(IZ)V
    .registers 4
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 661
    return-void
.end method

.method public wakeupCocktailBar(ZII)V
    .registers 7
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1e

    .line 696
    iget-object v0, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    iget-object v0, p0, mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->getWakeUpState()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 697
    :cond_19
    iget-object v0, p0, mWakeUpManager:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->wakeupCocktailBar(ZII)V

    .line 702
    :cond_1e
    :goto_1e
    return-void

    .line 699
    :cond_1f
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip wakeupCocktailBar reason("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    invoke-virtual {v2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->getCurrentModeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
