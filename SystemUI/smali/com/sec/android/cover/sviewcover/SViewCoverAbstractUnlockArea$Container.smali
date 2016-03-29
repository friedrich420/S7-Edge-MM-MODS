.class final enum Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
.super Ljava/lang/Enum;
.source "SViewCoverAbstractUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Container"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

.field public static final enum Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

.field public static final enum Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

.field public static final enum None:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

.field public static final enum Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

.field public static final enum Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const-string v1, "Camera"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const-string v1, "Setting"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const-string v1, "Noti"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const-string v1, "Contact"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    const-string v1, "None"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->None:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Camera:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Setting:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Noti:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->Contact:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->None:Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->$VALUES:[Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->$VALUES:[Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    invoke-virtual {v0}, [Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/sviewcover/SViewCoverAbstractUnlockArea$Container;

    return-object v0
.end method
