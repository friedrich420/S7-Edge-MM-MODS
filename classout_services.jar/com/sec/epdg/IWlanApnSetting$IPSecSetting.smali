.class Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IPSecSetting"
.end annotation


# instance fields
.field private mIpSecDHGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

.field private mIpSecEncryptionType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

.field private mIpSecIntegrityType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field private mIpSecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field private mIpSecLifeval:I

.field private mTunnelMode:Lcom/sec/epdg/IWlanEnum$TunnelModeType;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IWlanApnSetting$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sec/epdg/IWlanApnSetting$1;

    .prologue
    .line 221
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    .registers 7
    .param p0, "x0"    # Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    .param p1, "x1"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .param p2, "x2"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .param p3, "x3"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .param p4, "x4"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .param p5, "x5"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p6, "x6"    # I

    .prologue
    .line 221
    invoke-direct/range {p0 .. p6}, updateIpsecValues(Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V

    return-void
.end method

.method private updateIpsecValues(Lcom/sec/epdg/IWlanEnum$TunnelModeType;Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;I)V
    .registers 7
    .param p1, "tunnelmode"    # Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .param p2, "ipsecencryptiontype"    # Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .param p3, "ipsecintegrity"    # Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .param p4, "ipsecdhgroup"    # Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .param p5, "ipseclifetype"    # Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .param p6, "ipseclifeval"    # I

    .prologue
    .line 242
    iput-object p1, p0, mTunnelMode:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    .line 243
    iput-object p2, p0, mIpSecEncryptionType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    .line 244
    iput-object p3, p0, mIpSecIntegrityType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 245
    iput-object p4, p0, mIpSecDHGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    .line 246
    iput-object p5, p0, mIpSecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 247
    iput p6, p0, mIpSecLifeval:I

    .line 248
    return-void
.end method


# virtual methods
.method public getmIpSecDHGroup()Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, mIpSecDHGroup:Lcom/sec/epdg/IWlanEnum$IpSecDHGroup;

    return-object v0
.end method

.method public getmIpSecEncryptionType()Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, mIpSecEncryptionType:Lcom/sec/epdg/IWlanEnum$IpSecEncryptionType;

    return-object v0
.end method

.method public getmIpSecIntegrityType()Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, mIpSecIntegrityType:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method

.method public getmIpSecLifeTimeType()Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, mIpSecLifeTimeType:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public getmIpSecLifeval()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, mIpSecLifeval:I

    return v0
.end method

.method public getmTunnelMode()Lcom/sec/epdg/IWlanEnum$TunnelModeType;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, mTunnelMode:Lcom/sec/epdg/IWlanEnum$TunnelModeType;

    return-object v0
.end method
