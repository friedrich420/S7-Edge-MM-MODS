.class public final enum Landroid/renderscript/ProgramStore$DepthFunc;
.super Ljava/lang/Enum;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramStore$DepthFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LESS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 53
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "LESS"

    invoke-direct {v0, v1, v5, v5}, <init>(Ljava/lang/String;II)V

    sput-object v0, LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 58
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "LESS_OR_EQUAL"

    invoke-direct {v0, v1, v6, v6}, <init>(Ljava/lang/String;II)V

    sput-object v0, LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 63
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "GREATER"

    invoke-direct {v0, v1, v7, v7}, <init>(Ljava/lang/String;II)V

    sput-object v0, GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 68
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "GREATER_OR_EQUAL"

    invoke-direct {v0, v1, v8, v8}, <init>(Ljava/lang/String;II)V

    sput-object v0, GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 73
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "EQUAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 78
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "NOT_EQUAL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v1, ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v4

    sget-object v1, LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v5

    sget-object v1, LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v6

    sget-object v1, GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v7

    sget-object v1, GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    aput-object v2, v0, v1

    sput-object v0, $VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, mID:I

    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$DepthFunc;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$DepthFunc;
    .registers 1

    .prologue
    .line 43
    sget-object v0, $VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$DepthFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method
