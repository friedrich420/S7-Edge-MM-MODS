.class Lcom/android/server/MountService$ObbActionHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/MountService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 3505
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    .line 3506
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3502
    const/4 v0, 0x0

    iput-boolean v0, p0, mBound:Z

    .line 3503
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/List;

    .line 3507
    return-void
.end method

.method private connectToService()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 3642
    const-string v2, "MountService"

    const-string v3, "Trying to bind to DefaultContainerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/server/MountService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 3645
    .local v0, "service":Landroid/content/Intent;
    iget-object v2, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3647
    iput-boolean v1, p0, mBound:Z

    .line 3650
    :goto_29
    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method private disconnectService()V
    .registers 3

    .prologue
    .line 3654
    iget-object v0, p0, this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$2302(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3655
    const/4 v0, 0x0

    iput-boolean v0, p0, mBound:Z

    .line 3656
    iget-object v0, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mDefContainerConn:Lcom/android/server/MountService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Lcom/android/server/MountService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3657
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 3511
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_1bc

    .line 3638
    :cond_7
    :goto_7
    return-void

    .line 3513
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3516
    .local v0, "action":Lcom/android/server/MountService$ObbAction;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OBB_RUN_ACTION: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    iget-boolean v8, p0, mBound:Z

    if-nez v8, :cond_3d

    .line 3524
    invoke-direct {p0}, connectToService()Z

    move-result v8

    if-nez v8, :cond_3d

    .line 3525
    const-string v8, "MountService"

    const-string v9, "Failed to bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_7

    .line 3531
    :cond_3d
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3536
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :pswitch_43
    const-string v8, "MountService"

    const-string v9, "OBB_MCS_BOUND"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_57

    .line 3538
    iget-object v9, p0, this$0:Lcom/android/server/MountService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v9, v8}, Lcom/android/server/MountService;->access$2302(Lcom/android/server/MountService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 3540
    :cond_57
    iget-object v8, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v8}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    if-nez v8, :cond_82

    .line 3542
    const-string v8, "MountService"

    const-string v9, "Cannot bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3545
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_6c

    .line 3547
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_7c
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_7

    .line 3548
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_82
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_99

    .line 3549
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3550
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    if-eqz v0, :cond_7

    .line 3551
    invoke-virtual {v0, p0}, Lcom/android/server/MountService$ObbAction;->execute(Lcom/android/server/MountService$ObbActionHandler;)V

    goto/16 :goto_7

    .line 3555
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_99
    const-string v8, "MountService"

    const-string v9, "Empty queue"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3561
    :pswitch_a2
    const-string v8, "MountService"

    const-string v9, "OBB_MCS_RECONNECT"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 3563
    iget-boolean v8, p0, mBound:Z

    if-eqz v8, :cond_b8

    .line 3564
    invoke-direct {p0}, disconnectService()V

    .line 3566
    :cond_b8
    invoke-direct {p0}, connectToService()Z

    move-result v8

    if-nez v8, :cond_7

    .line 3567
    const-string v8, "MountService"

    const-string v9, "Failed to bind to media container service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/MountService$ObbAction;

    .line 3570
    .restart local v0    # "action":Lcom/android/server/MountService$ObbAction;
    invoke-virtual {v0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    goto :goto_cb

    .line 3572
    .end local v0    # "action":Lcom/android/server/MountService$ObbAction;
    :cond_db
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto/16 :goto_7

    .line 3579
    .end local v3    # "i$":Ljava/util/Iterator;
    :pswitch_e2
    const-string v8, "MountService"

    const-string v9, "OBB_MCS_UNBIND"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f6

    .line 3583
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3585
    :cond_f6
    iget-object v8, p0, mActions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_107

    .line 3586
    iget-boolean v8, p0, mBound:Z

    if-eqz v8, :cond_7

    .line 3587
    invoke-direct {p0}, disconnectService()V

    goto/16 :goto_7

    .line 3593
    :cond_107
    iget-object v8, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v8}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v8

    invoke-virtual {v8, v11}, sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 3598
    :pswitch_112
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 3601
    .local v6, "path":Ljava/lang/String;
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Flushing all OBB state for path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    iget-object v8, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v8}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v9

    monitor-enter v9

    .line 3604
    :try_start_135
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 3606
    .local v5, "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    iget-object v8, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v8}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3607
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    :cond_148
    :goto_148
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_163

    .line 3608
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/MountService$ObbState;

    .line 3615
    .local v7, "state":Lcom/android/server/MountService$ObbState;
    iget-object v8, v7, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_148

    .line 3616
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_148

    .line 3634
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .end local v5    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    .end local v7    # "state":Lcom/android/server/MountService$ObbState;
    :catchall_160
    move-exception v8

    monitor-exit v9
    :try_end_162
    .catchall {:try_start_135 .. :try_end_162} :catchall_160

    throw v8

    .line 3620
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/MountService$ObbState;>;"
    .restart local v5    # "obbStatesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/MountService$ObbState;>;"
    :cond_163
    :try_start_163
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_167
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 3622
    .local v4, "obbState":Lcom/android/server/MountService$ObbState;
    const-string v8, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing state for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    iget-object v8, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v8, v4}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_192
    .catchall {:try_start_163 .. :try_end_192} :catchall_160

    .line 3627
    :try_start_192
    iget-object v8, v4, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v10, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget v11, v4, Lcom/android/server/MountService$ObbState;->nonce:I

    const/4 v12, 0x2

    invoke-interface {v8, v10, v11, v12}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_192 .. :try_end_19c} :catch_19d
    .catchall {:try_start_192 .. :try_end_19c} :catchall_160

    goto :goto_167

    .line 3629
    :catch_19d
    move-exception v1

    .line 3630
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_19e
    const-string v8, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_167

    .line 3634
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "obbState":Lcom/android/server/MountService$ObbState;
    :cond_1b9
    monitor-exit v9
    :try_end_1ba
    .catchall {:try_start_19e .. :try_end_1ba} :catchall_160

    goto/16 :goto_7

    .line 3511
    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_8
        :pswitch_43
        :pswitch_e2
        :pswitch_a2
        :pswitch_112
    .end packed-switch
.end method
