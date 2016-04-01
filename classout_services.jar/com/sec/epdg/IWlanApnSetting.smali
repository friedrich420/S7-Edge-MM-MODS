.class public Lcom/sec/epdg/IWlanApnSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IWlanApnSetting$1;,
        Lcom/sec/epdg/IWlanApnSetting$IKeSetting;,
        Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IWlanSettingName:Ljava/lang/String;

.field private ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

.field private ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

.field private mApnType:Ljava/lang/String;

.field private mIkeVirtualAdapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

.field private mImei:Lcom/sec/epdg/IWlanEnum$Imei;

.field private mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field private mIpSecUserAuthval:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

.field private mIpSecauthType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

.field private mIpsecOwnUri:Ljava/lang/String;

.field private mIpsecRemoteUri:Ljava/lang/String;

.field private mMobikeval:Lcom/sec/epdg/IWlanEnum$Mobike;

.field private mOwnUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private mPeriodicDpdTimer:I

.field private mPfsval:Lcom/sec/epdg/IWlanEnum$PfsState;

.field private mRemoteUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

.field private pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, instances:Ljava/util/Map;

    .line 69
    const-string v0, "[IWLANAPNSETTING]"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/sec/epdg/IWlanEnum$PcscfConf;->PCSCF_CONF_NONE:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    iput-object v0, p0, pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    .line 61
    sget-object v0, Lcom/sec/epdg/IWlanEnum$Imei;->NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    iput-object v0, p0, mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 72
    new-instance v0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    invoke-direct {v0, v1}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting$1;)V

    iput-object v0, p0, ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    .line 73
    new-instance v0, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    invoke-direct {v0, v1}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;-><init>(Lcom/sec/epdg/IWlanApnSetting$1;)V

    iput-object v0, p0, ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    .line 74
    return-void
.end method

.method public static declared-synchronized getIWlanApnSettingInstance(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;ILcom/sec/epdg/IWlanEnum$Mobike;Lcom/sec/epdg/IWlanEnum$Imei;)Lcom/sec/epdg/IWlanApnSetting;
    .registers 65
    .param p0, "iWlanSettingName2"    # Ljava/lang/String;
    .param p1, "ipsecUserAuthval"    # Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    .param p2, "pfsval"    # Lcom/sec/epdg/IWlanEnum$PfsState;
    .param p3, "iptype"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p4, "ownUriType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p5, "ownUri"    # Ljava/lang/String;
    .param p6, "remoteuritype"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p7, "remoteUri"    # Ljava/lang/String;
    .param p8, "apnType"    # Ljava/lang/String;
    .param p9, "ipsecauthtype"    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .param p10, "adapterConf"    # Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .param p11, "tunnelmode"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .param p12, "ipsecencryptiontype"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .param p13, "ipsecintegrity"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .param p14, "ipsecdhgroup"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .param p15, "ipseclifetype"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p16, "ipseclifeval"    # I
    .param p17, "ikeversion"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .param p18, "ikeencryption"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .param p19, "ikeintegrity"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .param p20, "ikedhgroup"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .param p21, "ikelife"    # I
    .param p22, "ikewindow"    # I
    .param p23, "ikeconntimeout"    # I
    .param p24, "ikedpdtimeout"    # I
    .param p25, "eaptype"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .param p26, "ikenatval"    # I
    .param p27, "pcscfVendorAt"    # Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .param p28, "periodicDpdTimer"    # I
    .param p29, "mobikeval"    # Lcom/sec/epdg/IWlanEnum$Mobike;
    .param p30, "imeiVendorAt"    # Lcom/sec/epdg/IWlanEnum$Imei;

    .prologue
    .line 86
    const-class v33, Lcom/sec/epdg/IWlanApnSetting;

    monitor-enter v33

    :try_start_3
    sget-object v2, instances:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/IWlanApnSetting;

    .line 88
    .local v1, "instance":Lcom/sec/epdg/IWlanApnSetting;
    if-nez v1, :cond_1b

    .line 89
    new-instance v1, Lcom/sec/epdg/IWlanApnSetting;

    .end local v1    # "instance":Lcom/sec/epdg/IWlanApnSetting;
    invoke-direct {v1}, <init>()V

    .line 90
    .restart local v1    # "instance":Lcom/sec/epdg/IWlanApnSetting;
    sget-object v2, instances:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move/from16 v25, p23

    move/from16 v26, p24

    move-object/from16 v27, p25

    move/from16 v28, p26

    move-object/from16 v29, p27

    move/from16 v30, p28

    move-object/from16 v31, p29

    move-object/from16 v32, p30

    .line 92
    invoke-direct/range {v1 .. v32}, updateVariableValues(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;ILcom/sec/epdg/IWlanEnum$Mobike;Lcom/sec/epdg/IWlanEnum$Imei;)V
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5e

    .line 98
    monitor-exit v33

    return-object v1

    .line 86
    .end local v1    # "instance":Lcom/sec/epdg/IWlanApnSetting;
    :catchall_5e
    move-exception v2

    monitor-exit v33

    throw v2
