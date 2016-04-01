.class Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;
.super Ljava/lang/Object;
.source "IptablesCommandBuilder.java"


# static fields
.field private static final APPEND:Ljava/lang/String; = "-A"

.field private static final CHAIN_ALLOW_INPUT:Ljava/lang/String; = "firewall_allow-input"

.field private static final CHAIN_ALLOW_OUTPUT:Ljava/lang/String; = "firewall_allow-output"

.field private static final CHAIN_DENY_INPUT:Ljava/lang/String; = "firewall_deny-input"

.field private static final CHAIN_DENY_OUTPUT:Ljava/lang/String; = "firewall_deny-output"

.field private static final CHAIN_NETWORK_APP:Ljava/lang/String; = "firewall_network_app-output"

.field private static final CHAIN_REDIRECT:Ljava/lang/String; = "firewall_redirect-output"

.field private static final CHAIN_REDIRECT_EXCEPTIONS:Ljava/lang/String; = "firewall_exceptions-output"

.field private static final CHAIN_TEST_IPV6:Ljava/lang/String; = "test_ipv6"

.field private static final DELETE:Ljava/lang/String; = "-D"

.field private static final IP6TABLES:Ljava/lang/String; = "/system/bin/ip6tables "

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables "

.field private static final TAG:Ljava/lang/String; = "FirewallCommandBuilder"

.field private static final TCP_PROTOCOL:Ljava/lang/String; = " -p tcp"

.field private static final UDP_PROTOCOL:Ljava/lang/String; = " -p udp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static convertNetworkInterfaceForIptables(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)Ljava/lang/String;
    .registers 2
    .param p0, "sNetworkInterface"    # Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    .prologue
    .line 595
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v0}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 596
    const-string/jumbo v0, "rmnet+"

    .line 600
    :goto_b
    return-object v0

    .line 597
    :cond_c
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v0}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 598
    const-string/jumbo v0, "wlan+"

    goto :goto_b

    .line 600
    :cond_18
    const-string v0, ""

    goto :goto_b
.end method

