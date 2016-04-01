.class Landroid/net/dhcp/DhcpClient$StoppedState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 2

    .prologue
    .line 572
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 576
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 586
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 578
    :pswitch_a
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->scheduleOneshotTimeout()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$500(Landroid/net/dhcp/DhcpClient;)V

    .line 579
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$600(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 580
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$700(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 584
    :goto_22
    const/4 v0, 0x1

    goto :goto_9

    .line 582
    :cond_24
    iget-object v0, p0, this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$900(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1000(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_22

    .line 576
    :pswitch_data_30
    .packed-switch 0x30001
        :pswitch_a
    .end packed-switch
.end method
