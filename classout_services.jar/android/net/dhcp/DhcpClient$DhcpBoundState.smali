.class Landroid/net/dhcp/DhcpClient$DhcpBoundState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpBoundState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 842
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .prologue
    .line 845
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 846
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->cancelOneshotTimeout()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1800(Landroid/net/dhcp/DhcpClient;)V

    .line 847
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->notifySuccess()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3800(Landroid/net/dhcp/DhcpClient;)V

    .line 850
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->scheduleRenew()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3900(Landroid/net/dhcp/DhcpClient;)V

    .line 851
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 855
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 856
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 865
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 858
    :pswitch_a
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$600(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 859
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$4000(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$4100(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 863
    :goto_1d
    const/4 v0, 0x1

    goto :goto_9

    .line 861
    :cond_1f
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$4200(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$4300(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_1d

    .line 856
    nop

    :pswitch_data_2c
    .packed-switch 0x30003
        :pswitch_a
    .end packed-switch
.end method
