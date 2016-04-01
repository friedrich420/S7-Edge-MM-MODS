.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IfomAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_E911:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VIDEO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum BLOCK_HO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum NO_APP_IDLE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 410
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VOICE"

    const-string/jumbo v2, "imsvoicecall"

    invoke-direct {v0, v1, v4, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_TYPE_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 411
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VIDEO"

    const-string/jumbo v2, "imsvideocall"

    invoke-direct {v0, v1, v5, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_TYPE_VIDEO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 412
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_E911"

    const-string/jumbo v2, "e911call"

    invoke-direct {v0, v1, v6, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_TYPE_E911:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 413
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "NO_APP_IDLE"

    const-string/jumbo v2, "idle"

    invoke-direct {v0, v1, v7, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, NO_APP_IDLE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 414
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "BLOCK_HO"

    const-string v2, "blockhandoff"

    invoke-direct {v0, v1, v8, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, BLOCK_HO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 415
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VIDEO_VOICE"

    const/4 v2, 0x5

    const-string/jumbo v3, "imsvideovoicecall"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 409
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    sget-object v1, APP_TYPE_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v4

    sget-object v1, APP_TYPE_VIDEO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v5

    sget-object v1, APP_TYPE_E911:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v6

    sget-object v1, NO_APP_IDLE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v7

    sget-object v1, BLOCK_HO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 420
    iput-object p3, p0, mText:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public static getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .registers 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 424
    if-nez p0, :cond_5

    move-object v0, v4

    .line 433
    :cond_4
    :goto_4
    return-object v0

    .line 427
    :cond_5
    invoke-static {}, values()[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    move-result-object v1

    .local v1, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v3, :cond_1c

    aget-object v0, v1, v2

    .line 428
    .local v0, "appType":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    invoke-virtual {v0}, toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 427
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 432
    .end local v0    # "appType":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    :cond_1c
    const-string v5, "[MAPCON]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getIfomAppType Invalid key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 433
    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 409
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .registers 1

    .prologue
    .line 409
    sget-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
