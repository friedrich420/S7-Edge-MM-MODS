.class public final Lcom/sec/epdg/EpdgUtils;
.super Ljava/lang/Object;
.source "EpdgUtils.java"


# static fields
.field private static final CDMA_TYPE:I = 0x0

.field private static final CONNECTIVITY_MGR_INSTANCE_NULL:I = -0x2

.field private static final LTE_TYPE:I = 0x1

.field private static final NUMBER_PARSING_EXCEPTION:I = -0x3

.field public static final ROAMING_CS_PREF:I = 0x0

.field public static final ROAMING_WLAN_PREF:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[UTILS]"

.field private static final VOICECALL_ROAMING_PREF:Ljava/lang/String; = "vzw_roaming_pref"

.field private static final VOWIFI_CALLING:Ljava/lang/String; = "vzw_vowifi_calling"

.field private static final WRONG_PROFILE_ID:I = -0x1

.field private static final isShipBinary:Z

.field private static final isUserBinary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_16
    const/4 v0, 0x1

    :goto_17
    sput-boolean v0, isUserBinary:Z

    .line 59
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, isShipBinary:Z

    return-void

    .line 56
    :cond_2d
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static caCertificatePath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "mOperatorSim":Ljava/lang/String;
    const-string v1, "/system/etc/ca.crt"

    .line 160
    .local v1, "path":Ljava/lang/String;
    const-string v2, "XFA"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "65510"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 161
    const-string v1, "/system/etc/ca_mtn.crt"

    .line 165
    :cond_22
    :goto_22
    return-object v1

    .line 162
    :cond_23
    const-string v2, "NEE"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "24413"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "24412"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 163
    :cond_3f
    const-string v1, "/system/etc/ca_dna.crt"

    goto :goto_22
.end method

