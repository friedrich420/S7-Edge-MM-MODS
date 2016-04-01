.class public final enum Lcom/ipsec/client/IPsecConnection$HostAuthentication;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HostAuthentication"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$HostAuthentication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$HostAuthentication;

.field public static final enum EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

.field public static final enum PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

.field public static final enum PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3026
    new-instance v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    const-string v1, "PRE_SHARED"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .line 3032
    new-instance v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    const-string v1, "PUBLIC_KEY"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .line 3039
    new-instance v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    const-string v1, "EAP"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .line 3019
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    sget-object v1, PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    aput-object v1, v0, v2

    sget-object v1, PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    aput-object v1, v0, v3

    sget-object v1, EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$HostAuthentication;

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
    .line 3019
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$HostAuthentication;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3019
    const-class v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$HostAuthentication;
    .registers 1

    .prologue
    .line 3019
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$HostAuthentication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    return-object v0
.end method
