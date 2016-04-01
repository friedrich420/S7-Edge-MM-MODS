.class public final enum Landroid/renderscript/RenderScript$ContextType;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/RenderScript$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/RenderScript$ContextType;

.field public static final enum DEBUG:Landroid/renderscript/RenderScript$ContextType;

.field public static final enum NORMAL:Landroid/renderscript/RenderScript$ContextType;

.field public static final enum PROFILE:Landroid/renderscript/RenderScript$ContextType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, NORMAL:Landroid/renderscript/RenderScript$ContextType;

    .line 177
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, DEBUG:Landroid/renderscript/RenderScript$ContextType;

    .line 184
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, PROFILE:Landroid/renderscript/RenderScript$ContextType;

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/renderscript/RenderScript$ContextType;

    sget-object v1, NORMAL:Landroid/renderscript/RenderScript$ContextType;

    aput-object v1, v0, v2

    sget-object v1, DEBUG:Landroid/renderscript/RenderScript$ContextType;

    aput-object v1, v0, v3

    sget-object v1, PROFILE:Landroid/renderscript/RenderScript$ContextType;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Landroid/renderscript/RenderScript$ContextType;

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
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 188
    iput p3, p0, mID:I

    .line 189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/RenderScript$ContextType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 165
    const-class v0, Landroid/renderscript/RenderScript$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/RenderScript$ContextType;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/RenderScript$ContextType;
    .registers 1

    .prologue
    .line 165
    sget-object v0, $VALUES:[Landroid/renderscript/RenderScript$ContextType;

    invoke-virtual {v0}, [Landroid/renderscript/RenderScript$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/RenderScript$ContextType;

    return-object v0
.end method
