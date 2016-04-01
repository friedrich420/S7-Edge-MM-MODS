.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetwork"
.end annotation


# instance fields
.field private mActiveNetwork:I

.field private mCellularLinkProperties:Landroid/net/LinkProperties;

.field private mCellularRequest:Landroid/net/NetworkRequest;

.field private mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field private mWifiLinkProperties:Landroid/net/LinkProperties;

.field private mWifiRequest:Landroid/net/NetworkRequest;

.field private mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/net/IConnectivityManager;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)V
    .registers 11
    .param p2, "connSvc"    # Landroid/net/IConnectivityManager;
    .param p3, "h"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    .prologue
    .line 500
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v4, 0x0

    :try_start_6
    iput-object v4, p0, mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 503
    const/4 v4, 0x0

    iput-object v4, p0, mCellularLinkProperties:Landroid/net/LinkProperties;

    .line 504
    const/4 v4, -0x1

    iput v4, p0, mActiveNetwork:I

    .line 505
    invoke-interface {p2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 506
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1a

    .line 507
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, mActiveNetwork:I

    .line 509
    :cond_1a
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 510
    if-eqz v2, :cond_2b

    .line 511
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_ae

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_29
    iput-object v4, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 514
    :cond_2b
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 515
    if-eqz v2, :cond_3c

    .line 516
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_b2

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_3a
    iput-object v4, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 519
    :cond_3c
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 520
    .local v0, "cellularCap":Landroid/net/NetworkCapabilities;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 521
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 522
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 523
    .local v3, "wifiCap":Landroid/net/NetworkCapabilities;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 524
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 525
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p2, v0, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, mCellularRequest:Landroid/net/NetworkRequest;

    .line 527
    const-string v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "celullar request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mCellularRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p2, v3, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, mWifiRequest:Landroid/net/NetworkRequest;

    .line 530
    const-string v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mWifiRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v0    # "cellularCap":Landroid/net/NetworkCapabilities;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "wifiCap":Landroid/net/NetworkCapabilities;
    :goto_ad
    return-void

    .line 511
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_ae
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto/16 :goto_29

    .line 516
    :cond_b2
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b4} :catch_b5

    goto :goto_3a

    .line 531
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_b5
    move-exception v1

    .line 532
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in ConnectivityService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_ad
.end method

.method private handleConnected(J)Z
    .registers 8
    .param p1, "transportType"    # J

    .prologue
    const/4 v0, 0x1

    .line 594
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_3e

    iget-object v1, p0, mWifiLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, isValidLink(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 596
    iget-object v1, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_7b

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network WiFi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 599
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 611
    :goto_3d
    return v0

    .line 602
    :cond_3e
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_7b

    iget-object v1, p0, mCellularLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, isValidLink(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 604
    iget-object v1, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_7b

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network Cellular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 607
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto :goto_3d

    .line 611
    :cond_7b
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method private handleDisconnected(J)Z
    .registers 8
    .param p1, "transportType"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 573
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_39

    .line 574
    iget-object v1, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_70

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network WiFi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 577
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 578
    iput-object v4, p0, mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 590
    :goto_38
    return v0

    .line 581
    :cond_39
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_70

    .line 582
    iget-object v1, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_70

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network Cellular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 585
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 586
    iput-object v4, p0, mCellularLinkProperties:Landroid/net/LinkProperties;

    goto :goto_38

    .line 590
    :cond_70
    const/4 v0, 0x0

    goto :goto_38
.end method

.method private isValidLink(Landroid/net/LinkProperties;)Z
    .registers 3
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 638
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_10
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public isMobileActive()Z
    .registers 3

    .prologue
    .line 633
    iget v0, p0, mActiveNetwork:I

    if-nez v0, :cond_c

    iget-object v0, p0, mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isValidRequest(I)Z
    .registers 3
    .param p1, "reqId"    # I

    .prologue
    .line 537
    iget-object v0, p0, mCellularRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-eq p1, v0, :cond_c

    iget-object v0, p0, mWifiRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isWifiActive()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 628
    iget v1, p0, mActiveNetwork:I

    if-ne v1, v0, :cond_c

    iget-object v1, p0, mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v1, v2, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onActiveNetworkChanged(ILandroid/net/LinkProperties;)V
    .registers 5
    .param p1, "activeNetwork"    # I
    .param p2, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 615
    iput p1, p0, mActiveNetwork:I

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mActiveNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 617
    iget v0, p0, mActiveNetwork:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 618
    iput-object p2, p0, mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 622
    :cond_22
    :goto_22
    if-eqz p2, :cond_3f

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveNetworkChanged: link properties set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 625
    :cond_3f
    return-void

    .line 619
    :cond_40
    iget v0, p0, mActiveNetwork:I

    if-nez v0, :cond_22

    .line 620
    iput-object p2, p0, mCellularLinkProperties:Landroid/net/LinkProperties;

    goto :goto_22
.end method

.method public onNetworkChanged(Landroid/os/Bundle;I)Z
    .registers 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "notifyType"    # I

    .prologue
    const/4 v1, 0x0

    .line 541
    const-class v4, Landroid/net/NetworkRequest;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 542
    .local v0, "req":Landroid/net/NetworkRequest;
    if-nez v0, :cond_10

    .line 569
    :cond_f
    :goto_f
    :pswitch_f
    return v1

    .line 545
    :cond_10
    const-wide/16 v2, -0x1

    .line 546
    .local v2, "transportType":J
    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, mCellularRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_25

    .line 547
    const-wide/16 v2, 0x0

    .line 551
    :cond_1c
    :goto_1c
    packed-switch p2, :pswitch_data_42

    goto :goto_f

    .line 567
    :cond_20
    :pswitch_20
    invoke-direct {p0, v2, v3}, handleConnected(J)Z

    move-result v1

    goto :goto_f

    .line 548
    :cond_25
    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, mWifiRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_1c

    .line 549
    const-wide/16 v2, 0x1

    goto :goto_1c

    .line 560
    :pswitch_30
    invoke-direct {p0, v2, v3}, handleDisconnected(J)Z

    move-result v1

    goto :goto_f

    .line 562
    :pswitch_35
    invoke-virtual {p0}, isWifiActive()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0}, isMobileActive()Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_f

    .line 551
    :pswitch_data_42
    .packed-switch 0x80001
        :pswitch_f
        :pswitch_20
        :pswitch_f
        :pswitch_30
        :pswitch_30
        :pswitch_35
        :pswitch_20
        :pswitch_30
    .end packed-switch
.end method
