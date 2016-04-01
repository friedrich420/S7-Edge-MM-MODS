.class Landroid/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mValues:[F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;[F)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    .line 511
    iput-object p1, p0, mView:Landroid/view/View;

    .line 512
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, mValues:[F

    .line 513
    iget-object v0, p0, mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, mTranslationX:F

    .line 514
    iget-object v0, p0, mValues:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, mTranslationY:F

    .line 515
    invoke-direct {p0}, setAnimationMatrix()V

    .line 516
    return-void
.end method

.method private setAnimationMatrix()V
    .registers 4

    .prologue
    .line 530
    iget-object v0, p0, mValues:[F

    const/4 v1, 0x2

    iget v2, p0, mTranslationX:F

    aput v2, v0, v1

    .line 531
    iget-object v0, p0, mValues:[F

    const/4 v1, 0x5

    iget v2, p0, mTranslationY:F

    aput v2, v0, v1

    .line 532
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, mValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 533
    iget-object v0, p0, mView:Landroid/view/View;

    iget-object v1, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 534
    return-void
.end method


# virtual methods
.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public setTranslation(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "translation"    # Landroid/graphics/PointF;

    .prologue
    .line 524
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, mTranslationX:F

    .line 525
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, mTranslationY:F

    .line 526
    invoke-direct {p0}, setAnimationMatrix()V

    .line 527
    return-void
.end method

.method public setValues([F)V
    .registers 5
    .param p1, "values"    # [F

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, mValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 520
    invoke-direct {p0}, setAnimationMatrix()V

    .line 521
    return-void
.end method
