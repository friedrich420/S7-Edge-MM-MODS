.class Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpHaveAddressState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 821
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 824
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 825
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    # invokes: Landroid/net/dhcp/DhcpClient;->setIpAddress(Landroid/net/LinkAddress;)Z
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$3500(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v0, :cond_3d

    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3000(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    # invokes: Landroid/net/dhcp/DhcpClient;->connectUdpSock(Ljava/net/Inet4Address;)Z
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$3600(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 828
    :cond_2d
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifyFailure()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1500(Landroid/net/dhcp/DhcpClient;)V

    .line 831
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$3700(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 833
    :cond_3d
    return-void
.end method

.method public exit()V
    .registers 4

    .prologue
    .line 837
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    const-string v1, "Clearing IP address"

    # invokes: Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$100(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Landroid/net/LinkAddress;

    const-string v2, "0.0.0.0/0"

    invoke-direct {v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    # invokes: Landroid/net/dhcp/DhcpClient;->setIpAddress(Landroid/net/LinkAddress;)Z
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$3500(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z

    .line 839
    return-void
.end method
