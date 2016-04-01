.class Lcom/android/server/pm/UserManagerService$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->removeUser(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .registers 3

    .prologue
    .line 1897
    iput-object p1, p0, this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1899
    iget-object v0, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1900
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_26

    .line 1901
    :try_start_e
    iget-object v0, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUserExistsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_23

    .line 1902
    :try_start_15
    iget-object v0, p0, this$0:Lcom/android/server/pm/UserManagerService;

    iget v4, p0, val$userHandle:I

    # invokes: Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)V

    .line 1903
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_20

    .line 1904
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_23

    .line 1905
    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_26

    .line 1906
    return-void

    .line 1903
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0

    .line 1904
    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_23

    :try_start_25
    throw v0

    .line 1905
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_26

    throw v0
.end method
