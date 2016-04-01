.class public final enum Lcom/ipsec/client/IPsecConnection$IPVersion;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IPVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IPVersion;

.field public static final enum IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

.field public static final enum IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

.field public static final enum IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3054
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPVersion;

    const-string v1, "IP_VERSION_UNSPECIFIED"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 3060
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPVersion;

    const-string v1, "IP_VERSION_4"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 3066
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IPVersion;

    const-string v1, "IP_VERSION_6"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 3047
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IPVersion;

    sget-object v1, IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    aput-object v1, v0, v2

    sget-object v1, IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    aput-object v1, v0, v3

    sget-object v1, IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPVersion;

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
    .line 3047
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IPVersion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3047
    const-class v0, Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPVersion;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IPVersion;
    .registers 1

    .prologue
    .line 3047
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$IPVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IPVersion;

    return-object v0
.end method
