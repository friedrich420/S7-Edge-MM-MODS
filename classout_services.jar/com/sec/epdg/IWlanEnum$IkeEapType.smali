.class public final enum Lcom/sec/epdg/IWlanEnum$IkeEapType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IkeEapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IkeEapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

.field public static final enum EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_MD5_CHALLENGE"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 247
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_SIM"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 248
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_AKA"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 249
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IkeEapType;

    const-string v1, "EAP_METHOD_MSCHAPV2"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    .line 245
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IkeEapType;

    sget-object v1, EAP_METHOD_MD5_CHALLENGE:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    aput-object v1, v0, v2

    sget-object v1, EAP_METHOD_SIM:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    aput-object v1, v0, v3

    sget-object v1, EAP_METHOD_AKA:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    aput-object v1, v0, v4

    sget-object v1, EAP_METHOD_MSCHAPV2:Lcom/sec/epdg/IWlanEnum$IkeEapType;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$IkeEapType;

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
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    const-class v0, Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IkeEapType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IkeEapType;
    .registers 1

    .prologue
    .line 245
    sget-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$IkeEapType;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$IkeEapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IkeEapType;

    return-object v0
.end method
