.class Lcom/android/settings/wifi/WifiShareProfile$2$1;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareProfile$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiShareProfile$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile$2;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 243
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiShareProfile"

    const-string v1, "requestGroupInfo - WifiP2pGroup is NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # setter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiShareProfile;->access$602(Lcom/android/settings/wifi/WifiShareProfile;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 247
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WifiShareProfile"

    const-string v1, "requestGroupInfo - GO device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings/wifi/WifiShareProfile;->updateWifiP2pDeviceList()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$800(Lcom/android/settings/wifi/WifiShareProfile;)V

    goto :goto_0

    .line 253
    :cond_3
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WifiShareProfile"

    const-string v1, "requestGroupInfo - GC device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareProfile;->access$1100(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiShareProfile;->access$500(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;-><init>(Lcom/android/settings/wifi/WifiShareProfile$2$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0
.end method