.method public static convertIpFromInetAddrToInt(Ljava/net/InetAddress;)I
    .registers 7
    .param p0, "inetaddr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    .line 431
    const-string v3, "[UTILS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertIpFromInetAddrToInt: Received IP address is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 433
    if-nez p0, :cond_1d

    move v0, v2

    .line 440
    :goto_1c
    return v0

    .line 436
    :cond_1d
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 437
    .local v1, "addrBytes":[B
    const/4 v3, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    aget-byte v4, v1, v2

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 439
    .local v0, "addr":I
    const-string v3, "[UTILS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "returning address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private static getAPMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 556
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 558
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 559
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "mac":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_1f
    return-object v0
.end method

.method public static getApnNamebyType(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "epdgApnType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 196
    if-nez p0, :cond_c

    .line 197
    const-string v4, "[UTILS]"

    const-string/jumbo v5, "getApnNamebyType null Apn Type"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_b
    return-object v2

    .line 200
    :cond_c
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/IWlanApnSetting;

    .line 204
    .local v3, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 205
    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "apnName":Ljava/lang/String;
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApnNamebyType() epdgApnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 211
    .end local v2    # "apnName":Ljava/lang/String;
    .end local v3    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_52
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getApnNamebyType() failed for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "epdgApnName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 216
    if-nez p0, :cond_c

    .line 217
    const-string v5, "[UTILS]"

    const-string/jumbo v6, "getApnTypeByName null Apn Type"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_b
    return-object v3

    .line 220
    :cond_c
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 224
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "apnName":Ljava/lang/String;
    if-eqz v2, :cond_14

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 226
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "apnType":Ljava/lang/String;
    const-string v5, "[UTILS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApnTypeByName() epdgApnName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 232
    .end local v2    # "apnName":Ljava/lang/String;
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_54
    const-string v5, "[UTILS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApnTypeByName() failed for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static getApnTypebyNetworkType(I)Ljava/lang/String;
    .registers 5
    .param p0, "networkType"    # I

    .prologue
    .line 264
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApnTypebyNetworkType() networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "apnType":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_6c

    .line 288
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApnTypebyNetworkType() Invalid network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_36
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApnTypebyNetworkType() returning apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-object v0

    .line 268
    :sswitch_50
    const-string/jumbo v0, "default"

    .line 269
    goto :goto_36

    .line 272
    :sswitch_54
    const-string/jumbo v0, "ims"

    .line 273
    goto :goto_36

    .line 277
    :sswitch_58
    invoke-static {}, isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 278
    const-string/jumbo v0, "mms"

    goto :goto_36

    .line 280
    :cond_66
    const-string v0, "cbs"

    .line 281
    goto :goto_36

    .line 284
    :sswitch_69
    const-string v0, "bip"

    .line 285
    goto :goto_36

    .line 266
    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_50
        0x2 -> :sswitch_58
        0xb -> :sswitch_54
        0xc -> :sswitch_58
        0x17 -> :sswitch_69
    .end sparse-switch
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 482
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static final getEpdgInterfacePrefix()Ljava/lang/String;
    .registers 1

    .prologue
    .line 456
    const-string/jumbo v0, "epdg"

    return-object v0
.end method

.method public static getIkeErrorFromCode(I)I
    .registers 5
    .param p0, "code"    # I

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "ret":I
    invoke-static {}, isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 704
    invoke-static {p0}, Lcom/sec/epdg/VerizonIkeError;->getVerizonIkeErrorCode(I)I

    move-result v0

    .line 705
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ike Error : Returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/epdg/VerizonIkeError;->printVerizonIkeErrorCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :goto_2b
    return v0

    .line 707
    :cond_2c
    invoke-static {p0}, Lcom/sec/epdg/RfcIkeError;->getRfcIkeErrorCode(I)I

    move-result v0

    .line 708
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ike Error : Returning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/epdg/RfcIkeError;->printRfcIkeErrorCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 552
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getImeiVendorAttributeType()I
    .registers 1

    .prologue
    .line 548
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getImeiVendorAttrType()I

    move-result v0

    return v0
.end method

.method public static getImsi(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "subID"    # I

    .prologue
    const/4 v7, 0x0

    .line 738
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 740
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 741
    .local v1, "imsi":Ljava/lang/String;
    const-string v4, "SPR"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 742
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSubscriberIdDm(I)Ljava/lang/String;

    move-result-object v1

    .line 766
    :goto_1c
    return-object v1

    .line 743
    :cond_1d
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v4, :cond_7c

    .line 745
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "impi":Ljava/lang/String;
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getImsi: impi is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 749
    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 750
    .local v2, "index":I
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 751
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getImsi: returning imsi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 753
    .end local v2    # "index":I
    :cond_68
    invoke-static {}, isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 754
    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 756
    :cond_77
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 760
    .end local v0    # "impi":Ljava/lang/String;
    :cond_7c
    invoke-static {}, isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 761
    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 763
    :cond_8b
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method public static declared-synchronized getIsVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 2

    .prologue
    .line 698
    const-class v0, Lcom/sec/epdg/EpdgUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 2

    .prologue
    .line 691
    const-class v0, Lcom/sec/epdg/EpdgUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getIsVoWifiEnabled()Z
    .registers 2

    .prologue
    .line 695
    const-class v0, Lcom/sec/epdg/EpdgUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getIwlanInterfaceName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 460
    const-string/jumbo v0, "wlan0"

    return-object v0
.end method

.method public static getIwlanInterfaceName(I)Ljava/lang/String;
    .registers 5
    .param p0, "cid"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "iwlanIfName":Ljava/lang/String;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanInterfaceName(): received cid is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {}, getEpdgInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanInterfaceName(): returning iwlanIfName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-object v0
.end method

.method public static getMobileInterfaceName(I)Ljava/lang/String;
    .registers 5
    .param p0, "cid"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "mobileIfName":Ljava/lang/String;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileInterfaceName(): received cid is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileInterfaceName(): returning mobileIfName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-object v0
.end method

.method public static final getMobileInterfacePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 452
    const-string/jumbo v0, "ril.data.intfprefix"

    const-string/jumbo v1, "rmnet"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkTypeByApnType(Ljava/lang/String;)I
    .registers 5
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 238
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getNetworkTypeByApnType() apnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-nez p0, :cond_24

    .line 240
    const-string v1, "[UTILS]"

    const-string/jumbo v2, "getNetworkTypeByApnType apnType is null.. returning -1"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_23
    return v0

    .line 243
    :cond_24
    const-string/jumbo v1, "default"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 244
    const/4 v0, 0x0

    goto :goto_23

    .line 245
    :cond_2f
    const-string/jumbo v1, "ims"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 246
    const/16 v0, 0xb

    goto :goto_23

    .line 247
    :cond_3b
    const-string v1, "cbs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 248
    const/16 v0, 0xc

    goto :goto_23

    .line 249
    :cond_46
    const-string v1, "bip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 250
    const/16 v0, 0x17

    goto :goto_23

    .line 251
    :cond_51
    const-string/jumbo v1, "mms"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 252
    const/4 v0, 0x2

    goto :goto_23

    .line 253
    :cond_5c
    const-string/jumbo v1, "xcap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 254
    const/16 v0, 0x1b

    goto :goto_23

    .line 255
    :cond_68
    const-string/jumbo v1, "emergency"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 256
    const/16 v0, 0xf

    goto :goto_23

    .line 258
    :cond_74
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkTypeByApnType  invalid apnType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public static getOperatorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "CscSalesCode":Ljava/lang/String;
    const-string/jumbo v1, "persist.omc.sales_code"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPcscfv4VendorAttr()I
    .registers 1

    .prologue
    .line 542
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getPcscfv4VendorAttr()I

    move-result v0

    return v0
.end method

.method public static getPcscfv6VendorAttr()I
    .registers 1

    .prologue
    .line 545
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getPcscfv6VendorAttr()I

    move-result v0

    return v0
.end method

.method public static getProfileIDbyNetworkType(I)I
    .registers 9
    .param p0, "networkType"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v6, -0x3

    const/4 v2, -0x1

    .line 355
    const-string v3, "[UTILS]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProfileIDbyNetworkType() networkType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v1, -0x1

    .local v1, "profileId":I
    const/4 v0, -0x1

    .line 358
    .local v0, "internalNetworkType":I
    invoke-static {p0}, getProfileIDbyNetworkTypeInternal(I)I

    move-result v1

    .line 360
    if-ne v1, v2, :cond_89

    invoke-static {}, isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 361
    const/16 v3, 0xc

    if-ne p0, v3, :cond_4c

    .line 362
    const-string v3, "[UTILS]"

    const-string v4, "Profile id returned for CBS is -1, retry for MMS"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x2

    .line 376
    :goto_3a
    invoke-static {v0}, getProfileIDbyNetworkTypeInternal(I)I

    move-result v1

    .line 377
    if-eq v1, v2, :cond_44

    if-eq v1, v7, :cond_44

    if-ne v1, v6, :cond_6f

    .line 380
    :cond_44
    const-string v3, "[UTILS]"

    const-string v4, "For VZW, both CBS and MMS are down, returning -1"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_4b
    return v2

    .line 364
    :cond_4c
    const/4 v3, 0x2

    if-ne p0, v3, :cond_59

    .line 365
    const-string v3, "[UTILS]"

    const-string v4, "Profile id returned for MMS is -1, retry for CBS"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/16 v0, 0xc

    goto :goto_3a

    .line 367
    :cond_59
    const/16 v2, 0xb

    if-ne p0, v2, :cond_66

    .line 368
    const-string v2, "[UTILS]"

    const-string v3, "Profile id returned for IMS"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x1

    goto :goto_4b

    .line 371
    :cond_66
    const-string v2, "[UTILS]"

    const-string v3, "Network type is neither MMS nor CBS for VZW so, returning -1 as profile id"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 373
    goto :goto_4b

    .line 383
    :cond_6f
    const-string v2, "[UTILS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For VZW, returning profile ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 384
    goto :goto_4b

    .line 386
    :cond_89
    if-ne v1, v6, :cond_93

    .line 387
    const-string v3, "[UTILS]"

    const-string v4, "Some number parsing error happens, returning -1 as id"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 389
    :cond_93
    if-ne v1, v7, :cond_9d

    .line 390
    const-string v3, "[UTILS]"

    const-string v4, "Connectivity manager instance is null, returning -1 as id"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 393
    :cond_9d
    const-string v2, "[UTILS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning profile id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 394
    goto :goto_4b
.end method

.method private static getProfileIDbyNetworkTypeInternal(I)I
    .registers 15
    .param p0, "networkType"    # I

    .prologue
    const/4 v9, -0x3

    const/4 v10, -0x1

    .line 297
    const-string v11, "[UTILS]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getProfileIDbyNetworkTypeInternal() networkType:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConnMgrInstance()Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 300
    if-nez v3, :cond_2c

    .line 301
    const-string v9, "[UTILS]"

    const-string/jumbo v10, "getProfileIDbyNetworkTypeInternal() . MConnMgr instance is null.. returning -2 as profile ID"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v9, -0x2

    .line 351
    :goto_2b
    return v9

    .line 305
    :cond_2c
    const-string v11, "[UTILS]"

    const-string/jumbo v12, "getProfileIDbyNetworkTypeInternal() mConnMgr is not null "

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v3, p0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 309
    .local v8, "nwkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 311
    .local v6, "networkState":Landroid/net/NetworkInfo$State;
    const-string v11, "[UTILS]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getProfileIDbyNetworkType networkState is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v11, :cond_5d

    sget-object v11, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v6, v11, :cond_67

    .line 314
    :cond_5d
    const-string v9, "[UTILS]"

    const-string/jumbo v11, "getProfileIDbyNetworkTypeInternal(); This network is DISCONNECTED or UNKNOWN. returning -1"

    invoke-static {v9, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 316
    goto :goto_2b

    .line 318
    :cond_67
    const/4 v2, 0x0

    .line 319
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v3, p0}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v2

    .line 320
    const/4 v4, 0x0

    .local v4, "mIntfName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 321
    .local v7, "numericSubString":Ljava/lang/String;
    if-eqz v2, :cond_cb

    .line 322
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-static {}, getMobileInterfacePrefix()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "mobileIntfPrefix":Ljava/lang/String;
    if-eqz v4, :cond_df

    .line 330
    :try_start_7a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7a .. :try_end_85} :catch_d5

    move-result-object v7

    .line 340
    const-string v10, "[UTILS]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InterfaceName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", numericSubString is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_a8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_ab} :catch_e9

    move-result v1

    .line 349
    .local v1, "interfaceid":I
    const-string v9, "[UTILS]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getProfileIDbyNetworkType() returning profileId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    add-int/lit8 v9, v1, 0x1

    goto/16 :goto_2b

    .line 324
    .end local v1    # "interfaceid":I
    .end local v5    # "mobileIntfPrefix":Ljava/lang/String;
    :cond_cb
    const-string v9, "[UTILS]"

    const-string v11, "LinkProperties is null. Returning -1 as profile ID"

    invoke-static {v9, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 325
    goto/16 :goto_2b

    .line 332
    .restart local v5    # "mobileIntfPrefix":Ljava/lang/String;
    :catch_d5
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v10, "[UTILS]"

    const-string v11, "Error!!!, startIndex is bigger than length of mIntfName"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 337
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_df
    const-string v9, "[UTILS]"

    const-string v11, "Interface name is null. Returning -1 as profile ID"

    invoke-static {v9, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 338
    goto/16 :goto_2b

    .line 345
    :catch_e9
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "[UTILS]"

    const-string v11, "Error!!!, cid is not converted into number, returning -3"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b
.end method

.method public static getProfileIdbyApnType(Ljava/lang/String;)I
    .registers 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 399
    if-nez p0, :cond_c

    .line 400
    const-string v1, "[UTILS]"

    const-string/jumbo v2, "getProfileIdbyApnType apnType is null.. returning -1"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v1, -0x1

    .line 404
    :goto_b
    return v1

    .line 403
    :cond_c
    invoke-static {p0}, getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, "mNetworkType":I
    invoke-static {v0}, getProfileIDbyNetworkType(I)I

    move-result v1

    goto :goto_b
.end method

.method private static getUeWiFiMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 601
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 603
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 604
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "mac":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 606
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_1f
    return-object v0
.end method

.method public static getVoPS(Landroid/telephony/ServiceState;)I
    .registers 7
    .param p0, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 714
    const/4 v2, -0x1

    .line 716
    .local v2, "vops":I
    :try_start_1
    const-class v3, Landroid/telephony/ServiceState;

    const-string/jumbo v4, "getLteImsVoiceAvail"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 717
    .local v1, "md":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_19} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_19} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_39

    move-result v2

    .line 727
    .end local v1    # "md":Ljava/lang/reflect/Method;
    :goto_1a
    return v2

    .line 718
    :catch_1b
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: NoSuchMethodException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 720
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_25
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 722
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2f
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: IllegalAccessException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 724
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_39
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "[UTILS]"

    const-string/jumbo v4, "getVoPS: InvocationTargetException"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private static idiImsiUpdate()Z
    .registers 1

    .prologue
    .line 612
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiImsi()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static idiMacInclude()Z
    .registers 1

    .prologue
    .line 567
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIdiMac()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static includeIdi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ipsecOwnUri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 571
    invoke-static {}, idiMacInclude()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, isIncludeUeWiFiMac()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 572
    :cond_d
    const/16 v4, 0x40

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 573
    .local v3, "offset":I
    if-ltz v3, :cond_86

    .line 575
    const/4 v2, 0x0

    .line 577
    .local v2, "macAddress":Ljava/lang/String;
    :try_start_16
    invoke-static {}, isIncludeUeWiFiMac()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 578
    invoke-static {p0}, getUeWiFiMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 582
    :goto_20
    if-eqz v2, :cond_63

    .line 583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "idi":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "[UTILS]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rewritten IDi : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v1    # "idi":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "offset":I
    :goto_5d
    return-object v1

    .line 580
    .restart local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "offset":I
    :cond_5e
    invoke-static {p0}, getAPMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    .line 588
    :cond_63
    const-string v4, "[UTILS]"

    const-string v5, "Could not get AP MAC address"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_16 .. :try_end_6a} :catch_6c

    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "offset":I
    :cond_6a
    :goto_6a
    move-object v1, p1

    .line 597
    goto :goto_5d

    .line 590
    .restart local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "offset":I
    :catch_6c
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error rewriting URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 594
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_86
    const-string v4, "[UTILS]"

    const-string v5, "Invalid IDi format"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a
