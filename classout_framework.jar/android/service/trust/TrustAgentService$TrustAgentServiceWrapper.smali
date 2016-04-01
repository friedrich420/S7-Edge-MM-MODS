.class final Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;
.super Landroid/service/trust/ITrustAgentService$Stub;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustAgentServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method private constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .registers 2

    .prologue
    .line 363
    iput-object p1, p0, this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/service/trust/ITrustAgentService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/trust/TrustAgentService;
    .param p2, "x1"    # Landroid/service/trust/TrustAgentService$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, <init>(Landroid/service/trust/TrustAgentService;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    .registers 6
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroid/service/trust/TrustAgentService$ConfigurationData;

    invoke-direct {v2, p1, p2}, Landroid/service/trust/TrustAgentService$ConfigurationData;-><init>(Ljava/util/List;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 378
    return-void
.end method

.method public onDeviceLocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 383
    return-void
.end method

.method public onDeviceUnlocked()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    return-void
.end method

.method public onTrustTimeout()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    return-void
.end method

.method public onUnlockAttempt(Z)V
    .registers 6
    .param p1, "successful"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->access$400(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v3

    if-eqz p1, :cond_13

    move v0, v1

    :goto_b
    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 367
    return-void

    :cond_13
    move v0, v2

    .line 366
    goto :goto_b
.end method

.method public setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/service/trust/ITrustAgentServiceCallback;

    .prologue
    .line 392
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 393
    :try_start_7
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    # setter for: Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-static {v1, p1}, Landroid/service/trust/TrustAgentService;->access$102(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)Landroid/service/trust/ITrustAgentServiceCallback;

    .line 396
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mManagingTrust:Z
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$500(Landroid/service/trust/TrustAgentService;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_45

    move-result v1

    if-eqz v1, :cond_23

    .line 398
    :try_start_14
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v1

    iget-object v3, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mManagingTrust:Z
    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->access$500(Landroid/service/trust/TrustAgentService;)Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_3c
    .catchall {:try_start_14 .. :try_end_23} :catchall_45

    .line 403
    :cond_23
    :goto_23
    :try_start_23
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$600(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 404
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    # getter for: Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$600(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 405
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    const/4 v3, 0x0

    # setter for: Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;
    invoke-static {v1, v3}, Landroid/service/trust/TrustAgentService;->access$602(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 407
    :cond_3a
    monitor-exit v2

    .line 408
    return-void

    .line 399
    :catch_3c
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, this$0:Landroid/service/trust/TrustAgentService;

    const-string v3, "calling setManagingTrust()"

    # invokes: Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/service/trust/TrustAgentService;->access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    goto :goto_23

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_45

    throw v1
.end method
