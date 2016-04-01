.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .registers 4
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "force"    # Z

    .prologue
    .line 3831
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    .line 3832
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3833
    iput-boolean p3, p0, mForceUnmount:Z

    .line 3834
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3893
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, sendNewStatusOrIgnore(I)V

    .line 3894
    return-void
.end method

.method public handleExecute()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 3838
    iget-object v6, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v6}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)V

    .line 3839
    iget-object v6, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v6}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)V

    .line 3841
    invoke-virtual {p0}, getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v4

    .line 3844
    .local v4, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v6, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 3845
    :try_start_16
    iget-object v6, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v8, v8, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;

    .line 3846
    .local v3, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v7
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2f

    .line 3848
    if-nez v3, :cond_32

    .line 3849
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, sendNewStatusOrIgnore(I)V

    .line 3889
    :goto_2e
    return-void

    .line 3846
    .end local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_2f
    move-exception v6

    :try_start_30
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v6

    .line 3853
    .restart local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_32
    iget v6, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    iget-object v7, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget v7, v7, Lcom/android/server/MountService$ObbState;->ownerGid:I

    if-eq v6, v7, :cond_6c

    .line 3854
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission denied attempting to unmount OBB "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (owned by GID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    const/16 v6, 0x19

    invoke-virtual {p0, v6}, sendNewStatusOrIgnore(I)V

    goto :goto_2e

    .line 3860
    :cond_6c
    const/4 v5, 0x0

    .line 3862
    .local v5, "rc":I
    :try_start_6d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "unmount"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v9, v9, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3863
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v6, p0, mForceUnmount:Z

    if-eqz v6, :cond_8f

    .line 3864
    const-string/jumbo v6, "force"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3866
    :cond_8f
    iget-object v6, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_98
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_98} :catch_ab

    .line 3879
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_98
    if-nez v5, :cond_c1

    .line 3880
    iget-object v6, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 3881
    :try_start_a1
    iget-object v6, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v6, v3}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3882
    monitor-exit v7
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_be

    .line 3884
    invoke-virtual {p0, v10}, sendNewStatusOrIgnore(I)V

    goto :goto_2e

    .line 3867
    :catch_ab
    move-exception v2

    .line 3868
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3869
    .local v1, "code":I
    const/16 v6, 0x195

    if-ne v1, v6, :cond_b6

    .line 3870
    const/4 v5, -0x7

    goto :goto_98

    .line 3871
    :cond_b6
    const/16 v6, 0x196

    if-ne v1, v6, :cond_bc

    .line 3873
    const/4 v5, 0x0

    goto :goto_98

    .line 3875
    :cond_bc
    const/4 v5, -0x1

    goto :goto_98

    .line 3882
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_be
    move-exception v6

    :try_start_bf
    monitor-exit v7
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v6

    .line 3886
    :cond_c1
    const-string v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not unmount OBB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    const/16 v6, 0x16

    invoke-virtual {p0, v6}, sendNewStatusOrIgnore(I)V

    goto/16 :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3899
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3900
    iget-object v1, p0, mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3901
    const-string v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3902
    iget-boolean v1, p0, mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3903
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
