.class final Landroid/view/Surface$CompatibleCanvas;
.super Landroid/graphics/Canvas;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatibleCanvas"
.end annotation


# instance fields
.field private mOrigMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroid/view/Surface;)V
    .registers 3

    .prologue
    .line 573
    iput-object p1, p0, this$0:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, mOrigMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;Landroid/view/Surface$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/Surface;
    .param p2, "x1"    # Landroid/view/Surface$1;

    .prologue
    .line 573
    invoke-direct {p0, p1}, <init>(Landroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 593
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 594
    iget-object v0, p0, mOrigMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_e

    .line 595
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mOrigMatrix:Landroid/graphics/Matrix;

    .line 597
    :cond_e
    iget-object v0, p0, mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 598
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 579
    iget-object v1, p0, this$0:Landroid/view/Surface;

    # getter for: Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, mOrigMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_14

    iget-object v1, p0, mOrigMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 582
    :cond_14
    invoke-super {p0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 588
    :goto_17
    return-void

    .line 584
    :cond_18
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, this$0:Landroid/view/Surface;

    # getter for: Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Landroid/view/Surface;->access$100(Landroid/view/Surface;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 585
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 586
    invoke-super {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_17
.end method
