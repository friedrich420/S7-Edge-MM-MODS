.class Landroid/net/dhcp/DhcpClient$DhcpInitState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpInitState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 752
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    .line 753
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 754
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .prologue
    .line 758
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 759
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->startNewTransaction()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2400(Landroid/net/dhcp/DhcpClient;)V

    .line 760
    return-void
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .registers 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    .line 767
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 774
    :cond_8
    :goto_8
    return-void

    .line 768
    :cond_9
    instance-of v0, p1, Landroid/net/dhcp/DhcpOfferPacket;

    if-eqz v0, :cond_8

    .line 769
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v1

    # setter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$2602(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;

    .line 770
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 771
    const-string v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got pending lease: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$2800(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_8
.end method

.method protected sendPacket()Z
    .registers 2

    .prologue
    .line 763
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2500(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    return v0
.end method
