.class public final enum Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpSecLifeTimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field public static final enum IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

.field public static final enum IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    const-string v1, "IPSEC_LIFE_TYPE_SECONDS"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 207
    new-instance v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    const-string v1, "IPSEC_LIFE_TYPE_KILOBYTES"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    .line 205
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    sget-object v1, IPSEC_LIFE_TYPE_SECONDS:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    aput-object v1, v0, v2

    sget-object v1, IPSEC_LIFE_TYPE_KILOBYTES:Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

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
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;
    .registers 1

    .prologue
    .line 205
    sget-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method
