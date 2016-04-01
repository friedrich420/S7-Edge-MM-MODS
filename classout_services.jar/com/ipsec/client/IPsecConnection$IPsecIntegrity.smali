.class public final enum Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPsecIntegrity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_INTEGRITY_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_NULL:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

.field public static final enum IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3231
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_HMAC_MD5_96"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3237
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA1_96"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3243
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_AES_XCBC_MAC_96"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3249
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_256_128"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3255
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_384_192"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3261
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_HMAC_SHA_512_256"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3269
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_128"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3277
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_192"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3285
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_AES_GMAC_256"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3291
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_BASIC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3297
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_ANY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3303
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_NULL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_NULL:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3309
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_SUITE_B_GCM_128"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3315
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    const-string v1, "IPSEC_INTEGRITY_SUITE_B_GCM_256"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 3224
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    sget-object v1, IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v1, v0, v3

    sget-object v1, IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v1, v0, v4

    sget-object v1, IPSEC_INTEGRITY_AES_XCBC_MAC_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v1, v0, v5

    sget-object v1, IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v1, v0, v6

    sget-object v1, IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, IPSEC_INTEGRITY_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, IPSEC_INTEGRITY_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, IPSEC_INTEGRITY_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, IPSEC_INTEGRITY_NULL:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

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
    .line 3224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3224
    const-class v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .registers 1

    .prologue
    .line 3224
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    return-object v0
.end method