.method private static createAllowOrDenyCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Ljava/lang/String;
    .registers 23
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    .prologue
    .line 63
    sget-object v17, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_39c

    .line 64
    const-string/jumbo v3, "firewall_allow-input"

    .line 65
    .local v3, "chainInput":Ljava/lang/String;
    const-string/jumbo v4, "firewall_allow-output"

    .line 66
    .local v4, "chainOutput":Ljava/lang/String;
    const-string v5, " -j ACCEPT"

    .line 72
    .local v5, "command":Ljava/lang/String;
    :goto_14
    const/4 v11, 0x0

    .line 76
    .local v11, "listCommands":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "arrayCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 82
    .local v10, "isOutput":Z
    const/4 v8, 0x0

    .line 83
    .local v8, "isInput":Z
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v15, "strInput":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v16, "strOutput":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 93
    .local v9, "isIpv6":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Direction;->ALL:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Direction;->INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_83

    .line 95
    :cond_48
    const/4 v8, 0x1

    .line 96
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_3a6

    const-string v17, "/system/bin/ip6tables "

    :goto_52
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-t filter "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Direction;->ALL:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Direction;->OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d4

    .line 102
    :cond_9b
    const/4 v10, 0x1

    .line 103
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_3aa

    const-string v17, "/system/bin/ip6tables "

    :goto_a5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-t filter "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_d4
    const-string v17, "*"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_122

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3ae

    .line 109
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "-m iprange --src-range "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "-m iprange --dst-range  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_122
    :goto_122
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_170

    .line 124
    if-eqz v8, :cond_150

    .line 125
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " -i "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v18

    invoke-static/range {v18 .. v18}, convertNetworkInterfaceForIptables(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_150
    if-eqz v10, :cond_170

    .line 130
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " -o "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v18

    invoke-static/range {v18 .. v18}, convertNetworkInterfaceForIptables(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_170
    const-string v17, "*"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3e6

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->ALL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_194

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_254

    .line 144
    :cond_194
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1ac

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f4

    .line 146
    :cond_1ac
    if-eqz v8, :cond_1d0

    .line 147
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p tcp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --dport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1d0
    if-eqz v10, :cond_1f4

    .line 150
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p tcp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --sport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1f4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_20c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_254

    .line 155
    :cond_20c
    if-eqz v8, :cond_230

    .line 156
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p udp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --dport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_230
    if-eqz v10, :cond_254

    .line 159
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p udp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --sport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_254
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->ALL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_26c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32c

    .line 165
    :cond_26c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_284

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2cc

    .line 167
    :cond_284
    if-eqz v8, :cond_2a8

    .line 168
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p tcp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --sport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2a8
    if-eqz v10, :cond_2cc

    .line 171
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p tcp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --dport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_2cc
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2e4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32c

    .line 176
    :cond_2e4
    if-eqz v8, :cond_308

    .line 177
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p udp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --sport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_308
    if-eqz v10, :cond_32c

    .line 180
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p udp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " --dport "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_32c
    :goto_32c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    .line 215
    const/4 v6, 0x0

    .line 216
    .local v6, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_339
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_492

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 217
    .local v13, "s":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .local v14, "strBuilder":Ljava/lang/StringBuilder;
    const-string v17, "*"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_375

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v12

    .line 220
    .local v12, "portNumber":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_372

    .line 221
    const/16 v17, 0x2d

    const/16 v18, 0x3a

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 223
    :cond_372
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .end local v12    # "portNumber":Ljava/lang/String;
    :cond_375
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, getAppOrUserUid(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v11, v6

    .line 229
    add-int/lit8 v6, v6, 0x1

    .line 230
    goto :goto_339

    .line 68
    .end local v2    # "arrayCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "chainInput":Ljava/lang/String;
    .end local v4    # "chainOutput":Ljava/lang/String;
    .end local v5    # "command":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isInput":Z
    .end local v9    # "isIpv6":Z
    .end local v10    # "isOutput":Z
    .end local v11    # "listCommands":[Ljava/lang/String;
    .end local v13    # "s":Ljava/lang/String;
    .end local v14    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v15    # "strInput":Ljava/lang/StringBuilder;
    .end local v16    # "strOutput":Ljava/lang/StringBuilder;
    :cond_39c
    const-string/jumbo v3, "firewall_deny-input"

    .line 69
    .restart local v3    # "chainInput":Ljava/lang/String;
    const-string/jumbo v4, "firewall_deny-output"

    .line 70
    .restart local v4    # "chainOutput":Ljava/lang/String;
    const-string v5, " -j DROP"

    .restart local v5    # "command":Ljava/lang/String;
    goto/16 :goto_14

    .line 96
    .restart local v2    # "arrayCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "isInput":Z
    .restart local v9    # "isIpv6":Z
    .restart local v10    # "isOutput":Z
    .restart local v11    # "listCommands":[Ljava/lang/String;
    .restart local v15    # "strInput":Ljava/lang/StringBuilder;
    .restart local v16    # "strOutput":Ljava/lang/StringBuilder;
    :cond_3a6
    const-string v17, "/system/bin/iptables "

    goto/16 :goto_52

    .line 103
    :cond_3aa
    const-string v17, "/system/bin/iptables "

    goto/16 :goto_a5

    .line 112
    :cond_3ae
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "-s "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "-d "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_122

    .line 188
    :cond_3e6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_430

    .line 189
    if-eqz v8, :cond_410

    .line 190
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p tcp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_410
    if-eqz v10, :cond_32c

    .line 193
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p tcp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32c

    .line 195
    :cond_430
    invoke-virtual/range {p0 .. p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v17

    sget-object v18, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual/range {v17 .. v18}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_47a

    .line 196
    if-eqz v8, :cond_45a

    .line 197
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p udp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_45a
    if-eqz v10, :cond_32c

    .line 200
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -p udp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32c

    .line 203
    :cond_47a
    if-eqz v8, :cond_485

    .line 204
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_485
    if-eqz v10, :cond_32c

    .line 207
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32c

    .line 231
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_492
    return-object v11
.end method

.method private static createRedirectCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "arrayCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "*"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b9

    .line 339
    const-string v5, ""

    .line 352
    .local v5, "sourceIpAddress":Ljava/lang/String;
    :goto_13
    const-string v7, "*"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f7

    .line 353
    const-string v6, ""

    .line 364
    .local v6, "sourcePortNumber":Ljava/lang/String;
    :goto_21
    const-string v3, ""

    .line 365
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v8

    invoke-static {v8}, convertNetworkInterfaceForIptables(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    :cond_4a
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_62

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 375
    :cond_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -t nat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "firewall_redirect-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -p tcp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, getAppOrUserUid(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -j DNAT --to-destination "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_226

    .line 381
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/ip6tables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v1    # "command":Ljava/lang/String;
    :cond_fb
    :goto_fb
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_113

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ac

    .line 392
    :cond_113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -t nat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "firewall_redirect-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -p udp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, getAppOrUserUid(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -j DNAT --to-destination "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    .restart local v1    # "command":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_261

    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/ip6tables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v1    # "command":Ljava/lang/String;
    :cond_1ac
    :goto_1ac
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    .line 409
    .local v2, "commandsVector":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "commandsVector":[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 410
    .restart local v2    # "commandsVector":[Ljava/lang/String;
    return-object v2

    .line 341
    .end local v2    # "commandsVector":[Ljava/lang/String;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v5    # "sourceIpAddress":Ljava/lang/String;
    .end local v6    # "sourcePortNumber":Ljava/lang/String;
    :cond_1b9
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1de

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-m iprange --dst-range "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "sourceIpAddress":Ljava/lang/String;
    goto/16 :goto_13

    .line 345
    .end local v5    # "sourceIpAddress":Ljava/lang/String;
    :cond_1de
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-d "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "sourceIpAddress":Ljava/lang/String;
    goto/16 :goto_13

    .line 355
    :cond_1f7
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "portNumber":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_20b

    .line 357
    const/16 v7, 0x2d

    const/16 v8, 0x3a

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 359
    :cond_20b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " --dport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "sourcePortNumber":Ljava/lang/String;
    goto/16 :goto_21

    .line 384
    .end local v4    # "portNumber":Ljava/lang/String;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    :cond_226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/iptables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_fb

    .line 401
    :cond_261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/iptables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ac
.end method

.method private static createRedirectExceptionCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "arrayCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "*"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_167

    .line 252
    const-string v5, ""

    .line 264
    .local v5, "sIpAddress":Ljava/lang/String;
    :goto_13
    const-string v7, "*"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a5

    .line 265
    const-string v6, ""

    .line 277
    .local v6, "sPortNumber":Ljava/lang/String;
    :goto_21
    const-string v3, ""

    .line 278
    .local v3, "interfaceName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -o "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v8

    invoke-static {v8}, convertNetworkInterfaceForIptables(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_4a
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_62

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 288
    :cond_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -t nat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "firewall_exceptions-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -p tcp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, getAppOrUserUid(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -j ACCEPT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ce

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/ip6tables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v1    # "command":Ljava/lang/String;
    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ea

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15a

    .line 303
    :cond_ea
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -t nat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "firewall_exceptions-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -p udp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, getAppOrUserUid(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -j ACCEPT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "command":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    sget-object v8, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v7, v8}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e6

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/ip6tables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v1    # "command":Ljava/lang/String;
    :cond_15a
    :goto_15a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    .line 317
    .local v2, "commandsVector":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "commandsVector":[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 318
    .restart local v2    # "commandsVector":[Ljava/lang/String;
    return-object v2

    .line 254
    .end local v2    # "commandsVector":[Ljava/lang/String;
    .end local v3    # "interfaceName":Ljava/lang/String;
    .end local v5    # "sIpAddress":Ljava/lang/String;
    .end local v6    # "sPortNumber":Ljava/lang/String;
    :cond_167
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_18c

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-m iprange --dst-range "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "sIpAddress":Ljava/lang/String;
    goto/16 :goto_13

    .line 257
    .end local v5    # "sIpAddress":Ljava/lang/String;
    :cond_18c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-d "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "sIpAddress":Ljava/lang/String;
    goto/16 :goto_13

    .line 267
    :cond_1a5
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "portNumber":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b9

    .line 269
    const/16 v7, 0x2d

    const/16 v8, 0x3a

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 271
    :cond_1b9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " --dport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "sPortNumber":Ljava/lang/String;
    goto/16 :goto_21

    .line 295
    .end local v4    # "portNumber":Ljava/lang/String;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v3    # "interfaceName":Ljava/lang/String;
    :cond_1ce
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/iptables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d2

    .line 310
    :cond_1e6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/bin/iptables "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15a
.end method

.method private static getAppOrUserUid(Ljava/lang/String;Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 14
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 422
    const-string v4, " -m owner --uid-owner "

    .line 423
    .local v4, "owner":Ljava/lang/String;
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 424
    .local v8, "userId":I
    const-string v9, "*"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 426
    if-nez v8, :cond_33

    .line 427
    const/16 v3, 0x3e9

    .line 428
    .local v3, "lowerRange":I
    const v5, 0x1869f

    .line 433
    .local v5, "upperRange":I
    :goto_17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    .end local v3    # "lowerRange":I
    .end local v5    # "upperRange":I
    :cond_32
    :goto_32
    return-object v4

    .line 430
    :cond_33
    const v9, 0x186a0

    mul-int v3, v8, v9

    .line 431
    .restart local v3    # "lowerRange":I
    const v9, 0x1869f

    add-int v5, v3, v9

    .restart local v5    # "upperRange":I
    goto :goto_17

    .line 435
    .end local v3    # "lowerRange":I
    .end local v5    # "upperRange":I
    :cond_3e
    const-string/jumbo v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 437
    .local v2, "iPackageManager":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 438
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 440
    .local v6, "token":J
    const/4 v9, 0x0

    :try_start_4f
    invoke-interface {v2, p0, v9, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_6c
    .catchall {:try_start_4f .. :try_end_52} :catchall_8d

    move-result-object v0

    .line 444
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    :goto_56
    if-eqz v0, :cond_32

    .line 447
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_32

    .line 441
    :catch_6c
    move-exception v1

    .line 442
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6d
    const-string v9, "FirewallCommandBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remote Exception on get getApplicationInfo"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_8d

    .line 444
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_8d
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method static getCreateChainsCommands()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "commandsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "/system/bin/iptables -N firewall_allow-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v2, "/system/bin/iptables -N firewall_allow-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    const-string v2, "/system/bin/iptables -N firewall_deny-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const-string v2, "/system/bin/iptables -N firewall_deny-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    const-string v2, "/system/bin/iptables -t nat -N firewall_exceptions-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v2, "/system/bin/iptables -t nat -N firewall_redirect-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v2, "/system/bin/iptables -t filter -N firewall_network_app-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v2, "/system/bin/iptables  -A INPUT -j firewall_allow-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v2, "/system/bin/iptables  -A OUTPUT -j firewall_allow-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const-string v2, "/system/bin/iptables  -A INPUT -j firewall_deny-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v2, "/system/bin/iptables  -A OUTPUT -j firewall_deny-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const-string v2, "/system/bin/iptables  -t nat -A OUTPUT -j firewall_exceptions-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v2, "/system/bin/iptables  -t nat -A OUTPUT -j firewall_redirect-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const-string v2, "/system/bin/iptables  -t filter -A OUTPUT -j firewall_network_app-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    sget-boolean v2, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    if-eqz v2, :cond_81

    .line 484
    const-string v2, "/system/bin/ip6tables -N firewall_allow-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v2, "/system/bin/ip6tables -N firewall_allow-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    const-string v2, "/system/bin/ip6tables -N firewall_deny-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v2, "/system/bin/ip6tables -N firewall_deny-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v2, "/system/bin/ip6tables -t filter -N firewall_network_app-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v2, "/system/bin/ip6tables  -A INPUT -j firewall_allow-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v2, "/system/bin/ip6tables  -A OUTPUT -j firewall_allow-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v2, "/system/bin/ip6tables  -A INPUT -j firewall_deny-input"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v2, "/system/bin/ip6tables  -A OUTPUT -j firewall_deny-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v2, "/system/bin/ip6tables  -t filter -A OUTPUT -j firewall_network_app-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_81
    sget-boolean v2, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    if-eqz v2, :cond_99

    .line 502
    const-string v2, "/system/bin/ip6tables -t nat -N firewall_exceptions-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v2, "/system/bin/ip6tables -t nat -N firewall_redirect-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    const-string v2, "/system/bin/ip6tables  -t nat -A OUTPUT -j firewall_exceptions-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v2, "/system/bin/ip6tables  -t nat -A OUTPUT -j firewall_redirect-output"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 509
    .local v1, "commandsVector":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "commandsVector":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 510
    .restart local v1    # "commandsVector":[Ljava/lang/String;
    return-object v1
.end method

.method static getIptablesCommand(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 6
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v1

    .line 523
    .local v1, "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    const/4 v0, 0x0

    .line 524
    .local v0, "listCommands":[Ljava/lang/String;
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 525
    const-string v2, "-A"

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-static {p0, p1, v2, v3}, createAllowOrDenyCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Ljava/lang/String;

    move-result-object v0

    :goto_15
    move-object v2, v0

    .line 537
    :goto_16
    return-object v2

    .line 526
    :cond_17
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 527
    const-string v2, "-A"

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-static {p0, p1, v2, v3}, createAllowOrDenyCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 528
    :cond_28
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 529
    const-string v2, "-A"

    invoke-static {p0, p1, v2}, createRedirectCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 530
    :cond_37
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 531
    const-string v2, "-A"

    invoke-static {p0, p1, v2}, createRedirectExceptionCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 534
    :cond_46
    const/4 v2, 0x0

    goto :goto_16
.end method

.method static getListIptablesCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "isIpv6"    # Z

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1e

    .line 577
    const-string v1, "/system/bin/ip6tables "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :goto_c
    const-string v1, " -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v1, " -L -n --line-numbers -v "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 579
    :cond_1e
    const-string v1, "/system/bin/iptables "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c
.end method

.method static getRemoveIptablesCommand(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 6
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v1

    .line 550
    .local v1, "type":Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    const/4 v0, 0x0

    .line 551
    .local v0, "listCommands":[Ljava/lang/String;
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 552
    const-string v2, "-D"

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-static {p0, p1, v2, v3}, createAllowOrDenyCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Ljava/lang/String;

    move-result-object v0

    :goto_15
    move-object v2, v0

    .line 564
    :goto_16
    return-object v2

    .line 553
    :cond_17
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 554
    const-string v2, "-D"

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-static {p0, p1, v2, v3}, createAllowOrDenyCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 555
    :cond_28
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 556
    const-string v2, "-D"

    invoke-static {p0, p1, v2}, createRedirectCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 557
    :cond_37
    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v1, v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 558
    const-string v2, "-D"

    invoke-static {p0, p1, v2}, createRedirectExceptionCommands(Lcom/sec/enterprise/firewall/FirewallRule;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 561
    :cond_46
    const/4 v2, 0x0

    goto :goto_16
.end method

.method static getTestIpv6Commands(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "chain"    # Ljava/lang/String;

    .prologue
    .line 603
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 604
    .local v0, "commandsVector":[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/ip6tables -t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -N "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "test_ipv6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 605
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/ip6tables -t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -X "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "test_ipv6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 606
    return-object v0
.end method
