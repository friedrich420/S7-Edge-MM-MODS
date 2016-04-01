.class public final enum Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPsecLifeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IPsecLifeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

.field public static final enum IPSEC_LIFE_TYPE_KILOBYTES:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

.field public static final enum IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3330
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    const-string v1, "IPSEC_LIFE_TYPE_SECONDS"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    .line 3339
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    const-string v1, "IPSEC_LIFE_TYPE_KILOBYTES"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_LIFE_TYPE_KILOBYTES:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    .line 3323
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    sget-object v1, IPSEC_LIFE_TYPE_SECONDS:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    aput-object v1, v0, v2

    sget-object v1, IPSEC_LIFE_TYPE_KILOBYTES:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

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
    .line 3323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3323
    const-class v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .registers 1

    .prologue
    .line 3323
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    return-object v0
.end method
