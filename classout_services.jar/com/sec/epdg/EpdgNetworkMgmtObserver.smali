.class public abstract Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "EpdgNetworkMgmtObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;,
        Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;,
        Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[NETMGMT]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 118
    return-void
.end method


# virtual methods
.method public abstract EpdgAddressRemoved(Landroid/net/LinkAddress;Ljava/lang/String;)V
.end method

.method public abstract EpdgAddressUpdated(Landroid/net/LinkAddress;Ljava/lang/String;)V
.end method

.method public abstract EpdgInterfaceAdded(Ljava/lang/String;)V
.end method

.method public abstract EpdgInterfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
.end method

.method public abstract EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V
.end method

.method public abstract EpdgInterfaceRemoved(Ljava/lang/String;)V
.end method

.method public abstract EpdgInterfaceStatusChanged(Ljava/lang/String;Z)V
.end method

.method public abstract EpdgLimitReached(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 70
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressRemovedRunnable;-><init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Landroid/net/LinkAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 64
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfAddressUpdatedRunnable;-><init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Landroid/net/LinkAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .registers 8
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    .line 35
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface Data activity changed : label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lifetime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 44
    const-string v1, "[NETMGMT]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " link "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_34

    const-string/jumbo v0, "up"

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgNetworkMgmtObserver$EpdgIfLinkStatusChangedRunnable;-><init>(Lcom/sec/epdg/EpdgNetworkMgmtObserver;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void

    .line 44
    :cond_34
    const-string/jumbo v0, "down"

    goto :goto_1c
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 40
    const-string v1, "[NETMGMT]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface status changed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_22

    const-string/jumbo v0, "up"

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void

    .line 40
    :cond_22
    const-string/jumbo v0, "down"

    goto :goto_16
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limitName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .registers 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 85
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "routeRemoved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .registers 5
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 81
    const-string v0, "[NETMGMT]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "routeUpdated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