.end method

.method public static isAlwaysOnApn(Ljava/lang/String;)Z
    .registers 5
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 521
    .local v0, "result":Z
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAlwaysOnApn(): result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return v0
.end method

.method public static isAttachApn(I)Z
    .registers 5
    .param p0, "rilCid"    # I

    .prologue
    const/4 v0, 0x1

    .line 503
    if-ne p0, v0, :cond_2e

    .line 504
    .local v0, "result":Z
    :goto_3
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAttachApn: Received CID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "result as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return v0

    .line 503
    .end local v0    # "result":Z
    :cond_2e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isDataRetryEnabled()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 188
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isDualSimModel()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 140
    const-string/jumbo v0, "dsds"

    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isEpdgEnabled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 180
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isEpdgNotAvailableRequired(Ljava/lang/String;)Z
    .registers 6
    .param p0, "apnName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 776
    const/4 v1, 0x0

    .line 777
    .local v1, "ret":Z
    invoke-static {p0}, getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "apnType":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 780
    const/4 v2, 0x0

    .line 796
    :goto_b
    return v2

    .line 783
    :cond_c
    invoke-static {}, isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 784
    invoke-static {v0}, getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_22

    invoke-static {v0}, getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_29

    :cond_22
    invoke-static {}, Lcom/sec/epdg/EpdgService;->is1xAvailable()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 787
    const/4 v1, 0x1

    :cond_29
    :goto_29
    move v2, v1

    .line 796
    goto :goto_b

    .line 790
    :cond_2b
    invoke-static {v0}, getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-eq v3, v2, :cond_3f

    const/16 v2, 0x1b

    invoke-static {v0}, getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_3f

    invoke-static {v0}, getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_29

    .line 793
    :cond_3f
    const/4 v1, 0x1

    goto :goto_29