.end method

.method private updateVariableValues(Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;Lcom/sec/epdg/IWlanEnum$PfsState;Lcom/sec/epdg/IWlanEnum$IPSecIpType;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IdentityType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/epdg/IWlanEnum$IPSecAuthType;Lcom/sec/epdg/IWlanEnum$AdapterConf;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;ILcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;ILcom/sec/epdg/IWlanEnum$PcscfConf;ILcom/sec/epdg/IWlanEnum$Mobike;Lcom/sec/epdg/IWlanEnum$Imei;)V
    .registers 44
    .param p1, "iWlanSettingName2"    # Ljava/lang/String;
    .param p2, "ipsecUserAuthval"    # Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    .param p3, "pfsval"    # Lcom/sec/epdg/IWlanEnum$PfsState;
    .param p4, "iptype"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p5, "ownUriType"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p6, "ownUri"    # Ljava/lang/String;
    .param p7, "remoteuritype"    # Lcom/sec/epdg/IWlanEnum$IdentityType;
    .param p8, "remoteUri"    # Ljava/lang/String;
    .param p9, "apnType"    # Ljava/lang/String;
    .param p10, "ipsecauthtype"    # Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .param p11, "adapterConf"    # Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .param p12, "tunnelmode"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .param p13, "ipsecencryptiontype"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .param p14, "ipsecintegrity"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .param p15, "ipsecdhgroup"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .param p16, "ipseclifetype"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p17, "ipseclifeval"    # I
    .param p18, "ikeversion"    # Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .param p19, "ikeencryption"    # Lcom/sec/epdg/IWlanEnum$IkeEncryption;
    .param p20, "ikeintegrity"    # Lcom/sec/epdg/IWlanEnum$IkeIntegrity;
    .param p21, "ikedhgroup"    # Lcom/sec/epdg/IWlanEnum$IkeDhGroup;
    .param p22, "ikelife"    # I
    .param p23, "ikewindow"    # I
    .param p24, "ikeconntimeout"    # I
    .param p25, "ikedpdtimeout"    # I
    .param p26, "eaptype"    # Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .param p27, "ikenatval"    # I
    .param p28, "pcscfVendorAt"    # Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .param p29, "periodicDpdTimer"    # I
    .param p30, "mobikeval"    # Lcom/sec/epdg/IWlanEnum$Mobike;
    .param p31, "imeiVendorAt"    # Lcom/sec/epdg/IWlanEnum$Imei;

    .prologue
    .line 111
    iput-object p1, p0, IWlanSettingName:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p5

    iput-object v0, p0, mOwnUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 113
    move-object/from16 v0, p6

    iput-object v0, p0, mIpsecOwnUri:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p7

    iput-object v0, p0, mRemoteUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    .line 115
    move-object/from16 v0, p8

    iput-object v0, p0, mIpsecRemoteUri:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p9

    iput-object v0, p0, mApnType:Ljava/lang/String;

    .line 117
    iput-object p2, p0, mIpSecUserAuthval:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    .line 118
    iput-object p3, p0, mPfsval:Lcom/sec/epdg/IWlanEnum$PfsState;

    .line 119
    move-object/from16 v0, p10

    iput-object v0, p0, mIpSecauthType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    .line 120
    move-object/from16 v0, p4

    iput-object v0, p0, mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 121
    move-object/from16 v0, p11

    iput-object v0, p0, mIkeVirtualAdapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 122
    move-object/from16 v0, p28

    iput-object v0, p0, pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    .line 123
    move/from16 v0, p29

    iput v0, p0, mPeriodicDpdTimer:I

    .line 124
    move-object/from16 v0, p30

    iput-object v0, p0, mMobikeval:Lcom/sec/epdg/IWlanEnum$Mobike;

    .line 125
    move-object/from16 v0, p31

    iput-object v0, p0, mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 126
    iget-object v1, p0, ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    move/from16 v7, p17

    # invokes: Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->updateIpsecValues(Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    invoke-static/range {v1 .. v7}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->access$200(Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V

    .line 128
    iget-object v1, p0, ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    move-object/from16 v5, p21

    move/from16 v6, p22

    move/from16 v7, p23

    move/from16 v8, p24

    move/from16 v9, p25

    move-object/from16 v10, p26

    move/from16 v11, p27

    # invokes: Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->updateIkeValues(Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V
    invoke-static/range {v1 .. v11}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->access$300(Lcom/sec/epdg/IWlanApnSetting$IKeSetting;Lcom/sec/epdg/IWlanEnum$Ikeversion;Lcom/sec/epdg/IWlanEnum$IkeEncryption;Lcom/sec/epdg/IWlanEnum$IkeIntegrity;Lcom/sec/epdg/IWlanEnum$IkeDhGroup;IIIILcom/sec/epdg/IWlanEnum$IkeEapType;I)V

    .line 130
    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/epdg/IWlanApnSetting;
    .registers 4

    .prologue
    .line 135
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/IWlanApnSetting;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 136
    :catch_7
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "CloneNotSupportedException IWlanApnSetting"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Is too"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public getIWlanSettingName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, IWlanSettingName:Ljava/lang/String;

    return-object v0
