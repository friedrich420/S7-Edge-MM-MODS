.class Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectInfo"
.end annotation


# instance fields
.field handoverIpv4addr:Ljava/lang/String;

.field handoverIpv6addr:Ljava/lang/String;

.field wlanSetting:Lcom/sec/epdg/IWlanApnSetting;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/sec/epdg/IPSecAdapter$1;

    .prologue
    .line 1929
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1, "x1"    # Lcom/sec/epdg/IWlanApnSetting;

    .prologue
    .line 1929
    invoke-direct {p0, p1}, setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1929
    invoke-direct {p0, p1}, setHandoverIpv4Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1929
    invoke-direct {p0, p1}, setHandoverIpv6Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    .prologue
    .line 1929
    invoke-direct {p0}, getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    .prologue
    .line 1929
    invoke-direct {p0}, getHandoverIpv4Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    .prologue
    .line 1929
    invoke-direct {p0}, getHandoverIpv6Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandoverIpv4Addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1939
    iget-object v0, p0, handoverIpv4addr:Ljava/lang/String;

    return-object v0
.end method

.method private getHandoverIpv6Addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1947
    iget-object v0, p0, handoverIpv6addr:Ljava/lang/String;

    return-object v0
.end method

.method private getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;
    .registers 2

    .prologue
    .line 1955
    iget-object v0, p0, wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    return-object v0
.end method

.method private setHandoverIpv4Addr(Ljava/lang/String;)V
    .registers 2
    .param p1, "ipv4Addr"    # Ljava/lang/String;

    .prologue
    .line 1935
    iput-object p1, p0, handoverIpv4addr:Ljava/lang/String;

    .line 1936
    return-void
.end method

.method private setHandoverIpv6Addr(Ljava/lang/String;)V
    .registers 2
    .param p1, "ipv6Addr"    # Ljava/lang/String;

    .prologue
    .line 1943
    iput-object p1, p0, handoverIpv6addr:Ljava/lang/String;

    .line 1944
    return-void
.end method

.method private setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V
    .registers 2
    .param p1, "inwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;

    .prologue
    .line 1951
    iput-object p1, p0, wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    .line 1952
    return-void
.end method