.end method

.method public static isIncludeUeWiFiMac()Z
    .registers 4

    .prologue
    .line 821
    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "salesCode":Ljava/lang/String;
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "mccncc":Ljava/lang/String;
    const-string v2, "TUR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "28601"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 824
    const/4 v2, 0x1

    .line 826
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public static isIndependentEpdg()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 184
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INDEPENDENTEPDG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isInternetKeepAliveEnabled()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_KEEP_ALIVE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorAtt()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 72
    const-string v0, "ATT"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorEvr()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 95
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "EVR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 97
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 99
    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_17
.end method

.method public static isOperatorFtm()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 103
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "FTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 105
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 107
    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_17
.end method

.method public static isOperatorSpr()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 82
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 84
    :cond_1a
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 86
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1f
.end method

.method public static isOperatorTmo()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 67
    const-string v0, "TMB"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFC20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_24
    const/4 v0, 0x1

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static isOperatorVerizon()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 63
    const-string v0, "VZW"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isOperatorVod()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 111
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 113
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 115
    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_17
.end method

.method public static isShipBinary()Z
    .registers 3

    .prologue
    .line 515
    const-string v0, "[UTILS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isShipBinary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isShipBinary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-boolean v0, isShipBinary:Z

    return v0
.end method

.method public static isSupportMultiEpdgServerIP()Z
    .registers 2

    .prologue
    .line 769
    invoke-static {}, isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "THL"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "TEL"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 770
    :cond_22
    const/4 v0, 0x1

    .line 772
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public static isUseAlarm()Z
    .registers 3

    .prologue
    .line 127
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "mOperatorSim":Ljava/lang/String;
    const-string v1, "DTR"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "VOD"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "AUT"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "XFA"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "65510"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    :cond_42
    const-string v1, "SWC"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "DCZ"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "TMZ"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "AMO"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    invoke-static {}, isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7e

    :cond_7c
    const/4 v1, 0x1

    :goto_7d
    return v1

    :cond_7e
    const/4 v1, 0x0

    goto :goto_7d
