.class Lcom/android/server/pm/UserManagerService$3$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$3;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$3;)V
    .registers 2

    .prologue
    .line 1954
    iput-object p1, p0, this$1:Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1956
    iget-object v0, p0, this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1957
    :try_start_9
    iget-object v0, p0, this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_30

    .line 1958
    :try_start_12
    iget-object v0, p0, this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUserExistsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_2d

    .line 1959
    :try_start_1b
    iget-object v0, p0, this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v4, p0, this$1:Lcom/android/server/pm/UserManagerService$3;

    iget v4, v4, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    # invokes: Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)V

    .line 1960
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2a

    .line 1961
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_2d

    .line 1962
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_30

    .line 1963
    return-void

    .line 1960
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0

    .line 1961
    :catchall_2d
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0

    .line 1962
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_30

    throw v0
.end method
