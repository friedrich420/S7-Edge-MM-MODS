.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconApnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_CBS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_DEFAULT:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_DUN:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_EMERGENCY:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_FOTA:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_HIPRI:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_IA:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_IMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_MMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_SUPL:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

.field public static final enum APN_TYPE_XCAP:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;


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

    .line 48
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_DEFAULT"

    const-string/jumbo v2, "default"

    invoke-direct {v0, v1, v4, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_DEFAULT:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 49
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_MMS"

    const-string/jumbo v2, "mms"

    invoke-direct {v0, v1, v5, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_MMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 50
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_SUPL"

    const-string/jumbo v2, "supl"

    invoke-direct {v0, v1, v6, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_SUPL:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 51
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_DUN"

    const-string/jumbo v2, "dun"

    invoke-direct {v0, v1, v7, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_DUN:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 52
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_HIPRI"

    const-string/jumbo v2, "hipri"

    invoke-direct {v0, v1, v8, v2}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_HIPRI:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 53
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_FOTA"

    const/4 v2, 0x5

    const-string/jumbo v3, "fota"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_FOTA:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 54
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_IMS"

    const/4 v2, 0x6

    const-string/jumbo v3, "ims"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_IMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 55
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_CBS"

    const/4 v2, 0x7

    const-string v3, "cbs"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_CBS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 56
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_IA"

    const/16 v2, 0x8

    const-string/jumbo v3, "ia"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_IA:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 57
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_XCAP"

    const/16 v2, 0x9

    const-string/jumbo v3, "xcap"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_XCAP:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 58
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    const-string v1, "APN_TYPE_EMERGENCY"

    const/16 v2, 0xa

    const-string/jumbo v3, "emergency"

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, APN_TYPE_EMERGENCY:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 47
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    sget-object v1, APN_TYPE_DEFAULT:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v1, v0, v4

    sget-object v1, APN_TYPE_MMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v1, v0, v5

    sget-object v1, APN_TYPE_SUPL:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v1, v0, v6

    sget-object v1, APN_TYPE_DUN:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v1, v0, v7

    sget-object v1, APN_TYPE_HIPRI:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, APN_TYPE_FOTA:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, APN_TYPE_IMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, APN_TYPE_CBS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, APN_TYPE_IA:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, APN_TYPE_XCAP:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, APN_TYPE_EMERGENCY:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, mText:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .registers 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v1

    .local v1, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_18

    aget-object v0, v1, v2

    .line 68
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    invoke-virtual {v0}, toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 69
    return-object v0

    .line 67
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 72
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :cond_18
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .registers 1

    .prologue
    .line 47
    sget-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
