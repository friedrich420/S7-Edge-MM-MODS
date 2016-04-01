.class Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 3538
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "x1"    # Lcom/android/server/net/NetworkPolicyManagerService$1;

    .prologue
    .line 3538
    invoke-direct {p0, p1}, <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 3544
    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3545
    .local v0, "uid":I
    iget-object v1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_1d

    .line 3546
    :try_start_13
    iget-object v1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    .line 3547
    monitor-exit v2

    .line 3550
    .end local v0    # "uid":I
    :goto_19
    return-void

    .line 3547
    .restart local v0    # "uid":I
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 3548
    .end local v0    # "uid":I
    :catch_1d
    move-exception v1

    goto :goto_19
.end method

.method public onParoleStateChanged(Z)V
    .registers 4
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 3554
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3555
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleLocked()V

    .line 3556
    monitor-exit v1

    .line 3557
    return-void

    .line 3556
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method
