.class Lcom/android/settings/wifi/WifiShareProfile$2$1$1;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiShareProfile$2$1;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiShareProfile$2$1;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    const/4 v7, 0x0

    .line 257
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$600(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 258
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$600(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    .line 259
    .local v1, "goDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v1, :cond_9

    .line 260
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    # invokes: Lcom/android/settings/wifi/WifiShareProfile;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiShareProfile;->access$900(Lcom/android/settings/wifi/WifiShareProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "convertedAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 262
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 263
    .local v3, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WifiShareProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestPeers - WifiP2pDevice list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "WifiShareProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestPeers - [goDevice.deviceAddress]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , [peer.deviceAddress]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , [convertedAddr]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , [peer.groupownerAddress]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , [mP2pThisDevice.deviceAddress]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiShareProfile;->access$1000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2
    if-eqz v0, :cond_5

    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 273
    :cond_3
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WifiShareProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestPeers - Add GO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_4
    iput v7, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 275
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 278
    :cond_5
    iget-object v4, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->mP2pThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$1000(Lcom/android/settings/wifi/WifiShareProfile;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WifiShareProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestPeers - Add GC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_6
    iput v7, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 282
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->P2pPeers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$700(Lcom/android/settings/wifi/WifiShareProfile;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 285
    .end local v3    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfile$2$1$1;->this$2:Lcom/android/settings/wifi/WifiShareProfile$2$1;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2$1;->this$1:Lcom/android/settings/wifi/WifiShareProfile$2;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiShareProfile$2;->this$0:Lcom/android/settings/wifi/WifiShareProfile;

    # invokes: Lcom/android/settings/wifi/WifiShareProfile;->updateWifiP2pDeviceList()V
    invoke-static {v4}, Lcom/android/settings/wifi/WifiShareProfile;->access$800(Lcom/android/settings/wifi/WifiShareProfile;)V

    .line 292
    .end local v0    # "convertedAddr":Ljava/lang/String;
    .end local v1    # "goDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    return-void

    .line 287
    .restart local v1    # "goDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_9
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "WifiShareProfile"

    const-string v5, "requestPeers - goDevice is NULL."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    .end local v1    # "goDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_a
    # getter for: Lcom/android/settings/wifi/WifiShareProfile;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiShareProfile;->access$400()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "WifiShareProfile"

    const-string v5, "requestPeers - mWifiP2pGroup is NULL."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
