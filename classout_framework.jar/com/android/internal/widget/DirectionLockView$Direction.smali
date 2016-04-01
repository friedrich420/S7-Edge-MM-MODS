.class final enum Lcom/android/internal/widget/DirectionLockView$Direction;
.super Ljava/lang/Enum;
.source "DirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/widget/DirectionLockView$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum UP:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "UP_RIGHT"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "DOWN_RIGHT"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "DOWN_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "UP_LEFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "INVALID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/widget/DirectionLockView$Direction;

    sget-object v1, UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v3

    sget-object v1, UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v4

    sget-object v1, RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v5

    sget-object v1, DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v6

    sget-object v1, DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/internal/widget/DirectionLockView$Direction;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/DirectionLockView$Direction;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/DirectionLockView$Direction;
    .registers 1

    .prologue
    .line 49
    sget-object v0, $VALUES:[Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v0}, [Lcom/android/internal/widget/DirectionLockView$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/DirectionLockView$Direction;

    return-object v0
.end method