.end method

.method public static isUseRssiStrengthChecker()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 119
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "FTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "ORO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 121
    :cond_1a
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 123
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1f
.end method

.method public static isUserBinary()Z
    .registers 3

    .prologue
    .line 510
    const-string v0, "[UTILS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUSerBinary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, isUserBinary:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget-boolean v0, isUserBinary:Z

    return v0
.end method

.method public static isUsingCaCertificate()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 144
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "mOperatorSim":Ljava/lang/String;
    invoke-static {}, isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "ORG"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "AUT"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "22803"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    :cond_34
    const-string v1, "XFA"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "65510"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    :cond_48
    invoke-static {}, isOperatorAtt()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "NEE"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v1, "24413"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    const-string v1, "24412"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    :cond_6e
    const-string v1, "TUR"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const-string v1, "28601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    :cond_82
    const-string v1, "TEL"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string v1, "50501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 153
    :cond_96
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 155
    :goto_9b
    return-object v1

    :cond_9c
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_9b
.end method

.method public static isUsingRssiPollingFunction()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 169
    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "mSalesCode":Ljava/lang/String;
    const-string v1, "FTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "ORO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 174
    :cond_1c
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 176
    :goto_21
    return-object v1

    :cond_22
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_21
.end method

.method public static isVoWifiWave2()Ljava/lang/Boolean;
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigEpdgExtraFunction"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAVE2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isVodPreferredMode()Z
    .registers 2

    .prologue
    .line 830
    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "VDF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 832
    :cond_14
    const/4 v1, 0x1

    .line 834
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isVodafoneRetryTimer()Z
    .registers 3

    .prologue
    .line 813
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 815
    const/4 v1, 0x1

    .line 817
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isWaitDeRegiWhenWFCDisable()Z
    .registers 3

    .prologue
    .line 731
    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "operatorNumeric":Ljava/lang/String;
    const-string v1, "EVR"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "VOD"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "PRT"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "XEO"

    invoke-static {}, getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "26006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 733
    :cond_42
    const/4 v1, 0x1

    .line 735
    :goto_43
    return v1

    :cond_44
    const/4 v1, 0x0

    goto :goto_43
