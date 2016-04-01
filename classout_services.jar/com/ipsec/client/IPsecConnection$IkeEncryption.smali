.class public final enum Lcom/ipsec/client/IPsecConnection$IkeEncryption;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkeEncryption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IkeEncryption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

.field public static final enum IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;
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

    .line 3375
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_3DES_CBC"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3381
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CBC_128"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3387
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CBC_192"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3393
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CBC_256"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3399
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CTR_128"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3405
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CTR_192"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3411
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CTR_256"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3417
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CCM_128"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3423
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CCM_192"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3429
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_CCM_256"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_CCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3435
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_GCM_128"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3441
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_GCM_192"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3447
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_AES_GCM_256"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3453
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_BASIC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3459
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_ANY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3465
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_SUITE_B_GCM_128"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3471
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    const-string v1, "IKE_ENCRYPTION_SUITE_B_GCM_256"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 3368
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    sget-object v1, IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v1, v0, v3

    sget-object v1, IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v1, v0, v4

    sget-object v1, IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v1, v0, v5

    sget-object v1, IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v1, v0, v6

    sget-object v1, IKE_ENCRYPTION_AES_CTR_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, IKE_ENCRYPTION_AES_CTR_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, IKE_ENCRYPTION_AES_CTR_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, IKE_ENCRYPTION_AES_CCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, IKE_ENCRYPTION_AES_CCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, IKE_ENCRYPTION_AES_CCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, IKE_ENCRYPTION_AES_GCM_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IkeEncryption;

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
    .line 3368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3368
    const-class v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .registers 1

    .prologue
    .line 3368
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$IkeEncryption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    return-object v0
.end method
