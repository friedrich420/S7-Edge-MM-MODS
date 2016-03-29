.class final enum Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;
.super Ljava/lang/Enum;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MusicPlayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

.field public static final enum PAUSED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

.field public static final enum PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

.field public static final enum STOPPED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    new-instance v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->$VALUES:[Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const-class v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->$VALUES:[Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    invoke-virtual {v0}, [Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/ledcover/LedCoverController$MusicPlayStatus;

    return-object v0
.end method
