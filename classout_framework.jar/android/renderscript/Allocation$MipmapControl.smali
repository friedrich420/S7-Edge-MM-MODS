.class public final enum Landroid/renderscript/Allocation$MipmapControl;
.super Ljava/lang/Enum;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Allocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MipmapControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Allocation$MipmapControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

.field public static final enum MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    new-instance v0, Landroid/renderscript/Allocation$MipmapControl;

    const-string v1, "MIPMAP_NONE"

    invoke-direct {v0, v1, v2, v2}, <init>(Ljava/lang/String;II)V

    sput-object v0, MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 231
    new-instance v0, Landroid/renderscript/Allocation$MipmapControl;

    const-string v1, "MIPMAP_FULL"

    invoke-direct {v0, v1, v3, v3}, <init>(Ljava/lang/String;II)V

    sput-object v0, MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    .line 238
    new-instance v0, Landroid/renderscript/Allocation$MipmapControl;

    const-string v1, "MIPMAP_ON_SYNC_TO_TEXTURE"

    invoke-direct {v0, v1, v4, v4}, <init>(Ljava/lang/String;II)V

    sput-object v0, MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    .line 219
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/renderscript/Allocation$MipmapControl;

    sget-object v1, MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    aput-object v1, v0, v2

    sget-object v1, MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    aput-object v1, v0, v3

    sget-object v1, MIPMAP_ON_SYNC_TO_TEXTURE:Landroid/renderscript/Allocation$MipmapControl;

    aput-object v1, v0, v4

    sput-object v0, $VALUES:[Landroid/renderscript/Allocation$MipmapControl;

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
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 242
    iput p3, p0, mID:I

    .line 243
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Allocation$MipmapControl;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    const-class v0, Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method

.method public static values()[Landroid/renderscript/Allocation$MipmapControl;
    .registers 1

    .prologue
    .line 219
    sget-object v0, $VALUES:[Landroid/renderscript/Allocation$MipmapControl;

    invoke-virtual {v0}, [Landroid/renderscript/Allocation$MipmapControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Allocation$MipmapControl;

    return-object v0
.end method
