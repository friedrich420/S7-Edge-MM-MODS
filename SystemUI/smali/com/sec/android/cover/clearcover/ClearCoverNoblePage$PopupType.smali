.class final enum Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;
.super Ljava/lang/Enum;
.source "ClearCoverNoblePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverNoblePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PopupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

.field public static final enum OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

.field public static final enum OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

.field public static final enum OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    const-string v1, "OPEN_COVER_BY_SECURITY"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    const-string v1, "OPEN_COVER_TO_VIEW_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    const-string v1, "OPEN_COVER_TO_VIEW_CALL"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_BY_SECURITY:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_TO_VIEW_MESSAGE:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->OPEN_COVER_TO_VIEW_CALL:Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->$VALUES:[Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->$VALUES:[Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    invoke-virtual {v0}, [Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/clearcover/ClearCoverNoblePage$PopupType;

    return-object v0
.end method