.end method

.method public static isWifiSettingOn(Landroid/content/Context;)Z
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 444
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 446
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    const-string v1, "[UTILS]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiSettingOn() returning wifi.isWifiEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .registers 8
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 412
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lookupHost() enter, hostname is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :try_start_1a
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1d} :catch_59

    move-result-object v3

    .line 420
    .local v3, "inetaddr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 421
    .local v1, "addrBytes":[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v1, v0

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 423
    .local v0, "addr":I
    const-string v4, "[UTILS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "returning address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .end local v0    # "addr":I
    .end local v1    # "addrBytes":[B
    .end local v3    # "inetaddr":Ljava/net/InetAddress;
    :goto_58
    return v0

    .line 416
    :catch_59
    move-exception v2

    .line 417
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v4, "[UTILS]"

    const-string/jumbo v5, "lookupHost failed"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58
.end method

.method public static sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 477
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 478
    return-void
.end method

.method public static shouldEpdgSupressW2LToRil(I)Z
    .registers 5
    .param p0, "cid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 526
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-nez v3, :cond_7

    .line 539
    :cond_6
    :goto_6
    return v1

    .line 530
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 532
    if-lez p0, :cond_1a

    .line 533
    const/4 v3, 0x2

    invoke-static {v3}, getProfileIDbyNetworkType(I)I

    move-result v0

    .line 535
    .local v0, "profileId":I
    if-lez v0, :cond_1a

    .line 536
    if-eq v0, p0, :cond_6

    move v1, v2

    goto :goto_6

    .end local v0    # "profileId":I
    :cond_1a
    move v1, v2

    .line 539
    goto :goto_6
.end method

.method public static shouldTEpdgTimerBeStarted()Z
    .registers 1

    .prologue
    .line 499
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isAnyPdnConnectedOverWifi()Z

    move-result v0

    return v0
.end method

.method public static stripLeadingAndTrailingQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 800
    if-nez p0, :cond_4

    .line 801
    const/4 p0, 0x0

    .line 809
    :cond_3
    :goto_3
    return-object p0

    .line 803
    :cond_4
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 804
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 806
    :cond_15
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static updateOnwUriImsi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ipsecOwnUri"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {}, idiImsiUpdate()Z

    move-result v13

    if-nez v13, :cond_38

    .line 617
    :cond_c
    const/4 v13, 0x0

    const-string v14, "[UTILS]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " updateOnwUriImsi() SimState: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ImsiUpdate:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, idiImsiUpdate()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 681
    .end local p1    # "ipsecOwnUri":Ljava/lang/String;
    :goto_37
    return-object p1

    .line 623
    .restart local p1    # "ipsecOwnUri":Ljava/lang/String;
    :cond_38
    const/4 v4, 0x0

    .local v4, "mcc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 624
    .local v5, "mnc":Ljava/lang/String;
    const/4 v9, -0x1

    .line 625
    .local v9, "subscription":I
    invoke-static {}, isDualSimModel()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_a2

    .line 626
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "imsi":Ljava/lang/String;
    :goto_4f
    const/4 v3, 0x0

    .line 632
    .local v3, "mOwnUri":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "[UTILS]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateOnwUriImsi: imsi:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " received "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ipsecOwnUri is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 635
    if-eqz v2, :cond_89

    if-eqz v2, :cond_a9

    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a9

    .line 636
    :cond_89
    const-string v13, "[UTILS]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No need to update the OwnUri imsi:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 628
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "mOwnUri":Ljava/lang/String;
    :cond_a2
    move-object/from16 v0, p0

    invoke-static {v0, v9}, getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "imsi":Ljava/lang/String;
    goto :goto_4f

    .line 640
    .restart local v3    # "mOwnUri":Ljava/lang/String;
    :cond_a9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicUserFQDN()Z

    move-result v13

    if-nez v13, :cond_bd

    .line 641
    const-string v13, "[UTILS]"

    const-string/jumbo v14, "use static User FQDN from epdg app"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 645
    :cond_bd
    if-eqz v2, :cond_127

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_127

    .line 646
    const-string/jumbo v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 649
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, isDualSimModel()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_fc

    .line 650
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v8

    .line 654
    .local v8, "operator":Ljava/lang/String;
    :goto_e3
    if-eqz v8, :cond_f3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_f3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-le v13, v14, :cond_101

    .line 655
    :cond_f3
    const-string v13, "[UTILS]"

    const-string v14, "Operator is not upated or wrong"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 652
    .end local v8    # "operator":Ljava/lang/String;
    :cond_fc
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "operator":Ljava/lang/String;
    goto :goto_e3

    .line 660
    :cond_101
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 661
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_169

    .line 662
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x5

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 668
    .end local v8    # "operator":Ljava/lang/String;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_127
    :goto_127
    move-object/from16 v3, p1

    .line 669
    const-string v13, "@"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 670
    .local v11, "uriList":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v6, v11, v13

    .line 671
    .local v6, "naiStr":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, "newOwnUri":Ljava/lang/String;
    const-string/jumbo v13, "nai.epc.mnc"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 673
    .local v12, "uriList1":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_170

    .line 674
    const-string v13, "[UTILS]"

    const-string/jumbo v14, "nai.epc.mnc not present"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 664
    .end local v6    # "naiStr":Ljava/lang/String;
    .end local v7    # "newOwnUri":Ljava/lang/String;
    .end local v11    # "uriList":[Ljava/lang/String;
    .end local v12    # "uriList1":[Ljava/lang/String;
    .restart local v8    # "operator":Ljava/lang/String;
    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_169
    const/4 v13, 0x3

    const/4 v14, 0x6

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_127

    .line 678
    .end local v8    # "operator":Ljava/lang/String;
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v6    # "naiStr":Ljava/lang/String;
    .restart local v7    # "newOwnUri":Ljava/lang/String;
    .restart local v11    # "uriList":[Ljava/lang/String;
    .restart local v12    # "uriList1":[Ljava/lang/String;
    :cond_170
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "nai.epc.mnc"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".mcc"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".3gppnetwork.org"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "finalOwnUri":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "[UTILS]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "New Own Uri is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v1

    .line 681
    goto/16 :goto_37
.end method
