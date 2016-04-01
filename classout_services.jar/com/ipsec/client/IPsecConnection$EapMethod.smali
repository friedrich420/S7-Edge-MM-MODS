.class public final enum Lcom/ipsec/client/IPsecConnection$EapMethod;
.super Ljava/lang/Enum;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ipsec/client/IPsecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EapMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ipsec/client/IPsecConnection$EapMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_GTC:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field public static final enum EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;


# instance fields
.field private maskValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2955
    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_NONE"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 2961
    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_MD5_CHALLENGE"

    invoke-direct {v0, v1, v5, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 2967
    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_GTC"

    invoke-direct {v0, v1, v6, v6}, <init>(Ljava/lang/String;II)V

    sput-object v0, EAP_METHOD_GTC:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 2973
    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_SIM"

    invoke-direct {v0, v1, v8, v7}, <init>(Ljava/lang/String;II)V

    sput-object v0, EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 2979
    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_AKA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 2985
    new-instance v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    const-string v1, "EAP_METHOD_MSCHAPV2"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 2948
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ipsec/client/IPsecConnection$EapMethod;

    sget-object v1, EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v4

    sget-object v1, EAP_METHOD_MD5_CHALLENGE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v5

    sget-object v1, EAP_METHOD_GTC:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v6

    sget-object v1, EAP_METHOD_SIM:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v8

    sget-object v1, EAP_METHOD_AKA:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, EAP_METHOD_MSCHAPV2:Lcom/ipsec/client/IPsecConnection$EapMethod;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "maskValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 2996
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2997
    iput p3, p0, maskValue:I

    .line 2998
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$EapMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2948
    const-class v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method

.method public static values()[Lcom/ipsec/client/IPsecConnection$EapMethod;
    .registers 1

    .prologue
    .line 2948
    sget-object v0, $VALUES:[Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v0}, [Lcom/ipsec/client/IPsecConnection$EapMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method


# virtual methods
.method public maskValue()I
    .registers 2

    .prologue
    .line 3010
    iget v0, p0, maskValue:I

    return v0
.end method
