.class synthetic Lcom/sec/epdg/IPSecAdapter$1;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecError:[I

.field static final synthetic $SwitchMap$com$ipsec$client$IPsecEvent:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

.field static final synthetic $SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1738
    invoke-static {}, Lcom/ipsec/client/IPsecError;->values()[Lcom/ipsec/client/IPsecError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    :try_start_9
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_10c9

    :goto_14
    :try_start_14
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_10c6

    :goto_1f
    :try_start_1f
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_10c3

    :goto_2a
    :try_start_2a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_10c0

    :goto_35
    :try_start_35
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_10bd

    :goto_40
    :try_start_40
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_10ba

    :goto_4b
    :try_start_4b
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_10b7

    :goto_56
    :try_start_56
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_10b4

    :goto_62
    :try_start_62
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_DAEMON_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_10b1

    :goto_6e
    :try_start_6e
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_DH_GROUP:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_10ae

    :goto_7a
    :try_start_7a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_10ab

    :goto_86
    :try_start_86
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_INTEGRITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_10a8

    :goto_92
    :try_start_92
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_VERSION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_10a5

    :goto_9e
    :try_start_9e
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_WINDOW_SIZE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_10a2

    :goto_aa
    :try_start_aa
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IKE_LIFETIME:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_109f

    :goto_b6
    :try_start_b6
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_ENCRYPTION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_109c

    :goto_c2
    :try_start_c2
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_INTEGRITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_1099

    :goto_ce
    :try_start_ce
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_ALGORITHM_COMBINATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_1096

    :goto_da
    :try_start_da
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PFS_DH_GROUP:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_1093

    :goto_e6
    :try_start_e6
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_1090

    :goto_f2
    :try_start_f2
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_108d

    :goto_fe
    :try_start_fe
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_INTERNAL_SUBNET:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_108a

    :goto_10a
    :try_start_10a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_INTERFACE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_1087

    :goto_116
    :try_start_116
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_1084

    :goto_122
    :try_start_122
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_REMOTE_IDENTITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_1081

    :goto_12e
    :try_start_12e
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_107e

    :goto_13a
    :try_start_13a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_107b

    :goto_146
    :try_start_146
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_1078

    :goto_152
    :try_start_152
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IM_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_1075

    :goto_15e
    :try_start_15e
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRIVATE_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_1072

    :goto_16a
    :try_start_16a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_USERNAME:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_106f

    :goto_176
    :try_start_176
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PASSWORD:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_106c

    :goto_182
    :try_start_182
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_VIRTUAL_ADAPTER_NAME:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18e} :catch_1069

    :goto_18e
    :try_start_18e
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_VIRTUAL_ADAPTER_CONFIGURATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_19a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_19a} :catch_1066

    :goto_19a
    :try_start_19a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_RAC_ATTRIBUTE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19a .. :try_end_1a6} :catch_1063

    :goto_1a6
    :try_start_1a6
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_NATT_KEEPALIVE_TIMEOUT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b2} :catch_1060

    :goto_1b2
    :try_start_1b2
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_DPD_TIMEOUT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_105d

    :goto_1be
    :try_start_1be
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_SYSTEM_VPN_ALREADY_EXISTS:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1ca} :catch_105a

    :goto_1ca
    :try_start_1ca
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_CANNOT_CONFIGURE_GLOBAL_DNS:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d6} :catch_1057

    :goto_1d6
    :try_start_1d6
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_UNKNOWN_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d6 .. :try_end_1e2} :catch_1054

    :goto_1e2
    :try_start_1e2
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_CA_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ee} :catch_1051

    :goto_1ee
    :try_start_1ee
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ee .. :try_end_1fa} :catch_104e

    :goto_1fa
    :try_start_1fa
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_TIMEOUT:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_206
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_206} :catch_104b

    :goto_206
    :try_start_206
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_IKE_NEGOTIATION_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_1048

    :goto_212
    :try_start_212
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecError:[I

    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_CERTIFICATE_VALIDATION_FAILED:Lcom/ipsec/client/IPsecError;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_21e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21e} :catch_1045

    .line 1719
    :goto_21e
    invoke-static {}, Lcom/ipsec/client/IPsecEvent;->values()[Lcom/ipsec/client/IPsecEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecEvent:[I

    :try_start_227
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_232
    .catch Ljava/lang/NoSuchFieldError; {:try_start_227 .. :try_end_232} :catch_1042

    :goto_232
    :try_start_232
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_23d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_232 .. :try_end_23d} :catch_103f

    :goto_23d
    :try_start_23d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_248
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23d .. :try_end_248} :catch_103c

    :goto_248
    :try_start_248
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_PEER_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_253
    .catch Ljava/lang/NoSuchFieldError; {:try_start_248 .. :try_end_253} :catch_1039

    :goto_253
    :try_start_253
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_RESET:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_25e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_253 .. :try_end_25e} :catch_1036

    :goto_25e
    :try_start_25e
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecEvent:[I

    sget-object v1, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25e .. :try_end_269} :catch_1033

    .line 1336
    :goto_269
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->values()[Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    :try_start_272
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_272 .. :try_end_27d} :catch_1030

    :goto_27d
    :try_start_27d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_288
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27d .. :try_end_288} :catch_102d

    :goto_288
    :try_start_288
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$VirtualAdapterConfigurationMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_293
    .catch Ljava/lang/NoSuchFieldError; {:try_start_288 .. :try_end_293} :catch_102a

    .line 1320
    :goto_293
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$AdapterConf;->values()[Lcom/sec/epdg/IWlanEnum$AdapterConf;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    :try_start_29c
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29c .. :try_end_2a7} :catch_1027

    :goto_2a7
    :try_start_2a7
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a7 .. :try_end_2b2} :catch_1024

    :goto_2b2
    :try_start_2b2
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$AdapterConf:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$AdapterConf;->VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b2 .. :try_end_2bd} :catch_1021

    .line 1273
    :goto_2bd
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeGroup;->values()[Lcom/ipsec/client/IPsecConnection$IkeGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    :try_start_2c6
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c6 .. :try_end_2d1} :catch_101e

    :goto_2d1
    :try_start_2d1
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d1 .. :try_end_2dc} :catch_101b

    :goto_2dc
    :try_start_2dc
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2dc .. :try_end_2e7} :catch_1018

    :goto_2e7
    :try_start_2e7
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e7 .. :try_end_2f2} :catch_1015

    :goto_2f2
    :try_start_2f2
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f2 .. :try_end_2fd} :catch_1012

    :goto_2fd
    :try_start_2fd
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_308
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fd .. :try_end_308} :catch_100f

    :goto_308
    :try_start_308
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_313
    .catch Ljava/lang/NoSuchFieldError; {:try_start_308 .. :try_end_313} :catch_100c

    :goto_313
    :try_start_313
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_31f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_313 .. :try_end_31f} :catch_1009

    :goto_31f
    :try_start_31f
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_32b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31f .. :try_end_32b} :catch_1006

    :goto_32b
    :try_start_32b
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_337
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32b .. :try_end_337} :catch_1003

    :goto_337
    :try_start_337
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_343
    .catch Ljava/lang/NoSuchFieldError; {:try_start_337 .. :try_end_343} :catch_1000

    :goto_343
    :try_start_343
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_34f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_343 .. :try_end_34f} :catch_ffd

    :goto_34f
    :try_start_34f
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_35b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34f .. :try_end_35b} :catch_ffa

    :goto_35b
    :try_start_35b
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_367
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35b .. :try_end_367} :catch_ff7

    :goto_367
    :try_start_367
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_373
    .catch Ljava/lang/NoSuchFieldError; {:try_start_367 .. :try_end_373} :catch_ff4

    :goto_373
    :try_start_373
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_37f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_373 .. :try_end_37f} :catch_ff1

    :goto_37f
    :try_start_37f
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_38b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37f .. :try_end_38b} :catch_fee

    :goto_38b
    :try_start_38b
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_397
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38b .. :try_end_397} :catch_feb

    :goto_397
    :try_start_397
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_3a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_397 .. :try_end_3a3} :catch_fe8

    .line 1227
    :goto_3a3
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->values()[Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    :try_start_3ac
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ac .. :try_end_3b7} :catch_fe5

    :goto_3b7
    :try_start_3b7
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b7 .. :try_end_3c2} :catch_fe2

    :goto_3c2
    :try_start_3c2
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c2 .. :try_end_3cd} :catch_fdf

    :goto_3cd
    :try_start_3cd
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3cd .. :try_end_3d8} :catch_fdc

    :goto_3d8
    :try_start_3d8
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d8 .. :try_end_3e3} :catch_fd9

    :goto_3e3
    :try_start_3e3
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e3 .. :try_end_3ee} :catch_fd6

    :goto_3ee
    :try_start_3ee
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ee .. :try_end_3f9} :catch_fd3

    :goto_3f9
    :try_start_3f9
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_405
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f9 .. :try_end_405} :catch_fd0

    :goto_405
    :try_start_405
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_411
    .catch Ljava/lang/NoSuchFieldError; {:try_start_405 .. :try_end_411} :catch_fcd

    :goto_411
    :try_start_411
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_41d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_411 .. :try_end_41d} :catch_fca

    :goto_41d
    :try_start_41d
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_429
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41d .. :try_end_429} :catch_fc7

    :goto_429
    :try_start_429
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_435
    .catch Ljava/lang/NoSuchFieldError; {:try_start_429 .. :try_end_435} :catch_fc4

    :goto_435
    :try_start_435
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_441
    .catch Ljava/lang/NoSuchFieldError; {:try_start_435 .. :try_end_441} :catch_fc1

    :goto_441
    :try_start_441
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_44d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_441 .. :try_end_44d} :catch_fbe

    :goto_44d
    :try_start_44d
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_459
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44d .. :try_end_459} :catch_fbb

    :goto_459
    :try_start_459
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_465
    .catch Ljava/lang/NoSuchFieldError; {:try_start_459 .. :try_end_465} :catch_fb8

    :goto_465
    :try_start_465
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_471
    .catch Ljava/lang/NoSuchFieldError; {:try_start_465 .. :try_end_471} :catch_fb5

    :goto_471
    :try_start_471
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_47d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_471 .. :try_end_47d} :catch_fb2

    :goto_47d
    :try_start_47d
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeDhGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeDhGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_489
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47d .. :try_end_489} :catch_faf

    .line 1209
    :goto_489
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$EapMethod;->values()[Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    :try_start_492
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_492 .. :try_end_49d} :catch_fac

    :goto_49d
    :try_start_49d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49d .. :try_end_4a8} :catch_fa9

    :goto_4a8
    :try_start_4a8
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a8 .. :try_end_4b3} :catch_fa6

    :goto_4b3
    :try_start_4b3
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$EapMethod:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b3 .. :try_end_4be} :catch_fa3

    .line 1192
    :goto_4be
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeEapType;->values()[Lcom/sec/epdg/IWlanEnum$IkeEapType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    :try_start_4c7
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c7 .. :try_end_4d2} :catch_fa0

    :goto_4d2
    :try_start_4d2
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d2 .. :try_end_4dd} :catch_f9d

    :goto_4dd
    :try_start_4dd
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4dd .. :try_end_4e8} :catch_f9a

    :goto_4e8
    :try_start_4e8
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEapType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEapType;->EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e8 .. :try_end_4f3} :catch_f97

    .line 1156
    :goto_4f3
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->values()[Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    :try_start_4fc
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_507
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4fc .. :try_end_507} :catch_f94

    :goto_507
    :try_start_507
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_512
    .catch Ljava/lang/NoSuchFieldError; {:try_start_507 .. :try_end_512} :catch_f91

    :goto_512
    :try_start_512
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_51d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_512 .. :try_end_51d} :catch_f8e

    :goto_51d
    :try_start_51d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_528
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51d .. :try_end_528} :catch_f8b

    :goto_528
    :try_start_528
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_533
    .catch Ljava/lang/NoSuchFieldError; {:try_start_528 .. :try_end_533} :catch_f88

    :goto_533
    :try_start_533
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_533 .. :try_end_53e} :catch_f85

    :goto_53e
    :try_start_53e
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_549
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53e .. :try_end_549} :catch_f82

    :goto_549
    :try_start_549
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_555
    .catch Ljava/lang/NoSuchFieldError; {:try_start_549 .. :try_end_555} :catch_f7f

    :goto_555
    :try_start_555
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_561
    .catch Ljava/lang/NoSuchFieldError; {:try_start_555 .. :try_end_561} :catch_f7c

    :goto_561
    :try_start_561
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_56d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_561 .. :try_end_56d} :catch_f79

    :goto_56d
    :try_start_56d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_579
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56d .. :try_end_579} :catch_f76

    :goto_579
    :try_start_579
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_585
    .catch Ljava/lang/NoSuchFieldError; {:try_start_579 .. :try_end_585} :catch_f73

    :goto_585
    :try_start_585
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_591
    .catch Ljava/lang/NoSuchFieldError; {:try_start_585 .. :try_end_591} :catch_f70

    :goto_591
    :try_start_591
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_59d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_591 .. :try_end_59d} :catch_f6d

    .line 1119
    :goto_59d
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->values()[Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    :try_start_5a6
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a6 .. :try_end_5b1} :catch_f6a

    :goto_5b1
    :try_start_5b1
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b1 .. :try_end_5bc} :catch_f67

    :goto_5bc
    :try_start_5bc
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5bc .. :try_end_5c7} :catch_f64

    :goto_5c7
    :try_start_5c7
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c7 .. :try_end_5d2} :catch_f61

    :goto_5d2
    :try_start_5d2
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d2 .. :try_end_5dd} :catch_f5e

    :goto_5dd
    :try_start_5dd
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5dd .. :try_end_5e8} :catch_f5b

    :goto_5e8
    :try_start_5e8
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e8 .. :try_end_5f3} :catch_f58

    :goto_5f3
    :try_start_5f3
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f3 .. :try_end_5ff} :catch_f55

    :goto_5ff
    :try_start_5ff
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_60b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5ff .. :try_end_60b} :catch_f52

    :goto_60b
    :try_start_60b
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_617
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60b .. :try_end_617} :catch_f4f

    :goto_617
    :try_start_617
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_623
    .catch Ljava/lang/NoSuchFieldError; {:try_start_617 .. :try_end_623} :catch_f4c

    :goto_623
    :try_start_623
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_62f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_623 .. :try_end_62f} :catch_f49

    :goto_62f
    :try_start_62f
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_63b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62f .. :try_end_63b} :catch_f46

    :goto_63b
    :try_start_63b
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeEncryption:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_647
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63b .. :try_end_647} :catch_f43

    .line 1090
    :goto_647
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->values()[Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    :try_start_650
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_65b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_650 .. :try_end_65b} :catch_f40

    :goto_65b
    :try_start_65b
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_666
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65b .. :try_end_666} :catch_f3d

    :goto_666
    :try_start_666
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_671
    .catch Ljava/lang/NoSuchFieldError; {:try_start_666 .. :try_end_671} :catch_f3a

    :goto_671
    :try_start_671
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_67c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_671 .. :try_end_67c} :catch_f37

    :goto_67c
    :try_start_67c
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_687
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67c .. :try_end_687} :catch_f34

    :goto_687
    :try_start_687
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_692
    .catch Ljava/lang/NoSuchFieldError; {:try_start_687 .. :try_end_692} :catch_f31

    :goto_692
    :try_start_692
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_69d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_692 .. :try_end_69d} :catch_f2e

    :goto_69d
    :try_start_69d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69d .. :try_end_6a9} :catch_f2b

    :goto_6a9
    :try_start_6a9
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a9 .. :try_end_6b5} :catch_f28

    :goto_6b5
    :try_start_6b5
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b5 .. :try_end_6c1} :catch_f25

    .line 1061
    :goto_6c1
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->values()[Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    :try_start_6ca
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6ca .. :try_end_6d5} :catch_f22

    :goto_6d5
    :try_start_6d5
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d5 .. :try_end_6e0} :catch_f1f

    :goto_6e0
    :try_start_6e0
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e0 .. :try_end_6eb} :catch_f1c

    :goto_6eb
    :try_start_6eb
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6eb .. :try_end_6f6} :catch_f19

    :goto_6f6
    :try_start_6f6
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_701
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f6 .. :try_end_701} :catch_f16

    :goto_701
    :try_start_701
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_70c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_701 .. :try_end_70c} :catch_f13

    :goto_70c
    :try_start_70c
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_717
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70c .. :try_end_717} :catch_f10

    :goto_717
    :try_start_717
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_723
    .catch Ljava/lang/NoSuchFieldError; {:try_start_717 .. :try_end_723} :catch_f0d

    :goto_723
    :try_start_723
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_72f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_723 .. :try_end_72f} :catch_f0a

    :goto_72f
    :try_start_72f
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IkeIntegrity:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IkeIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_73b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72f .. :try_end_73b} :catch_f07

    .line 1047
    :goto_73b
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IkeVersion;->values()[Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    :try_start_744
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_2:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_74f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_744 .. :try_end_74f} :catch_f04

    :goto_74f
    :try_start_74f
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IkeVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeVersion;->IKE_VERSION_1:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74f .. :try_end_75a} :catch_f01

    .line 1035
    :goto_75a
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$Ikeversion;->values()[Lcom/sec/epdg/IWlanEnum$Ikeversion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    :try_start_763
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_76e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_763 .. :try_end_76e} :catch_efe

    :goto_76e
    :try_start_76e
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$Ikeversion:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$Ikeversion;->IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_779
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76e .. :try_end_779} :catch_efb

    .line 1023
    :goto_779
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->values()[Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    :try_start_782
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_78d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_782 .. :try_end_78d} :catch_ef8

    :goto_78d
    :try_start_78d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecLifeType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_798
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78d .. :try_end_798} :catch_ef5

    .line 1010
    :goto_798
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->values()[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    :try_start_7a1
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a1 .. :try_end_7ac} :catch_ef2

    :goto_7ac
    :try_start_7ac
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecLifeTimeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7ac .. :try_end_7b7} :catch_eef

    .line 965
    :goto_7b7
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->values()[Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    :try_start_7c0
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c0 .. :try_end_7cb} :catch_eec

    :goto_7cb
    :try_start_7cb
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7cb .. :try_end_7d6} :catch_ee9

    :goto_7d6
    :try_start_7d6
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d6 .. :try_end_7e1} :catch_ee6

    :goto_7e1
    :try_start_7e1
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e1 .. :try_end_7ec} :catch_ee3

    :goto_7ec
    :try_start_7ec
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7ec .. :try_end_7f7} :catch_ee0

    :goto_7f7
    :try_start_7f7
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_802
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f7 .. :try_end_802} :catch_edd

    :goto_802
    :try_start_802
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_802 .. :try_end_80d} :catch_eda

    :goto_80d
    :try_start_80d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_819
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80d .. :try_end_819} :catch_ed7

    :goto_819
    :try_start_819
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_825
    .catch Ljava/lang/NoSuchFieldError; {:try_start_819 .. :try_end_825} :catch_ed4

    :goto_825
    :try_start_825
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_831
    .catch Ljava/lang/NoSuchFieldError; {:try_start_825 .. :try_end_831} :catch_ed1

    :goto_831
    :try_start_831
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_83d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_831 .. :try_end_83d} :catch_ece

    :goto_83d
    :try_start_83d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_849
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83d .. :try_end_849} :catch_ecb

    :goto_849
    :try_start_849
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_855
    .catch Ljava/lang/NoSuchFieldError; {:try_start_849 .. :try_end_855} :catch_ec8

    :goto_855
    :try_start_855
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_861
    .catch Ljava/lang/NoSuchFieldError; {:try_start_855 .. :try_end_861} :catch_ec5

    :goto_861
    :try_start_861
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_86d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_861 .. :try_end_86d} :catch_ec2

    :goto_86d
    :try_start_86d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_879
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86d .. :try_end_879} :catch_ebf

    :goto_879
    :try_start_879
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_885
    .catch Ljava/lang/NoSuchFieldError; {:try_start_879 .. :try_end_885} :catch_ebc

    :goto_885
    :try_start_885
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecGroup:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_891
    .catch Ljava/lang/NoSuchFieldError; {:try_start_885 .. :try_end_891} :catch_eb9

    .line 921
    :goto_891
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->values()[Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    :try_start_89a
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89a .. :try_end_8a5} :catch_eb6

    :goto_8a5
    :try_start_8a5
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a5 .. :try_end_8b0} :catch_eb3

    :goto_8b0
    :try_start_8b0
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b0 .. :try_end_8bb} :catch_eb0

    :goto_8bb
    :try_start_8bb
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8bb .. :try_end_8c6} :catch_ead

    :goto_8c6
    :try_start_8c6
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c6 .. :try_end_8d1} :catch_eaa

    :goto_8d1
    :try_start_8d1
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d1 .. :try_end_8dc} :catch_ea7

    :goto_8dc
    :try_start_8dc
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8dc .. :try_end_8e7} :catch_ea4

    :goto_8e7
    :try_start_8e7
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e7 .. :try_end_8f3} :catch_ea1

    :goto_8f3
    :try_start_8f3
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f3 .. :try_end_8ff} :catch_e9e

    :goto_8ff
    :try_start_8ff
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_90b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8ff .. :try_end_90b} :catch_e9b

    :goto_90b
    :try_start_90b
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_917
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90b .. :try_end_917} :catch_e98

    :goto_917
    :try_start_917
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_923
    .catch Ljava/lang/NoSuchFieldError; {:try_start_917 .. :try_end_923} :catch_e95

    :goto_923
    :try_start_923
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_92f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_923 .. :try_end_92f} :catch_e92

    :goto_92f
    :try_start_92f
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_93b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92f .. :try_end_93b} :catch_e8f

    :goto_93b
    :try_start_93b
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_947
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93b .. :try_end_947} :catch_e8c

    :goto_947
    :try_start_947
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_953
    .catch Ljava/lang/NoSuchFieldError; {:try_start_947 .. :try_end_953} :catch_e89

    :goto_953
    :try_start_953
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_95f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_953 .. :try_end_95f} :catch_e86

    :goto_95f
    :try_start_95f
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_96b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95f .. :try_end_96b} :catch_e83

    .line 885
    :goto_96b
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->values()[Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    :try_start_974
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_97f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_974 .. :try_end_97f} :catch_e80

    :goto_97f
    :try_start_97f
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_98a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97f .. :try_end_98a} :catch_e7d

    :goto_98a
    :try_start_98a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_995
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98a .. :try_end_995} :catch_e7a

    :goto_995
    :try_start_995
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_995 .. :try_end_9a0} :catch_e77

    :goto_9a0
    :try_start_9a0
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a0 .. :try_end_9ab} :catch_e74

    :goto_9ab
    :try_start_9ab
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9ab .. :try_end_9b6} :catch_e71

    :goto_9b6
    :try_start_9b6
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b6 .. :try_end_9c1} :catch_e6e

    :goto_9c1
    :try_start_9c1
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c1 .. :try_end_9cd} :catch_e6b

    :goto_9cd
    :try_start_9cd
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9cd .. :try_end_9d9} :catch_e68

    :goto_9d9
    :try_start_9d9
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d9 .. :try_end_9e5} :catch_e65

    :goto_9e5
    :try_start_9e5
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e5 .. :try_end_9f1} :catch_e62

    :goto_9f1
    :try_start_9f1
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_NULL:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f1 .. :try_end_9fd} :catch_e5f

    :goto_9fd
    :try_start_9fd
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a09
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9fd .. :try_end_a09} :catch_e5c

    :goto_a09
    :try_start_a09
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecIntegrity:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a09 .. :try_end_a15} :catch_e59

    .line 848
    :goto_a15
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->values()[Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    :try_start_a1e
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1e .. :try_end_a29} :catch_e56

    :goto_a29
    :try_start_a29
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a29 .. :try_end_a34} :catch_e53

    :goto_a34
    :try_start_a34
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a34 .. :try_end_a3f} :catch_e50

    :goto_a3f
    :try_start_a3f
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3f .. :try_end_a4a} :catch_e4d

    :goto_a4a
    :try_start_a4a
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4a .. :try_end_a55} :catch_e4a

    :goto_a55
    :try_start_a55
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a55 .. :try_end_a60} :catch_e47

    :goto_a60
    :try_start_a60
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a60 .. :try_end_a6b} :catch_e44

    :goto_a6b
    :try_start_a6b
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6b .. :try_end_a77} :catch_e41

    :goto_a77
    :try_start_a77
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a77 .. :try_end_a83} :catch_e3e

    :goto_a83
    :try_start_a83
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a83 .. :try_end_a8f} :catch_e3b

    :goto_a8f
    :try_start_a8f
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8f .. :try_end_a9b} :catch_e38

    :goto_a9b
    :try_start_a9b
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_aa7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9b .. :try_end_aa7} :catch_e35

    :goto_aa7
    :try_start_aa7
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_ab3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa7 .. :try_end_ab3} :catch_e32

    :goto_ab3
    :try_start_ab3
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecIntegrityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_abf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab3 .. :try_end_abf} :catch_e2f

    .line 811
    :goto_abf
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->values()[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    :try_start_ac8
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_ad3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac8 .. :try_end_ad3} :catch_e2c

    :goto_ad3
    :try_start_ad3
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ade
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad3 .. :try_end_ade} :catch_e29

    :goto_ade
    :try_start_ade
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ae9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ade .. :try_end_ae9} :catch_e26

    :goto_ae9
    :try_start_ae9
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_af4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae9 .. :try_end_af4} :catch_e23

    :goto_af4
    :try_start_af4
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_aff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af4 .. :try_end_aff} :catch_e20

    :goto_aff
    :try_start_aff
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b0a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aff .. :try_end_b0a} :catch_e1d

    :goto_b0a
    :try_start_b0a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0a .. :try_end_b15} :catch_e1a

    :goto_b15
    :try_start_b15
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b15 .. :try_end_b21} :catch_e17

    :goto_b21
    :try_start_b21
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b21 .. :try_end_b2d} :catch_e14

    :goto_b2d
    :try_start_b2d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_b39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2d .. :try_end_b39} :catch_e11

    :goto_b39
    :try_start_b39
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b39 .. :try_end_b45} :catch_e0e

    :goto_b45
    :try_start_b45
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b45 .. :try_end_b51} :catch_e0b

    :goto_b51
    :try_start_b51
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b51 .. :try_end_b5d} :catch_e08

    :goto_b5d
    :try_start_b5d
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPsecEncryption:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5d .. :try_end_b69} :catch_e05

    .line 775
    :goto_b69
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->values()[Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    :try_start_b72
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b72 .. :try_end_b7d} :catch_e02

    :goto_b7d
    :try_start_b7d
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7d .. :try_end_b88} :catch_dff

    :goto_b88
    :try_start_b88
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b88 .. :try_end_b93} :catch_dfc

    :goto_b93
    :try_start_b93
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b93 .. :try_end_b9e} :catch_df9

    :goto_b9e
    :try_start_b9e
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ba9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9e .. :try_end_ba9} :catch_df6

    :goto_ba9
    :try_start_ba9
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_bb4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba9 .. :try_end_bb4} :catch_df3

    :goto_bb4
    :try_start_bb4
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_CTR_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_bbf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb4 .. :try_end_bbf} :catch_df0

    :goto_bbf
    :try_start_bbf
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_bcb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bbf .. :try_end_bcb} :catch_ded

    :goto_bcb
    :try_start_bcb
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_192:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_bd7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bcb .. :try_end_bd7} :catch_dea

    :goto_bd7
    :try_start_bd7
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_be3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd7 .. :try_end_be3} :catch_de7

    :goto_be3
    :try_start_be3
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_bef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be3 .. :try_end_bef} :catch_de4

    :goto_bef
    :try_start_bef
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_ANY:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bfb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bef .. :try_end_bfb} :catch_de1

    :goto_bfb
    :try_start_bfb
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c07
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bfb .. :try_end_c07} :catch_dde

    :goto_c07
    :try_start_c07
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IpSecEncryptionType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c07 .. :try_end_c13} :catch_ddb

    .line 762
    :goto_c13
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$TunnelMode;->values()[Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    :try_start_c1c
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1c .. :try_end_c27} :catch_dd8

    :goto_c27
    :try_start_c27
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$TunnelMode:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$TunnelMode;->L2TP_OVER_IPSEC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c27 .. :try_end_c32} :catch_dd5

    .line 750
    :goto_c32
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->values()[Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    :try_start_c3b
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->IPSEC_RAC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3b .. :try_end_c46} :catch_dd2

    :goto_c46
    :try_start_c46
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$TunnelModeType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$TunnelModeType;->L2TP_OVER_IPSEC:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c46 .. :try_end_c51} :catch_dcf

    .line 726
    :goto_c51
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IdentityType;->values()[Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    :try_start_c5a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5a .. :try_end_c65} :catch_dcc

    :goto_c65
    :try_start_c65
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c65 .. :try_end_c70} :catch_dc9

    :goto_c70
    :try_start_c70
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c70 .. :try_end_c7b} :catch_dc6

    :goto_c7b
    :try_start_c7b
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7b .. :try_end_c86} :catch_dc3

    :goto_c86
    :try_start_c86
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c86 .. :try_end_c91} :catch_dc0

    :goto_c91
    :try_start_c91
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IdentityType:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IdentityType;->KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c91 .. :try_end_c9c} :catch_dbd

    .line 695
    :goto_c9c
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IdentityType;->values()[Lcom/sec/epdg/IWlanEnum$IdentityType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    :try_start_ca5
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV4_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_cb0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ca5 .. :try_end_cb0} :catch_dba

    :goto_cb0
    :try_start_cb0
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->IPV6_ADDR:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_cbb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb0 .. :try_end_cbb} :catch_db7

    :goto_cbb
    :try_start_cbb
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_cc6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cbb .. :try_end_cc6} :catch_db4

    :goto_cc6
    :try_start_cc6
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->USER_FQDN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_cd1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc6 .. :try_end_cd1} :catch_db1

    :goto_cd1
    :try_start_cd1
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->DN:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_cdc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd1 .. :try_end_cdc} :catch_dae

    :goto_cdc
    :try_start_cdc
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IdentityType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IdentityType;->KEY_ID:Lcom/sec/epdg/IWlanEnum$IdentityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_ce7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cdc .. :try_end_ce7} :catch_dab

    .line 680
    :goto_ce7
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$IPVersion;->values()[Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    :try_start_cf0
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_cfb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf0 .. :try_end_cfb} :catch_da8

    :goto_cfb
    :try_start_cfb
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d06
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cfb .. :try_end_d06} :catch_da5

    :goto_d06
    :try_start_d06
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$IPVersion:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d06 .. :try_end_d11} :catch_da2

    .line 666
    :goto_d11
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->values()[Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    :try_start_d1a
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1a .. :try_end_d25} :catch_da0

    :goto_d25
    :try_start_d25
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d25 .. :try_end_d30} :catch_d9e

    :goto_d30
    :try_start_d30
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecIpType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d30 .. :try_end_d3b} :catch_d9c

    .line 652
    :goto_d3b
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->values()[Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    :try_start_d44
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d44 .. :try_end_d4f} :catch_d9a

    :goto_d4f
    :try_start_d4f
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4f .. :try_end_d5a} :catch_d98

    :goto_d5a
    :try_start_d5a
    sget-object v0, $SwitchMap$com$ipsec$client$IPsecConnection$HostAuthentication:[I

    sget-object v1, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5a .. :try_end_d65} :catch_d96

    .line 637
    :goto_d65
    invoke-static {}, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->values()[Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    :try_start_d6e
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PRE_SHARED:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6e .. :try_end_d79} :catch_d94

    :goto_d79
    :try_start_d79
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->PUBLIC_KEY:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d79 .. :try_end_d84} :catch_d92

    :goto_d84
    :try_start_d84
    sget-object v0, $SwitchMap$com$sec$epdg$IWlanEnum$IPSecAuthType:[I

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecAuthType;->EAP:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d84 .. :try_end_d8f} :catch_d90

    :goto_d8f
    return-void

    :catch_d90
    move-exception v0

    goto :goto_d8f

    :catch_d92
    move-exception v0

    goto :goto_d84

    :catch_d94
    move-exception v0

    goto :goto_d79

    .line 652
    :catch_d96
    move-exception v0

    goto :goto_d65

    :catch_d98
    move-exception v0

    goto :goto_d5a

    :catch_d9a
    move-exception v0

    goto :goto_d4f

    .line 666
    :catch_d9c
    move-exception v0

    goto :goto_d3b

    :catch_d9e
    move-exception v0

    goto :goto_d30

    :catch_da0
    move-exception v0

    goto :goto_d25

    .line 680
    :catch_da2
    move-exception v0

    goto/16 :goto_d11

    :catch_da5
    move-exception v0

    goto/16 :goto_d06

    :catch_da8
    move-exception v0

    goto/16 :goto_cfb

    .line 695
    :catch_dab
    move-exception v0

    goto/16 :goto_ce7

    :catch_dae
    move-exception v0

    goto/16 :goto_cdc

    :catch_db1
    move-exception v0

    goto/16 :goto_cd1

    :catch_db4
    move-exception v0

    goto/16 :goto_cc6

    :catch_db7
    move-exception v0

    goto/16 :goto_cbb

    :catch_dba
    move-exception v0

    goto/16 :goto_cb0

    .line 726
    :catch_dbd
    move-exception v0

    goto/16 :goto_c9c

    :catch_dc0
    move-exception v0

    goto/16 :goto_c91

    :catch_dc3
    move-exception v0

    goto/16 :goto_c86

    :catch_dc6
    move-exception v0

    goto/16 :goto_c7b

    :catch_dc9
    move-exception v0

    goto/16 :goto_c70

    :catch_dcc
    move-exception v0

    goto/16 :goto_c65

    .line 750
    :catch_dcf
    move-exception v0

    goto/16 :goto_c51

    :catch_dd2
    move-exception v0

    goto/16 :goto_c46

    .line 762
    :catch_dd5
    move-exception v0

    goto/16 :goto_c32

    :catch_dd8
    move-exception v0

    goto/16 :goto_c27

    .line 775
    :catch_ddb
    move-exception v0

    goto/16 :goto_c13

    :catch_dde
    move-exception v0

    goto/16 :goto_c07

    :catch_de1
    move-exception v0

    goto/16 :goto_bfb

    :catch_de4
    move-exception v0

    goto/16 :goto_bef

    :catch_de7
    move-exception v0

    goto/16 :goto_be3

    :catch_dea
    move-exception v0

    goto/16 :goto_bd7

    :catch_ded
    move-exception v0

    goto/16 :goto_bcb

    :catch_df0
    move-exception v0

    goto/16 :goto_bbf

    :catch_df3
    move-exception v0

    goto/16 :goto_bb4

    :catch_df6
    move-exception v0

    goto/16 :goto_ba9

    :catch_df9
    move-exception v0

    goto/16 :goto_b9e

    :catch_dfc
    move-exception v0

    goto/16 :goto_b93

    :catch_dff
    move-exception v0

    goto/16 :goto_b88

    :catch_e02
    move-exception v0

    goto/16 :goto_b7d

    .line 811
    :catch_e05
    move-exception v0

    goto/16 :goto_b69

    :catch_e08
    move-exception v0

    goto/16 :goto_b5d

    :catch_e0b
    move-exception v0

    goto/16 :goto_b51

    :catch_e0e
    move-exception v0

    goto/16 :goto_b45

    :catch_e11
    move-exception v0

    goto/16 :goto_b39

    :catch_e14
    move-exception v0

    goto/16 :goto_b2d

    :catch_e17
    move-exception v0

    goto/16 :goto_b21

    :catch_e1a
    move-exception v0

    goto/16 :goto_b15

    :catch_e1d
    move-exception v0

    goto/16 :goto_b0a

    :catch_e20
    move-exception v0

    goto/16 :goto_aff

    :catch_e23
    move-exception v0

    goto/16 :goto_af4

    :catch_e26
    move-exception v0

    goto/16 :goto_ae9

    :catch_e29
    move-exception v0

    goto/16 :goto_ade

    :catch_e2c
    move-exception v0

    goto/16 :goto_ad3

    .line 848
    :catch_e2f
    move-exception v0

    goto/16 :goto_abf

    :catch_e32
    move-exception v0

    goto/16 :goto_ab3

    :catch_e35
    move-exception v0

    goto/16 :goto_aa7

    :catch_e38
    move-exception v0

    goto/16 :goto_a9b

    :catch_e3b
    move-exception v0

    goto/16 :goto_a8f

    :catch_e3e
    move-exception v0

    goto/16 :goto_a83

    :catch_e41
    move-exception v0

    goto/16 :goto_a77

    :catch_e44
    move-exception v0

    goto/16 :goto_a6b

    :catch_e47
    move-exception v0

    goto/16 :goto_a60

    :catch_e4a
    move-exception v0

    goto/16 :goto_a55

    :catch_e4d
    move-exception v0

    goto/16 :goto_a4a

    :catch_e50
    move-exception v0

    goto/16 :goto_a3f

    :catch_e53
    move-exception v0

    goto/16 :goto_a34

    :catch_e56
    move-exception v0

    goto/16 :goto_a29

    .line 885
    :catch_e59
    move-exception v0

    goto/16 :goto_a15

    :catch_e5c
    move-exception v0

    goto/16 :goto_a09

    :catch_e5f
    move-exception v0

    goto/16 :goto_9fd

    :catch_e62
    move-exception v0

    goto/16 :goto_9f1

    :catch_e65
    move-exception v0

    goto/16 :goto_9e5

    :catch_e68
    move-exception v0

    goto/16 :goto_9d9

    :catch_e6b
    move-exception v0

    goto/16 :goto_9cd

    :catch_e6e
    move-exception v0

    goto/16 :goto_9c1

    :catch_e71
    move-exception v0

    goto/16 :goto_9b6

    :catch_e74
    move-exception v0

    goto/16 :goto_9ab

    :catch_e77
    move-exception v0

    goto/16 :goto_9a0

    :catch_e7a
    move-exception v0

    goto/16 :goto_995

    :catch_e7d
    move-exception v0

    goto/16 :goto_98a

    :catch_e80
    move-exception v0

    goto/16 :goto_97f

    .line 921
    :catch_e83
    move-exception v0

    goto/16 :goto_96b

    :catch_e86
    move-exception v0

    goto/16 :goto_95f

    :catch_e89
    move-exception v0

    goto/16 :goto_953

    :catch_e8c
    move-exception v0

    goto/16 :goto_947

    :catch_e8f
    move-exception v0

    goto/16 :goto_93b

    :catch_e92
    move-exception v0

    goto/16 :goto_92f

    :catch_e95
    move-exception v0

    goto/16 :goto_923

    :catch_e98
    move-exception v0

    goto/16 :goto_917

    :catch_e9b
    move-exception v0

    goto/16 :goto_90b

    :catch_e9e
    move-exception v0

    goto/16 :goto_8ff

    :catch_ea1
    move-exception v0

    goto/16 :goto_8f3

    :catch_ea4
    move-exception v0

    goto/16 :goto_8e7

    :catch_ea7
    move-exception v0

    goto/16 :goto_8dc

    :catch_eaa
    move-exception v0

    goto/16 :goto_8d1

    :catch_ead
    move-exception v0

    goto/16 :goto_8c6

    :catch_eb0
    move-exception v0

    goto/16 :goto_8bb

    :catch_eb3
    move-exception v0

    goto/16 :goto_8b0

    :catch_eb6
    move-exception v0

    goto/16 :goto_8a5

    .line 965
    :catch_eb9
    move-exception v0

    goto/16 :goto_891

    :catch_ebc
    move-exception v0

    goto/16 :goto_885

    :catch_ebf
    move-exception v0

    goto/16 :goto_879

    :catch_ec2
    move-exception v0

    goto/16 :goto_86d

    :catch_ec5
    move-exception v0

    goto/16 :goto_861

    :catch_ec8
    move-exception v0

    goto/16 :goto_855

    :catch_ecb
    move-exception v0

    goto/16 :goto_849

    :catch_ece
    move-exception v0

    goto/16 :goto_83d

    :catch_ed1
    move-exception v0

    goto/16 :goto_831

    :catch_ed4
    move-exception v0

    goto/16 :goto_825

    :catch_ed7
    move-exception v0

    goto/16 :goto_819

    :catch_eda
    move-exception v0

    goto/16 :goto_80d

    :catch_edd
    move-exception v0

    goto/16 :goto_802

    :catch_ee0
    move-exception v0

    goto/16 :goto_7f7

    :catch_ee3
    move-exception v0

    goto/16 :goto_7ec

    :catch_ee6
    move-exception v0

    goto/16 :goto_7e1

    :catch_ee9
    move-exception v0

    goto/16 :goto_7d6

    :catch_eec
    move-exception v0

    goto/16 :goto_7cb

    .line 1010
    :catch_eef
    move-exception v0

    goto/16 :goto_7b7

    :catch_ef2
    move-exception v0

    goto/16 :goto_7ac

    .line 1023
    :catch_ef5
    move-exception v0

    goto/16 :goto_798

    :catch_ef8
    move-exception v0

    goto/16 :goto_78d

    .line 1035
    :catch_efb
    move-exception v0

    goto/16 :goto_779

    :catch_efe
    move-exception v0

    goto/16 :goto_76e

    .line 1047
    :catch_f01
    move-exception v0

    goto/16 :goto_75a

    :catch_f04
    move-exception v0

    goto/16 :goto_74f

    .line 1061
    :catch_f07
    move-exception v0

    goto/16 :goto_73b

    :catch_f0a
    move-exception v0

    goto/16 :goto_72f

    :catch_f0d
    move-exception v0

    goto/16 :goto_723

    :catch_f10
    move-exception v0

    goto/16 :goto_717

    :catch_f13
    move-exception v0

    goto/16 :goto_70c

    :catch_f16
    move-exception v0

    goto/16 :goto_701

    :catch_f19
    move-exception v0

    goto/16 :goto_6f6

    :catch_f1c
    move-exception v0

    goto/16 :goto_6eb

    :catch_f1f
    move-exception v0

    goto/16 :goto_6e0

    :catch_f22
    move-exception v0

    goto/16 :goto_6d5

    .line 1090
    :catch_f25
    move-exception v0

    goto/16 :goto_6c1

    :catch_f28
    move-exception v0

    goto/16 :goto_6b5

    :catch_f2b
    move-exception v0

    goto/16 :goto_6a9

    :catch_f2e
    move-exception v0

    goto/16 :goto_69d

    :catch_f31
    move-exception v0

    goto/16 :goto_692

    :catch_f34
    move-exception v0

    goto/16 :goto_687

    :catch_f37
    move-exception v0

    goto/16 :goto_67c

    :catch_f3a
    move-exception v0

    goto/16 :goto_671

    :catch_f3d
    move-exception v0

    goto/16 :goto_666

    :catch_f40
    move-exception v0

    goto/16 :goto_65b

    .line 1119
    :catch_f43
    move-exception v0

    goto/16 :goto_647

    :catch_f46
    move-exception v0

    goto/16 :goto_63b

    :catch_f49
    move-exception v0

    goto/16 :goto_62f

    :catch_f4c
    move-exception v0

    goto/16 :goto_623

    :catch_f4f
    move-exception v0

    goto/16 :goto_617

    :catch_f52
    move-exception v0

    goto/16 :goto_60b

    :catch_f55
    move-exception v0

    goto/16 :goto_5ff

    :catch_f58
    move-exception v0

    goto/16 :goto_5f3

    :catch_f5b
    move-exception v0

    goto/16 :goto_5e8

    :catch_f5e
    move-exception v0

    goto/16 :goto_5dd

    :catch_f61
    move-exception v0

    goto/16 :goto_5d2

    :catch_f64
    move-exception v0

    goto/16 :goto_5c7

    :catch_f67
    move-exception v0

    goto/16 :goto_5bc

    :catch_f6a
    move-exception v0

    goto/16 :goto_5b1

    .line 1156
    :catch_f6d
    move-exception v0

    goto/16 :goto_59d

    :catch_f70
    move-exception v0

    goto/16 :goto_591

    :catch_f73
    move-exception v0

    goto/16 :goto_585

    :catch_f76
    move-exception v0

    goto/16 :goto_579

    :catch_f79
    move-exception v0

    goto/16 :goto_56d

    :catch_f7c
    move-exception v0

    goto/16 :goto_561

    :catch_f7f
    move-exception v0

    goto/16 :goto_555

    :catch_f82
    move-exception v0

    goto/16 :goto_549

    :catch_f85
    move-exception v0

    goto/16 :goto_53e

    :catch_f88
    move-exception v0

    goto/16 :goto_533

    :catch_f8b
    move-exception v0

    goto/16 :goto_528

    :catch_f8e
    move-exception v0

    goto/16 :goto_51d

    :catch_f91
    move-exception v0

    goto/16 :goto_512

    :catch_f94
    move-exception v0

    goto/16 :goto_507

    .line 1192
    :catch_f97
    move-exception v0

    goto/16 :goto_4f3

    :catch_f9a
    move-exception v0

    goto/16 :goto_4e8

    :catch_f9d
    move-exception v0

    goto/16 :goto_4dd

    :catch_fa0
    move-exception v0

    goto/16 :goto_4d2

    .line 1209
    :catch_fa3
    move-exception v0

    goto/16 :goto_4be

    :catch_fa6
    move-exception v0

    goto/16 :goto_4b3

    :catch_fa9
    move-exception v0

    goto/16 :goto_4a8

    :catch_fac
    move-exception v0

    goto/16 :goto_49d

    .line 1227
    :catch_faf
    move-exception v0

    goto/16 :goto_489

    :catch_fb2
    move-exception v0

    goto/16 :goto_47d

    :catch_fb5
    move-exception v0

    goto/16 :goto_471

    :catch_fb8
    move-exception v0

    goto/16 :goto_465

    :catch_fbb
    move-exception v0

    goto/16 :goto_459

    :catch_fbe
    move-exception v0

    goto/16 :goto_44d

    :catch_fc1
    move-exception v0

    goto/16 :goto_441

    :catch_fc4
    move-exception v0

    goto/16 :goto_435

    :catch_fc7
    move-exception v0

    goto/16 :goto_429

    :catch_fca
    move-exception v0

    goto/16 :goto_41d

    :catch_fcd
    move-exception v0

    goto/16 :goto_411

    :catch_fd0
    move-exception v0

    goto/16 :goto_405

    :catch_fd3
    move-exception v0

    goto/16 :goto_3f9

    :catch_fd6
    move-exception v0

    goto/16 :goto_3ee

    :catch_fd9
    move-exception v0

    goto/16 :goto_3e3

    :catch_fdc
    move-exception v0

    goto/16 :goto_3d8

    :catch_fdf
    move-exception v0

    goto/16 :goto_3cd

    :catch_fe2
    move-exception v0

    goto/16 :goto_3c2

    :catch_fe5
    move-exception v0

    goto/16 :goto_3b7

    .line 1273
    :catch_fe8
    move-exception v0

    goto/16 :goto_3a3

    :catch_feb
    move-exception v0

    goto/16 :goto_397

    :catch_fee
    move-exception v0

    goto/16 :goto_38b

    :catch_ff1
    move-exception v0

    goto/16 :goto_37f

    :catch_ff4
    move-exception v0

    goto/16 :goto_373

    :catch_ff7
    move-exception v0

    goto/16 :goto_367

    :catch_ffa
    move-exception v0

    goto/16 :goto_35b

    :catch_ffd
    move-exception v0

    goto/16 :goto_34f

    :catch_1000
    move-exception v0

    goto/16 :goto_343

    :catch_1003
    move-exception v0

    goto/16 :goto_337

    :catch_1006
    move-exception v0

    goto/16 :goto_32b

    :catch_1009
    move-exception v0

    goto/16 :goto_31f

    :catch_100c
    move-exception v0

    goto/16 :goto_313

    :catch_100f
    move-exception v0

    goto/16 :goto_308

    :catch_1012
    move-exception v0

    goto/16 :goto_2fd

    :catch_1015
    move-exception v0

    goto/16 :goto_2f2

    :catch_1018
    move-exception v0

    goto/16 :goto_2e7

    :catch_101b
    move-exception v0

    goto/16 :goto_2dc

    :catch_101e
    move-exception v0

    goto/16 :goto_2d1

    .line 1320
    :catch_1021
    move-exception v0

    goto/16 :goto_2bd

    :catch_1024
    move-exception v0

    goto/16 :goto_2b2

    :catch_1027
    move-exception v0

    goto/16 :goto_2a7

    .line 1336
    :catch_102a
    move-exception v0

    goto/16 :goto_293

    :catch_102d
    move-exception v0

    goto/16 :goto_288

    :catch_1030
    move-exception v0

    goto/16 :goto_27d

    .line 1719
    :catch_1033
    move-exception v0

    goto/16 :goto_269

    :catch_1036
    move-exception v0

    goto/16 :goto_25e

    :catch_1039
    move-exception v0

    goto/16 :goto_253

    :catch_103c
    move-exception v0

    goto/16 :goto_248

    :catch_103f
    move-exception v0

    goto/16 :goto_23d

    :catch_1042
    move-exception v0

    goto/16 :goto_232

    .line 1738
    :catch_1045
    move-exception v0

    goto/16 :goto_21e

    :catch_1048
    move-exception v0

    goto/16 :goto_212

    :catch_104b
    move-exception v0

    goto/16 :goto_206

    :catch_104e
    move-exception v0

    goto/16 :goto_1fa

    :catch_1051
    move-exception v0

    goto/16 :goto_1ee

    :catch_1054
    move-exception v0

    goto/16 :goto_1e2

    :catch_1057
    move-exception v0

    goto/16 :goto_1d6

    :catch_105a
    move-exception v0

    goto/16 :goto_1ca

    :catch_105d
    move-exception v0

    goto/16 :goto_1be

    :catch_1060
    move-exception v0

    goto/16 :goto_1b2

    :catch_1063
    move-exception v0

    goto/16 :goto_1a6

    :catch_1066
    move-exception v0

    goto/16 :goto_19a

    :catch_1069
    move-exception v0

    goto/16 :goto_18e

    :catch_106c
    move-exception v0

    goto/16 :goto_182

    :catch_106f
    move-exception v0

    goto/16 :goto_176

    :catch_1072
    move-exception v0

    goto/16 :goto_16a

    :catch_1075
    move-exception v0

    goto/16 :goto_15e

    :catch_1078
    move-exception v0

    goto/16 :goto_152

    :catch_107b
    move-exception v0

    goto/16 :goto_146

    :catch_107e
    move-exception v0

    goto/16 :goto_13a

    :catch_1081
    move-exception v0

    goto/16 :goto_12e

    :catch_1084
    move-exception v0

    goto/16 :goto_122

    :catch_1087
    move-exception v0

    goto/16 :goto_116

    :catch_108a
    move-exception v0

    goto/16 :goto_10a

    :catch_108d
    move-exception v0

    goto/16 :goto_fe

    :catch_1090
    move-exception v0

    goto/16 :goto_f2

    :catch_1093
    move-exception v0

    goto/16 :goto_e6

    :catch_1096
    move-exception v0

    goto/16 :goto_da

    :catch_1099
    move-exception v0

    goto/16 :goto_ce

    :catch_109c
    move-exception v0

    goto/16 :goto_c2

    :catch_109f
    move-exception v0

    goto/16 :goto_b6

    :catch_10a2
    move-exception v0

    goto/16 :goto_aa

    :catch_10a5
    move-exception v0

    goto/16 :goto_9e

    :catch_10a8
    move-exception v0

    goto/16 :goto_92

    :catch_10ab
    move-exception v0

    goto/16 :goto_86

    :catch_10ae
    move-exception v0

    goto/16 :goto_7a

    :catch_10b1
    move-exception v0

    goto/16 :goto_6e

    :catch_10b4
    move-exception v0

    goto/16 :goto_62

    :catch_10b7
    move-exception v0

    goto/16 :goto_56

    :catch_10ba
    move-exception v0

    goto/16 :goto_4b

    :catch_10bd
    move-exception v0

    goto/16 :goto_40

    :catch_10c0
    move-exception v0

    goto/16 :goto_35

    :catch_10c3
    move-exception v0

    goto/16 :goto_2a

    :catch_10c6
    move-exception v0

    goto/16 :goto_1f

    :catch_10c9
    move-exception v0

    goto/16 :goto_14
.end method
