.class final enum Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;
.super Ljava/lang/Enum;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ClockData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

.field public static final enum FULL:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

.field public static final enum TIME_TICK:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->FULL:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    .line 116
    new-instance v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    const-string v1, "TIME_TICK"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->TIME_TICK:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->FULL:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->TIME_TICK:Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->$VALUES:[Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->$VALUES:[Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    invoke-virtual {v0}, [Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/ledcover/NfcLedCoverController$ClockData;

    return-object v0
.end method
