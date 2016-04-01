.class Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
.super Ljava/lang/Object;
.source "DualScreenTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DualScreenTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitTargetInfo"
.end annotation


# instance fields
.field displayId:I

.field final finalMatrix:Landroid/graphics/Matrix;

.field height:I

.field final initialMatrix:Landroid/graphics/Matrix;

.field layer:I

.field surface:Landroid/view/SurfaceControl;

.field width:I

.field win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V
    .registers 8
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "layer"    # I
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "displayId"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, initialMatrix:Landroid/graphics/Matrix;

    .line 180
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, finalMatrix:Landroid/graphics/Matrix;

    .line 163
    iput-object p1, p0, surface:Landroid/view/SurfaceControl;

    .line 164
    iput p2, p0, layer:I

    .line 165
    iput-object p3, p0, win:Lcom/android/server/wm/WindowState;

    .line 166
    iput p4, p0, width:I

    .line 167
    iput p5, p0, height:I

    .line 168
    iput p6, p0, displayId:I

    .line 169
    return-void
.end method
