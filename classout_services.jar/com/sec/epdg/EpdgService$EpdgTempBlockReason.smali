.class final enum Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EpdgTempBlockReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field public static final enum ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field public static final enum AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field public static final enum BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;


# instance fields
.field private final mReason:I

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 392
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    const-string v1, "ALLOWED"

    const-string v2, "ALLOWED"

    invoke-direct {v0, v1, v3, v3, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 393
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    const-string v1, "AP_NOT_ALLOWED"

    const-string v2, "AP_NOT_ALLOWED"

    invoke-direct {v0, v1, v4, v4, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 394
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    const-string v1, "BLACKLIST_COUNTRY"

    const-string v2, "BLACKLIST_COUNTRY"

    invoke-direct {v0, v1, v5, v5, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 391
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    aput-object v1, v0, v3

    sget-object v1, AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    aput-object v1, v0, v4

    sget-object v1, BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    aput-object v1, v0, v5

    sput-object v0, $VALUES:[Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "reason"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 401
    iput p3, p0, mReason:I

    .line 402
    iput-object p4, p0, mText:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 391
    const-class v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .registers 1

    .prologue
    .line 391
    sget-object v0, $VALUES:[Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
