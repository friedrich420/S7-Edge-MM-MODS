.class public final enum Lcom/ipsec/client/IPsecConnection$IdentityType;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$IdentityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$IdentityType;

.field public static final enum DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field public static final enum FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field public static final enum IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field public static final enum IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field public static final enum KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field public static final enum USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2910
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    const-string v1, "IPV4_ADDR"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 2916
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    const-string v1, "IPV6_ADDR"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 2922
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    const-string v1, "FQDN"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 2928
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    const-string v1, "USER_FQDN"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 2934
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    const-string v1, "DN"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 2940
    new-instance v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    const-string v1, "KEY_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 2903
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$IdentityType;

    sget-object v1, IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    aput-object v1, v0, v3

    sget-object v1, IPV6_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    aput-object v1, v0, v4

    sget-object v1, FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    aput-object v1, v0, v5

    sget-object v1, USER_FQDN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    aput-object v1, v0, v6

    sget-object v1, DN:Lcom/ipsec/client/IPsecConnection$IdentityType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, KEY_ID:Lcom/ipsec/client/IPsecConnection$IdentityType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IdentityType;

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
    .line 2903
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2903
    const-class v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$IdentityType;
    .registers 1

    .prologue
    .line 2903
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$IdentityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method
