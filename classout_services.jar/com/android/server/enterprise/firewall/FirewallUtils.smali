.class Lcom/android/server/enterprise/firewall/FirewallUtils;
.super Ljava/lang/Object;
.source "FirewallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallUtils$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FirewallUtils"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method static convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;
    .registers 2
    .param p0, "sAddressType"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    .line 124
    :goto_e
    return-object v0

    .line 121
    :cond_f
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 122
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV6:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    goto :goto_e

    .line 124
    :cond_1e
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$AddressType;->IPV4:Lcom/sec/enterprise/firewall/Firewall$AddressType;

    goto :goto_e
.end method

.method static convertDirection(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Direction;
    .registers 2
    .param p0, "sDirection"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->INPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    .line 47
    :goto_e
    return-object v0

    .line 44
    :cond_f
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 45
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->OUTPUT:Lcom/sec/enterprise/firewall/Firewall$Direction;

    goto :goto_e

    .line 47
    :cond_1e
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Direction;->ALL:Lcom/sec/enterprise/firewall/Firewall$Direction;

    goto :goto_e
.end method

.method static convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;
    .registers 2
    .param p0, "sNetworkInterface"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 59
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    .line 63
    :goto_e
    return-object v0

    .line 60
    :cond_f
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 61
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    goto :goto_e

    .line 63
    :cond_1e
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    goto :goto_e
.end method

.method static convertPortLocation(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$PortLocation;
    .registers 2
    .param p0, "sPortLocation"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 75
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->LOCAL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    .line 79
    :goto_e
    return-object v0

    .line 76
    :cond_f
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 77
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->REMOTE:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    goto :goto_e

    .line 79
    :cond_1e
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->ALL:Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    goto :goto_e
.end method

.method static convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;
    .registers 2
    .param p0, "sProtocol"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 90
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->TCP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    .line 94
    :goto_e
    return-object v0

    .line 91
    :cond_f
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 92
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->UDP:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    goto :goto_e

    .line 94
    :cond_1e
    sget-object v0, Lcom/sec/enterprise/firewall/Firewall$Protocol;->ALL:Lcom/sec/enterprise/firewall/Firewall$Protocol;

    goto :goto_e
.end method

.method static convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;
    .registers 2
    .param p0, "sStatus"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 105
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    .line 109
    :goto_e
    return-object v0

    .line 106
    :cond_f
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v0}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 107
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->PENDING:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    goto :goto_e

    .line 109
    :cond_1e
    sget-object v0, Lcom/sec/enterprise/firewall/FirewallRule$Status;->DISABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    goto :goto_e
.end method

.method static filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "userId"    # I
    .param p1, "rules"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v9, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_c

    .line 390
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 431
    :goto_b
    return-object v12

    .line 391
    :cond_c
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v12, "\n"

    invoke-direct {v10, p1, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .local v10, "stringTokenizer":Ljava/util/StringTokenizer;
    const-string/jumbo v7, "owner UID match"

    .line 393
    .local v7, "ownerKey":Ljava/lang/String;
    :cond_16
    :goto_16
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_af

    .line 394
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "currentLine":Ljava/lang/String;
    const-string/jumbo v12, "owner UID match"

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 396
    .local v6, "ownerIdIndex":I
    const/4 v11, 0x0

    .line 397
    .local v11, "uidMatched":Z
    const/4 v12, -0x1

    if-ne v6, v12, :cond_37

    .line 398
    const/4 v11, 0x1

    .line 426
    :cond_2c
    :goto_2c
    if-eqz v11, :cond_16

    .line 427
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 400
    :cond_37
    const-string/jumbo v12, "owner UID match"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "ownerId":Ljava/lang/String;
    :try_start_47
    const-string v12, "-"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9b

    .line 403
    const-string v12, "-"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "range":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 405
    .local v0, "begin":I
    move v4, v0

    .line 406
    .local v4, "end":I
    const/4 v12, 0x1

    aget-object v12, v8, v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 407
    .local v2, "delimIndex":I
    const/4 v12, -0x1

    if-gt v2, v12, :cond_86

    .line 409
    const/4 v12, 0x1

    aget-object v12, v8, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 415
    :goto_80
    if-lt p0, v0, :cond_2c

    if-gt p0, v4, :cond_2c

    .line 416
    const/4 v11, 0x1

    goto :goto_2c

    .line 412
    :cond_86
    const/4 v12, 0x1

    aget-object v12, v8, v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_80

    .line 418
    .end local v0    # "begin":I
    .end local v2    # "delimIndex":I
    .end local v4    # "end":I
    .end local v8    # "range":[Ljava/lang/String;
    :cond_9b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_a6} :catch_ab

    move-result v12

    if-ne p0, v12, :cond_2c

    .line 419
    const/4 v11, 0x1

    goto :goto_2c

    .line 421
    :catch_ab
    move-exception v3

    .line 422
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v11, 0x1

    goto/16 :goto_2c

    .line 431
    .end local v1    # "currentLine":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "ownerId":Ljava/lang/String;
    .end local v6    # "ownerIdIndex":I
    .end local v11    # "uidMatched":Z
    :cond_af
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_b
.end method

.method static getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;
    .registers 5
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "uid"    # I

    .prologue
    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v0, "cv":Landroid/content/ContentValues;
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_20

    .line 137
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string/jumbo v1, "status"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getStatus()Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_20
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$sec$enterprise$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getRuleType()Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_240

    .line 199
    :goto_2f
    return-object v0

    .line 143
    :pswitch_30
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "portLocation"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_84

    .line 149
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_84
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "direction"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 157
    :pswitch_bd
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "portLocation"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortLocation()Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_111

    .line 163
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_111
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "direction"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getDirection()Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 171
    :pswitch_14a
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_190

    .line 176
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_190
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "targetIpAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "targetPortNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 185
    :pswitch_1cf
    const-string/jumbo v1, "ruleType"

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "ipAddress"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "portNumber"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "packageName"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_215

    .line 190
    const-string/jumbo v1, "signature"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_215
    const-string/jumbo v1, "networkInterface"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getNetworkInterface()Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "protocol"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getProtocol()Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "addressType"

    invoke-virtual {p0}, Lcom/sec/enterprise/firewall/FirewallRule;->getAddressType()Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2f

    .line 140
    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_30
        :pswitch_bd
        :pswitch_14a
        :pswitch_1cf
    .end packed-switch
.end method

.method static getRuleFromContentValues(Ljava/util/List;Lcom/sec/enterprise/firewall/FirewallRule$RuleType;)[Lcom/sec/enterprise/firewall/FirewallRule;
    .registers 10
    .param p1, "type"    # Lcom/sec/enterprise/firewall/FirewallRule$RuleType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/sec/enterprise/firewall/FirewallRule$RuleType;",
            ")[",
            "Lcom/sec/enterprise/firewall/FirewallRule;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "valuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [Lcom/sec/enterprise/firewall/FirewallRule;

    .line 206
    .local v4, "returnRules":[Lcom/sec/enterprise/firewall/FirewallRule;
    const/4 v1, 0x0

    .line 207
    .local v1, "counter":I
    sget-object v6, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$sec$enterprise$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p1}, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_284

    .line 308
    :cond_12
    return-object v4

    .line 210
    :pswitch_13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 211
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->ALLOW:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 214
    .local v5, "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 215
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v6, "portLocation"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertPortLocation(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortLocation(Lcom/sec/enterprise/firewall/Firewall$PortLocation;)V

    .line 218
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v0, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 222
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 224
    const-string/jumbo v6, "direction"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertDirection(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setDirection(Lcom/sec/enterprise/firewall/Firewall$Direction;)V

    .line 226
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 228
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 230
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 231
    aput-object v5, v4, v1

    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    goto/16 :goto_17

    .line 236
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :pswitch_b8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_bc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 237
    .restart local v2    # "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->DENY:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 240
    .restart local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 242
    const-string/jumbo v6, "portLocation"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertPortLocation(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$PortLocation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortLocation(Lcom/sec/enterprise/firewall/Firewall$PortLocation;)V

    .line 244
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .restart local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 248
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 250
    const-string/jumbo v6, "direction"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertDirection(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Direction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setDirection(Lcom/sec/enterprise/firewall/Firewall$Direction;)V

    .line 252
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 254
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 256
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 257
    aput-object v5, v4, v1

    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    goto/16 :goto_bc

    .line 262
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :pswitch_15d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_161
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 263
    .restart local v2    # "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 266
    .restart local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v6, "targetIpAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v6, "targetPortNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .restart local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 274
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 276
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 278
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 280
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 281
    aput-object v5, v4, v1

    .line 282
    add-int/lit8 v1, v1, 0x1

    .line 283
    goto/16 :goto_161

    .line 286
    .end local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    :pswitch_1fa
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 287
    .restart local v2    # "cv":Landroid/content/ContentValues;
    new-instance v5, Lcom/sec/enterprise/firewall/FirewallRule;

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/sec/enterprise/firewall/FirewallRule$RuleType;

    const-string v7, "addressType"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, convertAddressType(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$AddressType;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/enterprise/firewall/FirewallRule;-><init>(Lcom/sec/enterprise/firewall/FirewallRule$RuleType;Lcom/sec/enterprise/firewall/Firewall$AddressType;)V

    .line 290
    .restart local v5    # "rule":Lcom/sec/enterprise/firewall/FirewallRule;
    const-string/jumbo v6, "ipAddress"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v6, "portNumber"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/sec/enterprise/AppIdentity;

    const-string/jumbo v6, "packageName"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .restart local v0    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    invoke-virtual {v5, v0}, Lcom/sec/enterprise/firewall/FirewallRule;->setApplication(Lcom/sec/enterprise/AppIdentity;)V

    .line 296
    const-string/jumbo v6, "networkInterface"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertNetworkInterface(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setNetworkInterface(Lcom/sec/enterprise/firewall/Firewall$NetworkInterface;)V

    .line 298
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertProtocol(Ljava/lang/String;)Lcom/sec/enterprise/firewall/Firewall$Protocol;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setProtocol(Lcom/sec/enterprise/firewall/Firewall$Protocol;)V

    .line 300
    const-string/jumbo v6, "status"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, convertStatus(Ljava/lang/String;)Lcom/sec/enterprise/firewall/FirewallRule$Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setStatus(Lcom/sec/enterprise/firewall/FirewallRule$Status;)V

    .line 302
    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/enterprise/firewall/FirewallRule;->setId(I)V

    .line 303
    aput-object v5, v4, v1

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 305
    goto/16 :goto_1fe

    .line 207
    nop

    :pswitch_data_284
    .packed-switch 0x1
        :pswitch_13
        :pswitch_b8
        :pswitch_15d
        :pswitch_1fa
    .end packed-switch
.end method

.method static isRuleEnabled(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z
    .registers 11
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 319
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 321
    .local v3, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v6, "status"

    aput-object v6, v0, v4

    .line 325
    .local v0, "columnSelection":[Ljava/lang/String;
    invoke-static {p0, p1}, getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 327
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "status"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 329
    const-string v6, "FirewallRule"

    invoke-virtual {v3, v6, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 331
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_27

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 341
    :cond_26
    :goto_26
    return v4

    .line 335
    :cond_27
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "status"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "dbRet":Ljava/lang/String;
    const/4 v4, 0x0

    .line 338
    .local v4, "ret":Z
    if-eqz v2, :cond_26

    sget-object v6, Lcom/sec/enterprise/firewall/FirewallRule$Status;->ENABLED:Lcom/sec/enterprise/firewall/FirewallRule$Status;

    invoke-virtual {v6}, Lcom/sec/enterprise/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 339
    const/4 v4, 0x1

    goto :goto_26
.end method

.method static isRuleInDb(Lcom/sec/enterprise/firewall/FirewallRule;ILandroid/content/Context;)Z
    .registers 7
    .param p0, "rule"    # Lcom/sec/enterprise/firewall/FirewallRule;
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, "mEdmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {p0, p1}, getContentValuesFromRule(Lcom/sec/enterprise/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 354
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 355
    const-string v2, "FirewallRule"

    sget-object v3, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 357
    const/4 v2, 0x1

    .line 359
    :goto_1e
    return v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public static validateDomain(Ljava/lang/String;)Z
    .registers 16
    .param p0, "domainUrl"    # Ljava/lang/String;

    .prologue
    .line 440
    move-object v2, p0

    .line 444
    .local v2, "domain":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 445
    const/4 v13, 0x0

    .line 553
    :goto_8
    return v13

    .line 449
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 451
    const-string/jumbo v13, "http:"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1f

    const-string/jumbo v13, "https:"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 452
    :cond_1f
    const/4 v13, 0x0

    goto :goto_8

    .line 458
    :cond_21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xff

    if-le v13, v14, :cond_2b

    .line 459
    const/4 v13, 0x0

    goto :goto_8

    .line 462
    :cond_2b
    const-string v13, "*"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 463
    const/4 v13, 0x1

    goto :goto_8

    .line 466
    :cond_35
    const/4 v12, 0x0

    .local v12, "startsWithWildcard":Z
    const/4 v3, 0x0

    .line 467
    .local v3, "endsWithWildcard":Z
    const-string v13, "*"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4d

    .line 470
    const-string v13, "*."

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_99

    .line 471
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 475
    :goto_4c
    const/4 v12, 0x1

    .line 478
    :cond_4d
    const-string v13, "*"

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_69

    .line 481
    const-string v13, ".*"

    invoke-virtual {v2, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9f

    .line 482
    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 486
    :goto_68
    const/4 v3, 0x1

    .line 492
    :cond_69
    const-string v13, "\\."

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 497
    .local v8, "labels":[Ljava/lang/String;
    if-nez v12, :cond_ae

    .line 502
    const/4 v6, 0x0

    .line 503
    .local v6, "isDomainCandidate":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_73
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_94

    .line 504
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 505
    .local v1, "ch":C
    const/16 v13, 0x61

    if-lt v1, v13, :cond_8b

    const/16 v13, 0x7a

    if-le v1, v13, :cond_93

    :cond_8b
    const/16 v13, 0x41

    if-lt v1, v13, :cond_ab

    const/16 v13, 0x5a

    if-gt v1, v13, :cond_ab

    .line 506
    :cond_93
    const/4 v6, 0x1

    .line 514
    .end local v1    # "ch":C
    :cond_94
    if-nez v6, :cond_ae

    .line 515
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 473
    .end local v4    # "i":I
    .end local v6    # "isDomainCandidate":Z
    .end local v8    # "labels":[Ljava/lang/String;
    :cond_99
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    .line 484
    :cond_9f
    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_68

    .line 503
    .restart local v1    # "ch":C
    .restart local v4    # "i":I
    .restart local v6    # "isDomainCandidate":Z
    .restart local v8    # "labels":[Ljava/lang/String;
    :cond_ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 519
    .end local v1    # "ch":C
    .end local v4    # "i":I
    .end local v6    # "isDomainCandidate":Z
    :cond_ae
    const/4 v10, 0x0

    .line 520
    .local v10, "numDots":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_b0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_c3

    .line 521
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_c0

    .line 522
    add-int/lit8 v10, v10, 0x1

    .line 520
    :cond_c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_b0

    .line 528
    :cond_c3
    array-length v13, v8

    if-lt v10, v13, :cond_c9

    .line 529
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 534
    :cond_c9
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_cc
    if-ge v5, v9, :cond_de

    aget-object v7, v0, v5

    .line 535
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x3f

    if-le v13, v14, :cond_db

    .line 536
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 534
    :cond_db
    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    .line 546
    .end local v7    # "label":Ljava/lang/String;
    :cond_de
    const-string v11, "^[A-Za-z0-9-]+$"

    .line 547
    .local v11, "regex":Ljava/lang/String;
    move-object v0, v8

    array-length v9, v0

    const/4 v5, 0x0

    :goto_e3
    if-ge v5, v9, :cond_10e

    aget-object v7, v0, v5

    .line 548
    .restart local v7    # "label":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_108

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_f8

    if-eqz v12, :cond_108

    :cond_f8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_10b

    if-nez v3, :cond_10b

    .line 550
    :cond_108
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 547
    :cond_10b
    add-int/lit8 v5, v5, 0x1

    goto :goto_e3

    .line 553
    .end local v7    # "label":Ljava/lang/String;
    :cond_10e
    const/4 v13, 0x1

    goto/16 :goto_8
.end method

.method static verifyPackageName(Ljava/lang/String;I)Z
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 369
    const-string v7, "*"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 384
    :cond_a
    :goto_a
    return v3

    .line 372
    :cond_b
    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 374
    .local v2, "iPackageManager":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 375
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 377
    .local v4, "token":J
    const/4 v7, 0x0

    :try_start_1c
    invoke-interface {v2, p0, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_27
    .catchall {:try_start_1c .. :try_end_1f} :catchall_49

    move-result-object v0

    .line 382
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    if-nez v0, :cond_a

    move v3, v6

    goto :goto_a

    .line 378
    :catch_27
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_28
    const-string v3, "FirewallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote Exception on get getApplicationInfo"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_49

    .line 382
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    goto :goto_a

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_49
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
