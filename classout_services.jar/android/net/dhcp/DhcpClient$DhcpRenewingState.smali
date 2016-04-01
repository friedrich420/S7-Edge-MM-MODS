.class Landroid/net/dhcp/DhcpClient$DhcpRenewingState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRenewingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    .prologue
    .line 871
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    .line 872
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 873
    const v0, 0x8ca0

    iput v0, p0, mTimeout:I

    .line 874
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .prologue
    .line 878
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 879
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->startNewTransaction()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2400(Landroid/net/dhcp/DhcpClient;)V

    .line 880
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .registers 4
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    .line 895
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 902
    :cond_8
    :goto_8
    return-void

    .line 896
    :cond_9
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_1e

    .line 897
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 898
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3100(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$4400(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_8

    .line 899
    :cond_1e
    instance-of v0, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz v0, :cond_8

    .line 900
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$4500(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_8
.end method

.method protected sendPacket()Z
    .registers 6

    .prologue
    .line 885
    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v1, :cond_2a

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v0, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 887
    .local v0, "to":Ljava/net/Inet4Address;
    :goto_12
    iget-object v2, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    sget-object v3, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v4, 0x0

    # invokes: Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    invoke-static {v2, v1, v3, v4, v0}, Landroid/net/dhcp/DhcpClient;->access$2900(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v1

    return v1

    .line 885
    .end local v0    # "to":Ljava/net/Inet4Address;
    :cond_2a
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    goto :goto_12
.end method

.method protected timeout()V
    .registers 3

    .prologue
    .line 906
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$4600(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 907
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30068

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 908
    return-void
.end method
