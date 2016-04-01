.class Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;
.super Lcom/sec/epdg/EpdgNetworkMgmtObserver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgNetworkManagementObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .registers 2

    .prologue
    .line 2012
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgNetworkMgmtObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p2, "x1"    # Lcom/sec/epdg/EpdgService$1;

    .prologue
    .line 2012
    invoke-direct {p0, p1}, <init>(Lcom/sec/epdg/EpdgService;)V

    return-void
.end method


# virtual methods
.method public EpdgAddressRemoved(Landroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 3
    .param p1, "linkAddress"    # Landroid/net/LinkAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 2113
    return-void
.end method

.method public EpdgAddressUpdated(Landroid/net/LinkAddress;Ljava/lang/String;)V
    .registers 7
    .param p1, "linkAddress"    # Landroid/net/LinkAddress;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 2089
    if-nez p1, :cond_9

    .line 2090
    const-string v1, "[EPDGService]"

    const-string v2, "Link address is null"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    :cond_9
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2093
    .local v0, "address":Ljava/lang/String;
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 2094
    const-string v2, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgAddressUpdated: address: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_96

    const-string v1, "Suppressed"

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " iface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v1

    if-eqz v1, :cond_98

    const-string v1, "Suppressed"

    :goto_46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    if-eqz v0, :cond_95

    .line 2098
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isValidAddress(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$3400(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 2100
    # invokes: Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3500()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-eq v1, v2, :cond_95

    .line 2101
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getConfiguredWifiIntfIpType() is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3500()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " so check for DNS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startTimerOrPerformDns(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgService;->access$3600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V

    .line 2108
    :cond_95
    return-void

    :cond_96
    move-object v1, v0

    .line 2094
    goto :goto_34

    :cond_98
    move-object v1, p2

    goto :goto_46
.end method

.method public EpdgInterfaceAdded(Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2076
    return-void
.end method

.method public EpdgInterfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V
    .registers 8
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .prologue
    .line 2016
    const-string v0, "[EPDGService]"

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

    .line 2018
    return-void
.end method

.method public EpdgInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 2028
    const-string v7, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interface "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " link "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_59

    const-string/jumbo v6, "up"

    :goto_1c
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v3

    .line 2030
    .local v3, "mobileIntfPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2031
    .local v0, "alphabeticSubString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2032
    .local v5, "numericSubString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2034
    .local v1, "cid":I
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mobileIntfPrefix is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_5d

    .line 2036
    const-string v6, "[EPDGService]"

    const-string v7, "Not Mobile Interface. Ignoring Interface State Change Event"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    :goto_58
    return-void

    .line 2028
    .end local v0    # "alphabeticSubString":Ljava/lang/String;
    .end local v1    # "cid":I
    .end local v3    # "mobileIntfPrefix":Ljava/lang/String;
    .end local v5    # "numericSubString":Ljava/lang/String;
    :cond_59
    const-string/jumbo v6, "down"

    goto :goto_1c

    .line 2040
    .restart local v0    # "alphabeticSubString":Ljava/lang/String;
    .restart local v1    # "cid":I
    .restart local v3    # "mobileIntfPrefix":Ljava/lang/String;
    .restart local v5    # "numericSubString":Ljava/lang/String;
    :cond_5d
    const/4 v6, 0x0

    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5e .. :try_end_65} :catch_cd

    move-result-object v0

    .line 2046
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alphabeticSubString is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2048
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "numericSubString is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :try_start_a3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_a6} :catch_d9

    move-result v1

    .line 2055
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    .line 2057
    const-string v6, "[EPDGService]"

    const-string v7, "Ignoring the interface change event as it is not related to bringing up/down the mobile interface."

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 2041
    :catch_cd
    move-exception v2

    .line 2042
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v6, "[EPDGService]"

    const-string v7, "Array indexes are out of bounds"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    invoke-virtual {v2}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_58

    .line 2051
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_d9
    move-exception v2

    .line 2052
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "[EPDGService]"

    const-string v7, "Error!!!, cid is not converted into number, returning"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    .line 2059
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_e3
    # getter for: Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3300()[Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 2061
    .local v4, "msgToHandoverSM":Landroid/os/Message;
    if-nez p2, :cond_107

    .line 2062
    const-string v6, "[EPDGService]"

    const-string v7, "Mobile Interface is down. Posting message to SM to disconnect the APN on ePDG."

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const/16 v6, 0xe

    iput v6, v4, Landroid/os/Message;->what:I

    .line 2069
    :goto_fe
    add-int/lit8 v6, v1, 0x1

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 2070
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_58

    .line 2066
    :cond_107
    const-string v6, "[EPDGService]"

    const-string v7, "Mobile Inteface is up"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    const/16 v6, 0x9

    iput v6, v4, Landroid/os/Message;->what:I

    goto :goto_fe
.end method

.method public EpdgInterfaceRemoved(Ljava/lang/String;)V
    .registers 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2080
    return-void
.end method

.method public EpdgInterfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 2022
    const-string v1, "[EPDGService]"

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

    .line 2024
    return-void

    .line 2022
    :cond_22
    const-string/jumbo v0, "down"

    goto :goto_16
.end method

.method public EpdgLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 2084
    return-void
.end method

.method public interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;

    .prologue
    .line 2118
    return-void
.end method

.method public interfaceMessageRecevied(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2132
    return-void
.end method

.method public routeRemoved(Landroid/net/RouteInfo;)V
    .registers 2
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 2126
    return-void
.end method

.method public routeUpdated(Landroid/net/RouteInfo;)V
    .registers 2
    .param p1, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 2122
    return-void
.end method
