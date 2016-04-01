.class final enum Lcom/sec/epdg/EpdgService$PolicyUpdateReason;
.super Ljava/lang/Enum;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PolicyUpdateReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/EpdgService$PolicyUpdateReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

.field public static final enum VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "ROAMING_CHANGED"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .line 378
    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .line 379
    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "VOWIFI_SETTING_CHANGED"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .line 380
    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "BOOTUP_CHECKING"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .line 381
    new-instance v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    const-string v1, "VOLTE_SETTING_CHANGED"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .line 376
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    sget-object v1, ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v2

    sget-object v1, PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v3

    sget-object v1, VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v4

    sget-object v1, BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v5

    sget-object v1, VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

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
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/EpdgService$PolicyUpdateReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 376
    const-class v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;
    .registers 1

    .prologue
    .line 376
    sget-object v0, $VALUES:[Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-virtual {v0}, [Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    return-object v0
.end method
