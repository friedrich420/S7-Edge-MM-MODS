.class public final enum Lcom/sec/epdg/IWlanEnum$Imei;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Imei"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$Imei;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$Imei;

.field public static final enum DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

.field public static final enum NONE:Lcom/sec/epdg/IWlanEnum$Imei;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lcom/sec/epdg/IWlanEnum$Imei;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 294
    new-instance v0, Lcom/sec/epdg/IWlanEnum$Imei;

    const-string v1, "DEVICE_IMEI"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    .line 292
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$Imei;

    sget-object v1, NONE:Lcom/sec/epdg/IWlanEnum$Imei;

    aput-object v1, v0, v2

    sget-object v1, DEVICE_IMEI:Lcom/sec/epdg/IWlanEnum$Imei;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$Imei;

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
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$Imei;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 292
    const-class v0, Lcom/sec/epdg/IWlanEnum$Imei;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$Imei;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$Imei;
    .registers 1

    .prologue
    .line 292
    sget-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$Imei;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$Imei;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$Imei;

    return-object v0
.end method
