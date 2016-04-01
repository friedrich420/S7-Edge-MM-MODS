.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

.field public static final enum LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;


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

    .line 309
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "IWLAN"

    const-string v2, "IWLAN"

    invoke-direct {v0, v1, v4, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 310
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "IWLAN_LTE"

    const-string v2, "IWLAN:LTE"

    invoke-direct {v0, v1, v5, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 311
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "IWLAN_LTE_EHRPD"

    const-string v2, "IWLAN:LTE:EHRPD"

    invoke-direct {v0, v1, v6, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 312
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "LTE_IWLAN"

    const-string v2, "LTE:IWLAN"

    invoke-direct {v0, v1, v7, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 313
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "LTE_IWLAN_EHRPD"

    const-string v2, "LTE:IWLAN:EHRPD"

    invoke-direct {v0, v1, v8, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 314
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "LTE"

    const/4 v2, 0x5

    const-string v3, "LTE"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 315
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    const-string v1, "LTE_EHRPD"

    const/4 v2, 0x6

    const-string v3, "LTE:EHRPD"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 308
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    sget-object v1, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v4

    sget-object v1, IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v5

    sget-object v1, IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v6

    sget-object v1, LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v7

    sget-object v1, LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

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
    .line 319
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 320
    iput-object p3, p0, mText:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 308
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .registers 1

    .prologue
    .line 308
    sget-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
