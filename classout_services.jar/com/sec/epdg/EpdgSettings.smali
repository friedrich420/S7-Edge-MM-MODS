.class public Lcom/sec/epdg/EpdgSettings;
.super Ljava/lang/Object;
.source "EpdgSettings.java"


# static fields
.field private static mEpdgSettings:Lcom/sec/epdg/EpdgSettings;


# instance fields
.field private mAlwaysOnApnType:Ljava/lang/String;

.field private mAttachPdn:Ljava/lang/String;

.field private mCdmaRssi:I

.field private mEmergencyApnType:Ljava/lang/String;

.field private mEpdgFqdn:Ljava/lang/String;

.field private mIdiImsi:I

.field private mIdiMac:I

.field private mImeiVendorAttr:I

.field private mIsAnsIntegrationEnabled:Z

.field private mIsBroadcastHONotiEnabled:Z

.field private mIsConnectedModeDpdAllow:Z

.field private mIsDynamicFqdn:Z

.field private mIsDynamicUserFqdn:Z

.field private mIsIpv6Enabled:Z

.field private mIsIpv6Preferred:Z

.field private mIsRetryEnabledForAlwaysOnApn:Z

.field private mIsRtcpIntegrationEnabled:Z

.field private mIsTestingOnDemandPdnHandoff:Z

.field private mIsThrottlingEnabled:Z

.field private mIsVowifiOn:Z

.field private mKeepAliveTimer:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mPcscfv4:I

.field private mPcscfv6:I

.field private mPktLossPercent:I

.field private mSmartWifiTimer:I

.field private mSysSelTimer:I

.field private mTepdg1xScanTimer:I

.field private mTepdg1xTimer:I

.field private mTepdgLteTimer:I

.field private mTestInterfaceNum:I

.field private mThreshold2gRoveIn:I

.field private mThreshold2gRoveOut:I

.field private mThreshold3gRoveIn:I

.field private mThreshold3gRoveOut:I

.field private mThreshold4gRoveIn:I

.field private mThreshold4gRoveOut:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I

.field private mWifiRssiC:I

.field private mWifiRssiRoveInWifiOnly:I

