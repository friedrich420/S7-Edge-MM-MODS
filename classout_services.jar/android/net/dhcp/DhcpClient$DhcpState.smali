.class Landroid/net/dhcp/DhcpClient$DhcpState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 605
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .prologue
    .line 608
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 609
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->clearDhcpState()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)V

    .line 610
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->initInterface()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1200(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->initSockets()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1300(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 611
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Landroid/net/dhcp/DhcpClient$ReceiveThread;

    iget-object v2, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {v1, v2}, Landroid/net/dhcp/DhcpClient$ReceiveThread;-><init>(Landroid/net/dhcp/DhcpClient;)V

    # setter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 612
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->start()V

    .line 617
    :goto_2d
    return-void

    .line 614
    :cond_2e
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)V

    .line 615
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1700(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_2d
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 621
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->cancelOneshotTimeout()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1800(Landroid/net/dhcp/DhcpClient;)V

    .line 622
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 623
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1400(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->halt()V

    .line 624
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const/4 v1, 0x0

    # setter for: Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1402(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 626
    :cond_1c
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->clearDhcpState()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)V

    .line 627
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 631
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 632
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_24

    .line 641
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 634
    :sswitch_b
    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$1900(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_a

    .line 637
    :sswitch_17
    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const-string v2, "Timed out"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)V

    goto :goto_a

    .line 632
    :sswitch_data_24
    .sparse-switch
        0x30002 -> :sswitch_b
        0x30068 -> :sswitch_17
    .end sparse-switch
.end method
