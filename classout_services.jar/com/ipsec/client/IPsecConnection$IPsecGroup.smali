.class public final enum Lcom/ipsec/client/IPsecConnection$IPsecGroup;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPsecGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IPsecGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_ANY_OR_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_BRAINPOOL_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_BRAINPOOL_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_BRAINPOOL_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_BRAINPOOL_ECP_512:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

.field public static final enum IPSEC_GROUP_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3633
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_768"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3639
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_1024"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3645
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_1536"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3651
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_2048"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3657
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_3072"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3663
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_4096"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3669
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_6144"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3675
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_8192"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3681
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_ECP_256"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3687
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_ECP_384"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3693
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_ECP_521"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3699
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_1024_160"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3705
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_2048_224"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3711
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_MODP_2048_256"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3717
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_ECP_192"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3723
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_ECP_224"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3729
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_BRAINPOOL_ECP_224"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_BRAINPOOL_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3735
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_BRAINPOOL_ECP_256"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_BRAINPOOL_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3741
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_BRAINPOOL_ECP_384"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_BRAINPOOL_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3747
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_BRAINPOOL_ECP_512"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_BRAINPOOL_ECP_512:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3753
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_ANY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3759
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_ANY_OR_NONE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_ANY_OR_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3765
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    const-string v1, "IPSEC_GROUP_NONE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_GROUP_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .line 3626
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    sget-object v1, IPSEC_GROUP_MODP_768:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v1, v0, v3

    sget-object v1, IPSEC_GROUP_MODP_1024:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v1, v0, v4

    sget-object v1, IPSEC_GROUP_MODP_1536:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v1, v0, v5

    sget-object v1, IPSEC_GROUP_MODP_2048:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v1, v0, v6

    sget-object v1, IPSEC_GROUP_MODP_3072:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, IPSEC_GROUP_MODP_4096:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, IPSEC_GROUP_MODP_6144:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, IPSEC_GROUP_MODP_8192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, IPSEC_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, IPSEC_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, IPSEC_GROUP_ECP_521:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, IPSEC_GROUP_MODP_1024_160:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, IPSEC_GROUP_MODP_2048_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, IPSEC_GROUP_MODP_2048_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, IPSEC_GROUP_ECP_192:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, IPSEC_GROUP_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, IPSEC_GROUP_BRAINPOOL_ECP_224:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, IPSEC_GROUP_BRAINPOOL_ECP_256:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, IPSEC_GROUP_BRAINPOOL_ECP_384:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, IPSEC_GROUP_BRAINPOOL_ECP_512:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, IPSEC_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, IPSEC_GROUP_ANY_OR_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, IPSEC_GROUP_NONE:Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecGroup;

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
    .line 3626
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3626
    const-class v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .registers 1

    .prologue
    .line 3626
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$IPsecGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    return-object v0
.end method
