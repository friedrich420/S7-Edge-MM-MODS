.class public Lcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;
.super Ljava/lang/Object;
.source "EpdgRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IWlanLinkProperties"
.end annotation


# static fields
.field private static final CONF_IPC4VOLTE_INTERIM_UPDATE:I = 0x1

.field private static final IPSECCONN_MAX_DNS:I = 0x2

.field private static final IPSECCONN_MAX_PCSCFv4:I = 0x3

.field private static final IPSECCONN_MAX_PCSCFv6:I = 0x3

.field private static final IPSECCONN_MIN_PCSCFv4:I = 0x1


# instance fields
.field private final mIntfName:Ljava/lang/String;

.field private final mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field private final mIpv4Addr:Ljava/lang/String;

.field private final mIpv4Dnses:[Ljava/lang/String;

.field private final mIpv4PcscfAddr:[Ljava/lang/String;

.field private final mIpv4PrefixLen:I

.field private final mIpv6Addr:Ljava/lang/String;

.field private final mIpv6Dnses:[Ljava/lang/String;

.field private final mIpv6PcscfAddr:[Ljava/lang/String;

.field private final mIpv6PrefixLen:I


# direct methods
.method constructor <init>(IILcom/sec/epdg/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "ipv4prefixlen"    # I
    .param p2, "ipv6prefixlen"    # I
    .param p3, "iptype"    # Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .param p4, "intfName"    # Ljava/lang/String;
    .param p5, "ipv4Dnses"    # [Ljava/lang/String;
    .param p6, "ipv6Dnses"    # [Ljava/lang/String;
    .param p7, "ipv4PcscfAddr"    # [Ljava/lang/String;
    .param p8, "ipv6PcscfAddr"    # [Ljava/lang/String;
    .param p9, "ipv4Addr"    # Ljava/lang/String;
    .param p10, "ipv6Addr"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, mIpv4PrefixLen:I

    .line 190
    iput p2, p0, mIpv6PrefixLen:I

    .line 191
    iput-object p3, p0, mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 192
    iput-object p4, p0, mIntfName:Ljava/lang/String;

    .line 193
    iput-object p5, p0, mIpv4Dnses:[Ljava/lang/String;

    .line 194
    iput-object p6, p0, mIpv6Dnses:[Ljava/lang/String;

    .line 195
    iput-object p7, p0, mIpv4PcscfAddr:[Ljava/lang/String;

    .line 196
    iput-object p8, p0, mIpv6PcscfAddr:[Ljava/lang/String;

    .line 197
    iput-object p9, p0, mIpv4Addr:Ljava/lang/String;

    .line 198
    iput-object p10, p0, mIpv6Addr:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public static getIPSECCONN_MAX_DNS()I
    .registers 1

    .prologue
    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method public static getIPSECCONN_MAX_PCSCFv4()I
    .registers 1

    .prologue
    .line 205
    invoke-static {}, isIpc4VolteInterimUpdate()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static getIPSECCONN_MAX_PCSCFv6()I
    .registers 1

    .prologue
    .line 209
    const/4 v0, 0x3

    return v0
.end method

.method public static isIpc4VolteInterimUpdate()Z
    .registers 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getIntfName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, mIntfName:Ljava/lang/String;

    return-object v0
.end method

.method public getIptype()Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, mIpType:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getIpv4PcscfAddr()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, mIpv4PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4prefixlen()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, mIpv4PrefixLen:I

    return v0
.end method

.method public getIpv6PcscfAddr()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, mIpv6PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6addr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6prefixlen()I
    .registers 2

    .prologue
    .line 219
    iget v0, p0, mIpv6PrefixLen:I

    return v0
.end method

.method public getmIpv4Dnses()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, mIpv4Dnses:[Ljava/lang/String;

    return-object v0
.end method

.method public getmIpv6Dnses()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, mIpv6Dnses:[Ljava/lang/String;

    return-object v0
.end method
