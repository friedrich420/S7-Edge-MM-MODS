.class public final enum Lcom/sec/epdg/IWlanEnum$AdapterConf;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterConf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$AdapterConf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$AdapterConf;

.field public static final enum VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/IWlanEnum$AdapterConf;

.field public static final enum VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

.field public static final enum VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    new-instance v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;

    const-string v1, "VIRTUAL_ADAPTER_CONF_INTERNAL"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 276
    new-instance v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;

    const-string v1, "VIRTUAL_ADAPTER_CONF_NONE"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 277
    new-instance v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;

    const-string v1, "VIRTUAL_ADAPTER_CONF_NONE_TUN"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    .line 274
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$AdapterConf;

    sget-object v1, VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    aput-object v1, v0, v2

    sget-object v1, VIRTUAL_ADAPTER_CONF_NONE:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    aput-object v1, v0, v3

    sget-object v1, VIRTUAL_ADAPTER_CONF_NONE_TUN:Lcom/sec/epdg/IWlanEnum$AdapterConf;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$AdapterConf;

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
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 274
    const-class v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$AdapterConf;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$AdapterConf;
    .registers 1

    .prologue
    .line 274
    sget-object v0, $VALUES:[Lcom/sec/epdg/IWlanEnum$AdapterConf;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$AdapterConf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$AdapterConf;

    return-object v0
.end method
