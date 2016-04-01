.class public final enum Lcom/sec/epdg/IWlanEnum$Ikeversion;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ikeversion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$Ikeversion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$Ikeversion;

.field public static final enum IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

.field public static final enum IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    new-instance v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;

    const-string v1, "IKE_VERSION_1"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 212
    new-instance v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;

    const-string v1, "IKE_VERSION_2"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$Ikeversion;

    sget-object v1, IKE_VERSION_1:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    aput-object v1, v0, v2

    sget-object v1, IKE_VERSION_2:Lcom/sec/epdg/IWlanEnum$Ikeversion;

    aput-object v1, v0, v3

    sput-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$Ikeversion;

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
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const-class v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$Ikeversion;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$Ikeversion;
    .registers 1

    .prologue
    .line 210
    sget-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$Ikeversion;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$Ikeversion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$Ikeversion;

    return-object v0
.end method