.field private mWifiRssiRoveOutWifiOnly:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-object v0, mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static getInstance()Lcom/sec/epdg/EpdgSettings;
    .registers 44

    .prologue
    .line 161
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 162
    const/16 v0, -0x47

    const/16 v1, -0x4f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0x6e

    const/16 v6, -0x73

    const/16 v7, -0x75

    const/4 v8, -0x7

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x78

    const/16 v17, 0x78

    const/16 v18, 0x78

    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x5

    const v24, 0x5265c0

    const-string/jumbo v25, "epdg.epc.mnc260.mcc310.pub.3gppnetwork.org"

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x1

    const-string/jumbo v31, "default"

    const-string/jumbo v32, "ims"

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x4000

    const/16 v37, 0x4002

    const/16 v38, 0x4007

    const/16 v39, 0x1

    const-string/jumbo v40, "none"

    const/16 v41, 0x1

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v0 .. v43}, getInstance(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    .line 166
    :goto_61
    return-object v0

    :cond_62
    const/16 v0, -0x48

    const/16 v1, -0x50

    const/16 v2, -0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0x6e

    const/16 v6, -0x73

    const/16 v7, -0x75

    const/4 v8, -0x7

    const/16 v9, 0x64

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x78

    const/16 v17, 0x78

    const/16 v18, 0x78

    const/16 v19, 0x5

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x5

    const v24, 0x5265c0

    const-string/jumbo v25, "wo.vzwwo.com"

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const-string/jumbo v31, "ims"

    const-string/jumbo v32, "ims"

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x4005

    const/16 v37, 0x4006

    const/16 v38, 0x4007

    const/16 v39, 0x0

    const-string/jumbo v40, "emergency"

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v0 .. v43}, getInstance(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    goto :goto_61
.end method

.method public static getInstance(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)Lcom/sec/epdg/EpdgSettings;
    .registers 89
    .param p0, "wifiRssiA"    # I
    .param p1, "wifiRssiB"    # I
    .param p2, "wifiRssiC"    # I
    .param p3, "wifiRssiRoveInWifiOnly"    # I
    .param p4, "wifiRssiRoveOutWifiOnly"    # I
    .param p5, "lteRsrp1"    # I
    .param p6, "lteRsrp2"    # I
    .param p7, "lteRsrp3"    # I
    .param p8, "cdmaRssi"    # I
    .param p9, "pktLossPercent"    # I
    .param p10, "threshold4gRoveIn"    # I
    .param p11, "threshold4gRoveOut"    # I
    .param p12, "threshold3gRoveIn"    # I
    .param p13, "threshold3gRoveOut"    # I
    .param p14, "threshold2gRoveIn"    # I
    .param p15, "threshold2gRoveOut"    # I
    .param p16, "sysSelTimer"    # I
    .param p17, "tepdgLteTimer"    # I
    .param p18, "tepdg1xTimer"    # I
    .param p19, "tepdg1xScanTimer"    # I
    .param p20, "idimac"    # I
    .param p21, "idiImsi"    # I
    .param p22, "isRetryEnabledForAlwaysOnApn"    # Z
    .param p23, "smartWifiTimer"    # I
    .param p24, "keepAliveTimer"    # I
    .param p25, "EpdgFQDN"    # Ljava/lang/String;
    .param p26, "isDynamicFQDN"    # Z
    .param p27, "isDynamicUserFQDN"    # Z
    .param p28, "isAnsIntegrationEnabled"    # Z
    .param p29, "isRtcpIntegrationEnabled"    # Z
    .param p30, "isBroadcastHONotiEnabled"    # Z
    .param p31, "attachPdn"    # Ljava/lang/String;
    .param p32, "alwaysOnApnType"    # Ljava/lang/String;
    .param p33, "isVowifiOn"    # Z
    .param p34, "isTestingOnDemandPdnHandoff"    # Z
    .param p35, "isThrottlingEnabled"    # Z
    .param p36, "pcscfv4"    # I
    .param p37, "pcscfv6"    # I
    .param p38, "imei"    # I
    .param p39, "testInterfaceNum"    # I
    .param p40, "emergencyApnType"    # Ljava/lang/String;
    .param p41, "isConnectedModeDpdAllow"    # Z
    .param p42, "isIpv6Enabled"    # Z
    .param p43, "isIpv6Preferred"    # Z

    .prologue
    .line 178
    sget-object v0, mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    if-nez v0, :cond_b

    .line 179
    new-instance v0, Lcom/sec/epdg/EpdgSettings;

    invoke-direct {v0}, <init>()V

    sput-object v0, mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    .line 181
    :cond_b
    sget-object v0, mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move/from16 v39, p38

    move/from16 v40, p39

    move-object/from16 v41, p40

    move/from16 v42, p41

    move/from16 v43, p42

    move/from16 v44, p43

    invoke-direct/range {v0 .. v44}, updateVariableValues(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)V

    .line 189
    sget-object v0, mEpdgSettings:Lcom/sec/epdg/EpdgSettings;

    return-object v0
.end method

.method private updateVariableValues(IIIIIIIIIIIIIIIIIIIIIIZIILjava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;ZZZIIIILjava/lang/String;ZZZ)V
    .registers 46
    .param p1, "wifiRssiA"    # I
    .param p2, "wifiRssiB"    # I
    .param p3, "wifiRssiC"    # I
    .param p4, "wifiRssiRoveInWifiOnly"    # I
    .param p5, "wifiRssiRoveOutWifiOnly"    # I
    .param p6, "lteRsrp1"    # I
    .param p7, "lteRsrp2"    # I
    .param p8, "lteRsrp3"    # I
    .param p9, "cdmaRssi"    # I
    .param p10, "pktLossPercent"    # I
    .param p11, "threshold4gRoveIn"    # I
    .param p12, "threshold4gRoveOut"    # I
    .param p13, "threshold3gRoveIn"    # I
    .param p14, "threshold3gRoveOut"    # I
    .param p15, "threshold2gRoveIn"    # I
    .param p16, "threshold2gRoveOut"    # I
    .param p17, "sysSelTimer"    # I
    .param p18, "tepdgLteTimer"    # I
    .param p19, "tepdg1xTimer"    # I
    .param p20, "tepdg1xScanTimer"    # I
    .param p21, "idimac"    # I
    .param p22, "idiImsi"    # I
    .param p23, "isDataRetryEnabled"    # Z
    .param p24, "smartWifiTimer"    # I
    .param p25, "keepAliveTimer"    # I
    .param p26, "epdgFqdn"    # Ljava/lang/String;
    .param p27, "isDynamicFqdn"    # Z
    .param p28, "isDynamicUserFqdn"    # Z
    .param p29, "isAnsIntegrationEnabled"    # Z
    .param p30, "isRtcpIntegrationEnabled"    # Z
    .param p31, "isBroadcastHONotiEnabled"    # Z
    .param p32, "attachPdn"    # Ljava/lang/String;
    .param p33, "alwaysOnApnType"    # Ljava/lang/String;
    .param p34, "isVowifiOn"    # Z
    .param p35, "isTestingOnDemandPdnHandoff"    # Z
    .param p36, "isThrottlingEnabled"    # Z
    .param p37, "pcscfv4"    # I
    .param p38, "pcscfv6"    # I
    .param p39, "imei"    # I
    .param p40, "testInterfaceNum"    # I
    .param p41, "emergencyApnType"    # Ljava/lang/String;
    .param p42, "isConnectedModeDpdAllow"    # Z
    .param p43, "isIpv6Enabled"    # Z
    .param p44, "isIpv6Preferred"    # Z

    .prologue
    .line 114
    iput p1, p0, mWifiRssiA:I

    .line 115
    iput p2, p0, mWifiRssiB:I

    .line 116
    iput p3, p0, mWifiRssiC:I

    .line 117
    iput p4, p0, mWifiRssiRoveInWifiOnly:I

    .line 118
    iput p5, p0, mWifiRssiRoveOutWifiOnly:I

    .line 119
    iput p6, p0, mLteRsrp1:I

    .line 120
    iput p7, p0, mLteRsrp2:I

    .line 121
    iput p8, p0, mLteRsrp3:I

    .line 122
    iput p9, p0, mCdmaRssi:I

    .line 123
    iput p10, p0, mPktLossPercent:I

    .line 124
    iput p11, p0, mThreshold4gRoveIn:I

    .line 125
    iput p12, p0, mThreshold4gRoveOut:I

    .line 126
    iput p13, p0, mThreshold3gRoveIn:I

    .line 127
    iput p14, p0, mThreshold3gRoveOut:I

    .line 128
    move/from16 v0, p15

    iput v0, p0, mThreshold2gRoveIn:I

    .line 129
    move/from16 v0, p16

    iput v0, p0, mThreshold2gRoveOut:I

    .line 130
    move/from16 v0, p17

    iput v0, p0, mSysSelTimer:I

    .line 131
    move/from16 v0, p18

    iput v0, p0, mTepdgLteTimer:I

    .line 132
    move/from16 v0, p19

    iput v0, p0, mTepdg1xTimer:I

    .line 133
    move/from16 v0, p20

    iput v0, p0, mTepdg1xScanTimer:I

    .line 134
    move/from16 v0, p21

    iput v0, p0, mIdiMac:I

    .line 135
    move/from16 v0, p22

    iput v0, p0, mIdiImsi:I

    .line 136
    move/from16 v0, p23

    iput-boolean v0, p0, mIsRetryEnabledForAlwaysOnApn:Z

    .line 137
    move/from16 v0, p24

    iput v0, p0, mSmartWifiTimer:I

    .line 138
    move/from16 v0, p25

    iput v0, p0, mKeepAliveTimer:I

    .line 139
    move-object/from16 v0, p26

    iput-object v0, p0, mEpdgFqdn:Ljava/lang/String;

    .line 140
    move/from16 v0, p27

    iput-boolean v0, p0, mIsDynamicFqdn:Z

    .line 141
    move/from16 v0, p28

    iput-boolean v0, p0, mIsDynamicUserFqdn:Z

    .line 142
    move/from16 v0, p29

    iput-boolean v0, p0, mIsAnsIntegrationEnabled:Z

    .line 143
    move/from16 v0, p30

    iput-boolean v0, p0, mIsRtcpIntegrationEnabled:Z

    .line 144
    move/from16 v0, p31

    iput-boolean v0, p0, mIsBroadcastHONotiEnabled:Z

    .line 145
    move-object/from16 v0, p32

    iput-object v0, p0, mAttachPdn:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p33

    iput-object v0, p0, mAlwaysOnApnType:Ljava/lang/String;

    .line 147
    move/from16 v0, p34

    iput-boolean v0, p0, mIsVowifiOn:Z

    .line 148
    move/from16 v0, p35

    iput-boolean v0, p0, mIsTestingOnDemandPdnHandoff:Z

    .line 149
    move/from16 v0, p36

    iput-boolean v0, p0, mIsThrottlingEnabled:Z

    .line 150
    move/from16 v0, p37

    iput v0, p0, mPcscfv4:I

    .line 151
    move/from16 v0, p38

    iput v0, p0, mPcscfv6:I

    .line 152
    move/from16 v0, p39

    iput v0, p0, mImeiVendorAttr:I

    .line 153
    move/from16 v0, p40

    iput v0, p0, mTestInterfaceNum:I

    .line 154
    move-object/from16 v0, p41

    iput-object v0, p0, mEmergencyApnType:Ljava/lang/String;

    .line 155
    move/from16 v0, p42

    iput-boolean v0, p0, mIsConnectedModeDpdAllow:Z

    .line 156
    move/from16 v0, p43

    iput-boolean v0, p0, mIsIpv6Enabled:Z

    .line 157
    move/from16 v0, p44

    iput-boolean v0, p0, mIsIpv6Preferred:Z

    .line 158
    return-void
.end method


# virtual methods
.method public getAlwaysOnApn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, mAlwaysOnApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, mAttachPdn:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachPdnId()I
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, mAttachPdn:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCdmaRssi()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, mCdmaRssi:I

    return v0
.end method

.method public getEmergencyApnType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, mEmergencyApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getEpdgFQDN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, mEpdgFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getIdiImsi()I
    .registers 2

    .prologue
    .line 277
    iget v0, p0, mIdiImsi:I

    return v0
.end method

.method public getIdiMac()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, mIdiMac:I

    return v0
.end method

.method public getImeiVendorAttrType()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, mImeiVendorAttr:I

    return v0
.end method

.method public getIsAnsIntegrationEnabled()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, mIsAnsIntegrationEnabled:Z

    return v0
.end method

.method public getIsBroadcastHONotiEnabled()Z
    .registers 2

    .prologue
    .line 313
    iget-boolean v0, p0, mIsBroadcastHONotiEnabled:Z

    return v0
.end method

.method public getIsDynamicFQDN()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, mIsDynamicFqdn:Z

    return v0
.end method

.method public getIsDynamicUserFQDN()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, mIsDynamicUserFqdn:Z

    return v0
.end method

.method public getIsIpv6Enabled()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, mIsIpv6Enabled:Z

    return v0
.end method

.method public getIsIpv6Preferred()Z
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, mIsIpv6Preferred:Z

    return v0
.end method

.method public getIsRtcpIntegrationEnabled()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, mIsRtcpIntegrationEnabled:Z

    return v0
.end method

.method public getIsTestingOnDemandPdnHandoff()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, mIsTestingOnDemandPdnHandoff:Z

    return v0
.end method

.method public getIsVoWifiEnabled()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, mIsVowifiOn:Z

    return v0
.end method

.method public getLteRsrp1()I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, mLteRsrp3:I

    return v0
.end method

.method public getPcscfv4VendorAttr()I
    .registers 2

    .prologue
    .line 341
    iget v0, p0, mPcscfv4:I

    return v0
.end method

.method public getPcscfv6VendorAttr()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, mPcscfv6:I

    return v0
.end method

.method public getPktLossPercent()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, mPktLossPercent:I

    return v0
.end method

.method public getSmartWifiTimer()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, mSmartWifiTimer:I

    return v0
.end method

.method public getSysSelTimer()I
    .registers 2

    .prologue
    .line 257
    iget v0, p0, mSysSelTimer:I

    return v0
.end method

.method public getTepdg1xScanTimer()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, mTepdg1xScanTimer:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .registers 2

    .prologue
    .line 265
    iget v0, p0, mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, mTepdgLteTimer:I

    return v0
.end method

.method public getTestNetInterfaceNum()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, mTestInterfaceNum:I

    return v0
.end method

.method public getThreshold2gRoveIn()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, mThreshold2gRoveIn:I

    return v0
.end method

.method public getThreshold2gRoveOut()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, mThreshold2gRoveOut:I

    return v0
.end method

.method public getThreshold3gRoveIn()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, mThreshold3gRoveIn:I

    return v0
.end method

.method public getThreshold3gRoveOut()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, mThreshold3gRoveOut:I

    return v0
.end method

.method public getThreshold4gRoveIn()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, mThreshold4gRoveIn:I

    return v0
.end method

.method public getThreshold4gRoveOut()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, mThreshold4gRoveOut:I

    return v0
.end method

.method public getWifiRssiA()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, mWifiRssiB:I

    return v0
.end method

.method public getWifiRssiC()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, mWifiRssiC:I

    return v0
.end method

.method public getWifiRssiRoveInWifiOnly()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, mWifiRssiRoveInWifiOnly:I

    return v0
.end method

.method public getWifiRssiRoveOutWifiOnly()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, mWifiRssiRoveOutWifiOnly:I

    return v0
.end method

.method public getmKeepAliveTimer()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, mKeepAliveTimer:I

    return v0
.end method

.method public isConnectedModeDpdAllow()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, mIsConnectedModeDpdAllow:Z

    return v0
.end method

.method public isRetryEnabledForAlwaysOnApn()Z
    .registers 2

    .prologue
    .line 281
    iget-boolean v0, p0, mIsRetryEnabledForAlwaysOnApn:Z

    return v0
.end method

.method public isThrottlingEnabled()Z
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, mIsThrottlingEnabled:Z

    return v0
.end method
