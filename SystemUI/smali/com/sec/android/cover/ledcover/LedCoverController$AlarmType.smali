.class final enum Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
.super Ljava/lang/Enum;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlarmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

.field public static final enum ALARM:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

.field public static final enum NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

.field public static final enum SPLANNER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

.field public static final enum TIMER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    const-string v1, "ALARM"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->ALARM:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->TIMER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    const-string v1, "SPLANNER"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->SPLANNER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    .line 109
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->NONE:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->ALARM:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->TIMER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->SPLANNER:Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->$VALUES:[Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->$VALUES:[Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    invoke-virtual {v0}, [Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/ledcover/LedCoverController$AlarmType;

    return-object v0
.end method
