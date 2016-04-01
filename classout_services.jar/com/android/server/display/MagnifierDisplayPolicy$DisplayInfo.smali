.class public Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;
.super Ljava/lang/Object;
.source "MagnifierPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayInfo"
.end annotation


# instance fields
.field private mAbsOffset:Landroid/graphics/Point;

.field private mPointOffset:Landroid/graphics/Point;

.field private mSurfaceCropRect:Landroid/graphics/Rect;

.field private mSurfaceOffset:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/server/display/MagnifierDisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MagnifierDisplayPolicy;)V
    .registers 3

    .prologue
    .line 90
    iput-object p1, p0, this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mAbsOffset:Landroid/graphics/Point;

    .line 86
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mSurfaceOffset:Landroid/graphics/Point;

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mPointOffset:Landroid/graphics/Point;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSurfaceCropRect:Landroid/graphics/Rect;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 84
    iget-object v0, p0, mSurfaceOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 84
    iget-object v0, p0, mAbsOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 84
    iget-object v0, p0, mPointOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 84
    iget-object v0, p0, mSurfaceCropRect:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getAbsOffset()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, mAbsOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getPointOffset()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, mPointOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSurfaceCropRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, mSurfaceCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSurfaceOffset()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, mSurfaceOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
