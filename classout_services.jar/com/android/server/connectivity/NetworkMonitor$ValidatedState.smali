.class Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .prologue
    .line 458
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 458
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const v5, 0x82002

    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v1, "Validated"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 462
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v0

    if-nez v0, :cond_51

    .line 464
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mAuthCompleted:Z
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 465
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v2, 0x4

    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    :goto_30
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalCheckDone:Z
    invoke-static {v0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 472
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 477
    :goto_3a
    return-void

    .line 468
    :cond_3b
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v6, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_30

    .line 474
    :cond_51
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v4, v2}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3a
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 481
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 482
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_3e

    .line 490
    const/4 v0, 0x0

    :goto_25
    return v0

    .line 484
    :sswitch_26
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2700(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_25

    .line 487
    :sswitch_32
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_25

    .line 482
    :sswitch_data_3e
    .sparse-switch
        0x82001 -> :sswitch_26
        0x82007 -> :sswitch_32
    .end sparse-switch
.end method
