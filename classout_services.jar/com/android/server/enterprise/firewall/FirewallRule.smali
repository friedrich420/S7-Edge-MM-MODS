.class public Lcom/android/server/enterprise/firewall/FirewallRule;
.super Ljava/lang/Object;
.source "FirewallRule.java"


# static fields
.field public static final APPEND:I = 0x1

.field public static final BOTH_DIRECTION:Ljava/lang/String; = "both"

.field public static final BOTH_INTERFACES:Ljava/lang/String; = "both"

.field public static final BOTH_PORT_LOCATION:Ljava/lang/String; = "both"

.field public static final BOTH_PROTOCOL:Ljava/lang/String; = "both"

.field public static final DATA_INTERFACE:Ljava/lang/String; = "data"

.field public static final DELETE:I = 0x2

.field public static final FILTER_TABLE:Ljava/lang/String; = "filter"

.field public static final INSERT:I = 0x3

.field public static final IN_DIRECTION:Ljava/lang/String; = "in"

.field public static final LOCAL_PORT_LOCATION:Ljava/lang/String; = "local"

.field public static final MANGLE_TABLE:Ljava/lang/String; = "mangle"

.field public static final NAT_TABLE:Ljava/lang/String; = "nat"

.field public static final NO_TYPE_SET:I = -0x1

.field public static final NO_UID_SET:I = -0x1

.field public static final OUT_DIRECTION:Ljava/lang/String; = "out"

.field public static final RAW_TABLE:Ljava/lang/String; = "raw"

.field public static final REMOTE_PORT_LOCATION:Ljava/lang/String; = "remote"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final TCP_PROTOCOL:Ljava/lang/String; = "tcp"

.field public static final UDP_PROTOCOL:Ljava/lang/String; = "udp"

.field public static final WIFI_INTERFACE:Ljava/lang/String; = "wifi"


# instance fields
.field private mChain:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mIprange:Ljava/lang/String;

.field private mNetworkInterface:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPortLocation:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

.field private mRuleType:I

.field private mTable:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v1, p0, mRuleType:I

    .line 68
    iput v1, p0, mUid:I

    .line 72
    const-string v0, ""

    invoke-virtual {p0, v0}, setDirection(Ljava/lang/String;)Z

    .line 73
    const-string v0, ""

    invoke-virtual {p0, v0}, setHostnameOrIp(Ljava/lang/String;)Z

    .line 74
    const-string v0, ""

    invoke-virtual {p0, v0}, setPort(Ljava/lang/String;)Z

    .line 75
    const-string v0, ""

    invoke-virtual {p0, v0}, setProtocol(Ljava/lang/String;)Z

    .line 76
    const-string v0, ""

    invoke-virtual {p0, v0}, setPortLocation(Ljava/lang/String;)Z

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, setNetworkInterface(Ljava/lang/String;)Z

    .line 78
    invoke-virtual {p0, v1}, setRuleType(I)Z

    .line 79
    invoke-virtual {p0, v1}, setUid(I)Z

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V
    .registers 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "direction"    # Ljava/lang/String;
    .param p4, "ipRange"    # Ljava/lang/String;
    .param p5, "port"    # Ljava/lang/String;
    .param p6, "protocol"    # Ljava/lang/String;
    .param p7, "portLocation"    # Ljava/lang/String;
    .param p8, "networkInterface"    # Ljava/lang/String;
    .param p9, "type"    # I
    .param p10, "uid"    # I
    .param p11, "ruleAction"    # Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, mRuleType:I

    .line 68
    iput v0, p0, mUid:I

    .line 86
    invoke-virtual {p0, p1}, setTable(Ljava/lang/String;)Z

    .line 87
    invoke-virtual {p0, p2}, setChain(Ljava/lang/String;)Z

    .line 88
    invoke-virtual {p0, p3}, setDirection(Ljava/lang/String;)Z

    .line 89
    invoke-virtual {p0, p4}, setHostnameOrIp(Ljava/lang/String;)Z

    .line 90
    invoke-virtual {p0, p5}, setPort(Ljava/lang/String;)Z

    .line 91
    invoke-virtual {p0, p6}, setProtocol(Ljava/lang/String;)Z

    .line 92
    invoke-virtual {p0, p7}, setPortLocation(Ljava/lang/String;)Z

    .line 93
    invoke-virtual {p0, p8}, setNetworkInterface(Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0, p9}, setRuleType(I)Z

    .line 95
    invoke-virtual {p0, p10}, setUid(I)Z

    .line 96
    invoke-virtual {p0, p11}, setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    .line 97
    return-void
.end method


# virtual methods
.method public getChain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, mChain:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameOrIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, mIprange:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, mNetworkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPortLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, mPortLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    return-object v0
.end method

.method public getRuleType()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, mRuleType:I

    return v0
.end method

.method public getTable()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, mTable:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, mUid:I

    return v0
.end method

.method public setChain(Ljava/lang/String;)Z
    .registers 3
    .param p1, "chain"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, mChain:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public setDirection(Ljava/lang/String;)Z
    .registers 3
    .param p1, "direction"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 125
    :cond_1a
    iput-object p1, p0, mDirection:Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setHostnameOrIp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "hostnameOrIp"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, mIprange:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public setNetworkInterface(Ljava/lang/String;)Z
    .registers 3
    .param p1, "networkInterface"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 177
    :cond_1a
    iput-object p1, p0, mNetworkInterface:Ljava/lang/String;

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setPort(Ljava/lang/String;)Z
    .registers 3
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, mPort:Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public setPortLocation(Ljava/lang/String;)Z
    .registers 3
    .param p1, "portLocation"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "remote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "local"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 236
    :cond_1a
    iput-object p1, p0, mPortLocation:Ljava/lang/String;

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setProtocol(Ljava/lang/String;)Z
    .registers 4
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string v0, "both"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "tcp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "udp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 221
    :cond_1a
    iput-object p1, p0, mProtocol:Ljava/lang/String;

    .line 222
    const-string v0, "FirewallPolicy"

    const-string/jumbo v1, "setProtocol before true"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x1

    .line 226
    :goto_25
    return v0

    .line 225
    :cond_26
    const-string v0, "FirewallPolicy"

    const-string/jumbo v1, "setProtocol before false"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z
    .registers 3
    .param p1, "ruleAction"    # Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    .prologue
    .line 188
    iput-object p1, p0, mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public setRuleType(I)Z
    .registers 4
    .param p1, "ruleType"    # I

    .prologue
    const/4 v0, 0x1

    .line 197
    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    .line 198
    :cond_9
    iput p1, p0, mRuleType:I

    .line 201
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setTable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v0, "filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "nat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "mangle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 112
    :cond_24
    iput-object p1, p0, mTable:Ljava/lang/String;

    .line 113
    const/4 v0, 0x1

    .line 115
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public setUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 211
    iput p1, p0, mUid:I

    .line 212
    const/4 v0, 0x1

    return v0
.end method
