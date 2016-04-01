.class Lcom/android/server/display/WifiDisplayController$16;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 3

    .prologue
    .line 1602
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private next()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1617
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v1, :cond_2e

    .line 1620
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$1602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1622
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2000(Lcom/android/server/display/WifiDisplayController;)V

    .line 1623
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1627
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayController;->access$2202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1628
    iget-object v0, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateConnection()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)V

    .line 1630
    :cond_2e
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 1611
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cancel connection to Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-direct {p0}, next()V

    .line 1614
    return-void
.end method

.method public onSuccess()V
    .registers 4

    .prologue
    .line 1605
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceled connection to Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, val$oldDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-direct {p0}, next()V

    .line 1607
    return-void
.end method
