.class final enum Lcom/android/server/am/ActivityStack$ActivityState;
.super Ljava/lang/Enum;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/ActivityStack$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

.field public static final enum STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 221
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 222
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "PAUSING"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 223
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 224
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v7}, <init>(Ljava/lang/String;I)V

    sput-object v0, STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 225
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 226
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "FINISHING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 227
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "DESTROYING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 228
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "DESTROYED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 219
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v4

    sget-object v1, PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v5

    sget-object v1, PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v6

    sget-object v1, STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

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
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/ActivityStack$ActivityState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    const-class v0, Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/ActivityStack$ActivityState;
    .registers 1

    .prologue
    .line 219
    sget-object v0, $VALUES:[Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0}, [Lcom/android/server/am/ActivityStack$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/ActivityStack$ActivityState;

    return-object v0
.end method
