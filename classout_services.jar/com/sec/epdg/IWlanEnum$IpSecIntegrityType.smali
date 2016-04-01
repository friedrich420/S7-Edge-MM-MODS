.class public final enum Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpSecIntegrityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

.field public static final enum IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_MD5_96"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 169
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 170
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 171
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 172
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 173
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 174
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_128"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 175
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_192"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 176
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_256"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 177
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_BASIC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 178
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_ANY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 179
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_NULL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 180
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 181
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    const-string v1, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    .line 167
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    sget-object v1, IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v1, v0, v3

    sget-object v1, IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v1, v0, v4

    sget-object v1, IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v1, v0, v5

    sget-object v1, IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v1, v0, v6

    sget-object v1, IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, IPSEC_INTEGRITY_AES_GMAC_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, IPSEC_INTEGRITY_AES_GMAC_192:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, IPSEC_INTEGRITY_AES_GMAC_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, IPSEC_INTEGRITY_BASIC:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, IPSEC_INTEGRITY_ANY:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, IPSEC_INTEGRITY_NULL:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;
    .registers 1

    .prologue
    .line 167
    sget-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IpSecIntegrityType;

    return-object v0
.end method
