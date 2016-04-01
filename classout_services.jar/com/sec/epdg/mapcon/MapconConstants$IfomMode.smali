.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IfomMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_LTE_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

.field public static final enum APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;


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

    .line 330
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN_LTE"

    const-string v2, "IWLAN:LTE"

    invoke-direct {v0, v1, v4, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 331
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN_LTE_CELLULAR"

    const-string v2, "IWLAN:LTE:CS"

    invoke-direct {v0, v1, v5, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 332
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_IWLAN_CELLULAR"

    const-string v2, "LTE:IWLAN:CS"

    invoke-direct {v0, v1, v6, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 333
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_CELLULAR_IWLAN"

    const-string v2, "LTE:CS:IWLAN"

    invoke-direct {v0, v1, v7, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_LTE_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 334
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_CELLULAR"

    const-string v2, "LTE:CS"

    invoke-direct {v0, v1, v8, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 335
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_LTE"

    const/4 v2, 0x5

    const-string v3, "LTE"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 336
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN"

    const/4 v2, 0x6

    const-string v3, "IWLAN"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 338
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_IWLAN_CELLULAR"

    const/4 v2, 0x7

    const-string v3, "IWLAN:CS"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 339
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_LTE_IWLAN"

    const/16 v2, 0x8

    const-string v3, "LTE:IWLAN"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 340
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_CELLULAR_IWLAN"

    const/16 v2, 0x9

    const-string v3, "CS:IWLAN"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 341
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    const-string v1, "APP_CELLULAR"

    const/16 v2, 0xa

    const-string v3, "CS"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 329
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    sget-object v1, APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v1, v0, v4

    sget-object v1, APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v1, v0, v5

    sget-object v1, APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v1, v0, v6

    sget-object v1, APP_LTE_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v1, v0, v7

    sget-object v1, APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, APP_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

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
    .line 345
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 346
    iput-object p3, p0, mText:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .registers 1

    .prologue
    .line 329
    sget-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
