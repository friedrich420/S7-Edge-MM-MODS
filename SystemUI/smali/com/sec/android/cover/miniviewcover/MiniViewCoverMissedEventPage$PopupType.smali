.class final enum Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;
.super Ljava/lang/Enum;
.source "MiniViewCoverMissedEventPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PopupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

.field public static final enum OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

.field public static final enum OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

.field public static final enum OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    const-string v1, "OPEN_COVER_BY_SECURITY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    const-string v1, "OPEN_COVER_TO_VIEW_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    const-string v1, "OPEN_COVER_TO_VIEW_CALL"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->$VALUES:[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->$VALUES:[Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    invoke-virtual {v0}, [Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/miniviewcover/MiniViewCoverMissedEventPage$PopupType;

    return-object v0
.end method
