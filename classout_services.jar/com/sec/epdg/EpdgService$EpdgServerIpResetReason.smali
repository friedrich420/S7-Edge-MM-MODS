.class final enum Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EpdgServerIpResetReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

.field public static final enum RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

.field public static final enum RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

.field public static final enum WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    const-string v1, "WIFI_DISCONNECT"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    .line 343
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    const-string v1, "RESET_ALL"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    .line 344
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    const-string v1, "RESET_CACHED_IP"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    sget-object v1, WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    aput-object v1, v0, v2

    sget-object v1, RESET_ALL:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    aput-object v1, v0, v3

    sget-object v1, RESET_CACHED_IP:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

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
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 341
    const-class v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;
    .registers 1

    .prologue
    .line 341
    sget-object v0, $VALUES:[Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    return-object v0
.end method
