.class public final enum Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPsecEncryption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IPsecEncryption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

.field public static final enum IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
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

    .line 3102
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_3DES_CBC"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3108
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_128"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3114
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_192"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3120
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CBC_256"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3126
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_128"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3132
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_192"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3138
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CTR_256"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3144
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CCM_128"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3150
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CCM_192"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3156
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_CCM_256"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_CCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3162
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_128"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3168
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_192"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3174
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GCM_256"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3180
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GMAC_128"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3186
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GMAC_192"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3192
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_AES_GMAC_256"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3198
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_BASIC"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3204
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_ANY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3210
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_SUITE_B_GCM_128"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3216
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    const-string v1, "IPSEC_ENCRYPTION_SUITE_B_GCM_256"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 3095
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    sget-object v1, IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v3

    sget-object v1, IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v4

    sget-object v1, IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v5

    sget-object v1, IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v6

    sget-object v1, IPSEC_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, IPSEC_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, IPSEC_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, IPSEC_ENCRYPTION_AES_CCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, IPSEC_ENCRYPTION_AES_CCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, IPSEC_ENCRYPTION_AES_CCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, IPSEC_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, IPSEC_ENCRYPTION_AES_GMAC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, IPSEC_ENCRYPTION_AES_GMAC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, IPSEC_ENCRYPTION_AES_GMAC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

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
    .line 3095
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3095
    const-class v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .registers 1

    .prologue
    .line 3095
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    return-object v0
.end method
