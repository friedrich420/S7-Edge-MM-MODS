.class public Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;
.super Ljava/lang/Object;
.source "MagnifierDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayInfo"
.end annotation


# instance fields
.field private mAbsOffset:Landroid/graphics/Point;

.field private mPointOffset:Landroid/graphics/Point;

.field private mSurfaceCropRect:Landroid/graphics/Rect;

.field private mSurfaceOffset:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;

    .line 102
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;

    .line 103
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mAbsOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getPointOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mPointOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getSurfaceCropRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierDisplayPolicy$DisplayInfo;->mSurfaceCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
