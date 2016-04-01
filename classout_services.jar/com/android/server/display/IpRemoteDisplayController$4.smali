.class Lcom/android/server/display/IpRemoteDisplayController$4;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$deviceType:I

.field final synthetic val$ipAddr:Ljava/lang/String;

.field final synthetic val$isPendingRequest:Z

.field final synthetic val$options:Ljava/lang/String;

.field final synthetic val$port:Ljava/lang/String;

.field final synthetic val$remoteP2pMacAddr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 238
    iput-object p1, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, val$remoteP2pMacAddr:Ljava/lang/String;

    iput-object p3, p0, val$deviceName:Ljava/lang/String;

    iput-boolean p4, p0, val$isPendingRequest:Z

    iput-object p5, p0, val$ipAddr:Ljava/lang/String;

    iput-object p6, p0, val$port:Ljava/lang/String;

    iput p7, p0, val$deviceType:I

    iput-object p8, p0, val$options:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 241
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 242
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 243
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, val$remoteP2pMacAddr:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 244
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v1, p0, val$deviceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 245
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-boolean v1, p0, val$isPendingRequest:Z

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mRequestPendingSetup:Z
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1002(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 247
    :cond_2d
    iget-object v0, p0, this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v1, p0, val$ipAddr:Ljava/lang/String;

    iget-object v2, p0, val$port:Ljava/lang/String;

    iget v3, p0, val$deviceType:I

    iget-object v4, p0, val$options:Ljava/lang/String;

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/display/IpRemoteDisplayController;->access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    return-void
.end method