.end method

.method public getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, ikesetting:Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    return-object v0
.end method

.method public getImeiVendorAttrVal()Lcom/sec/epdg/IWlanEnum$Imei;
    .registers 4

    .prologue
    .line 214
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getimeiVendorAttrVal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, mImei:Lcom/sec/epdg/IWlanEnum$Imei;

    return-object v0
.end method

.method public getIpsecsetting()Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, ipsecsetting:Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;

    return-object v0
.end method

.method public getMobikeattributes()Lcom/sec/epdg/IWlanEnum$Mobike;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, mMobikeval:Lcom/sec/epdg/IWlanEnum$Mobike;

    return-object v0
.end method

.method public getPcscfattributes()Lcom/sec/epdg/IWlanEnum$PcscfConf;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, pcscfattributes:Lcom/sec/epdg/IWlanEnum$PcscfConf;

    return-object v0
.end method

.method public getPeriodicDpdTimer()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, mPeriodicDpdTimer:I

    return v0
.end method

.method public getePDGIp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmApnType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getmIkeVirtualAdapterConf()Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, mIkeVirtualAdapterConf:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public getmIpSecIpType()Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getmIpSecUserAuthval()Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, mIpSecUserAuthval:Lcom/sec/epdg/IWlanEnum$IPSecUserAuthState;

    return-object v0
.end method

.method public getmIpSecauthType()Lcom/sec/epdg/IWlanEnum$IPSecAuthType;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, mIpSecauthType:Lcom/sec/epdg/IWlanEnum$IPSecAuthType;

    return-object v0
.end method

.method public getmIpsecOwnUri(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 171
    iget-object v2, p0, mIpsecOwnUri:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sec/epdg/EpdgUtils;->updateOnwUriImsi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "mImsiUri":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sec/epdg/EpdgUtils;->includeIdi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "mMacUri":Ljava/lang/String;
    const/4 v2, 0x0

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getmIpsecOwnUri() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v1
.end method

.method public getmIpsecRemoteUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, mIpsecRemoteUri:Ljava/lang/String;

    return-object v0
.end method

.method public getmOwnUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, mOwnUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public getmPfsval()Lcom/sec/epdg/IWlanEnum$PfsState;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, mPfsval:Lcom/sec/epdg/IWlanEnum$PfsState;

    return-object v0
.end method

.method public getmRemoteUriType()Lcom/sec/epdg/IWlanEnum$IdentityType;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, mRemoteUriType:Lcom/sec/epdg/IWlanEnum$IdentityType;

    return-object v0
.end method

.method public setmIpSecIpType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V
    .registers 2
    .param p1, "mIpSecIpType"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .prologue
    .line 143
    iput-object p1, p0, mIpSecIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 144
    return-void
.end method
