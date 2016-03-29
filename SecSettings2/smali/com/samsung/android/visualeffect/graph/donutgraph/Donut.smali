.class public Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
.super Landroid/view/View;
.source "Donut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;
    }
.end annotation


# instance fields
.field private addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

.field private afterPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private backDonutPaint:Landroid/graphics/Paint;

.field private bmp:Landroid/graphics/Bitmap;

.field private cleanAnimator:Landroid/animation/ValueAnimator;

.field private cleanSweepAngle:F

.field private deltaAnimator:Landroid/animation/ValueAnimator;

.field private donutBitmap:Landroid/graphics/Bitmap;

.field private donutBottom:I

.field private donutCanvas:Landroid/graphics/Canvas;

.field private donutLeft:I

.field private donutPaint:Landroid/graphics/Paint;

.field private donutRadius:I

.field private donutRight:I

.field private donutTop:I

.field private drawBackgroundCircle:Z

.field private foldAnimator:Landroid/animation/ValueAnimator;

.field private isAnimateClean:Z

.field private isCleanPiePhase:Z

.field private isFoldReverse:Z

.field private isFoldnSpread:Z

.field private isLineAnimatorCanceled:Z

.field private isSpreadReverse:Z

.field private lineAnimator:Landroid/animation/ValueAnimator;

.field private lineBottom:I

.field private lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

.field private lineColor:Ljava/lang/String;

.field private lineLeft:I

.field private linePaint:Landroid/graphics/Paint;

.field private lineRight:I

.field private lineTop:I

.field private lineValue:F

.field private lineWidth:F

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mIsDirectionRTL:Z

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mLinePath:Landroid/graphics/Path;

.field private final mirrorCanvas:Landroid/graphics/Canvas;

.field private mirroredBmp:Landroid/graphics/Bitmap;

.field private pointAnimator:Landroid/animation/ValueAnimator;

.field private pointPaint:Landroid/graphics/Paint;

.field private pointRadius:F

.field private pointValue:F

.field private rectf:Landroid/graphics/RectF;

.field private spreadAnimator:Landroid/animation/ValueAnimator;

.field private thisPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private xf:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 213
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    .line 107
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isAnimateClean:Z

    .line 127
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    .line 131
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    .line 135
    const-string v0, "#105E7A"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    .line 155
    iput v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 159
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    .line 163
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    .line 167
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    .line 215
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "Donut(context, left, top, radius)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    .line 221
    iput p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iput p3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    .line 223
    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    .line 225
    mul-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    .line 227
    iput p4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0414

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0415

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    .line 235
    mul-int/lit8 v0, p4, 0x2

    mul-int/lit8 v1, p4, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    .line 237
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    .line 239
    new-instance v0, Landroid/graphics/RectF;

    mul-int/lit8 v1, p4, 0x2

    int-to-float v1, v1

    mul-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    .line 241
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    .line 243
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutPaint:Landroid/graphics/Paint;

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    .line 249
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    .line 251
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 253
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    .line 255
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 257
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    .line 259
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->xf:Landroid/graphics/Xfermode;

    .line 271
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->xf:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 273
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 281
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLayerType(ILandroid/graphics/Paint;)V

    .line 291
    mul-int/lit8 v0, p4, 0x2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->loadImageDrawable(Landroid/content/Context;I)V

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setAnimator()V

    .line 297
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 299
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    .line 301
    return-void
.end method

.method private AnimateDonut(Ljava/util/ArrayList;FZ)V
    .locals 7
    .param p2, "value"    # F
    .param p3, "isSpreadReverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;FZ)V"
        }
    .end annotation

    .prologue
    .local p1, "targetPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/high16 v6, 0x3f000000    # 0.5f

    .line 377
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 381
    if-eqz p3, :cond_1

    .line 383
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v0

    .line 385
    .local v0, "finalStartAngle":F
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    .line 397
    .local v1, "finalSweepAngle":F
    :goto_1
    if-eqz p3, :cond_2

    .line 399
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_0

    .line 401
    add-float/2addr v1, v6

    .line 417
    :cond_0
    :goto_2
    mul-float v3, p2, v0

    .line 419
    .local v3, "startAngle":F
    mul-float v4, p2, v1

    .line 423
    .local v4, "sweepAngle":F
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    .line 425
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "finalStartAngle":F
    .end local v1    # "finalSweepAngle":F
    .end local v3    # "startAngle":F
    .end local v4    # "sweepAngle":F
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getReverseStartAngle()F

    move-result v0

    .line 391
    .restart local v0    # "finalStartAngle":F
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getReverseSweepAngle()F

    move-result v1

    .restart local v1    # "finalSweepAngle":F
    goto :goto_1

    .line 407
    :cond_2
    if-eqz v2, :cond_0

    .line 409
    sub-float/2addr v1, v6

    goto :goto_2

    .line 429
    .end local v0    # "finalStartAngle":F
    .end local v1    # "finalSweepAngle":F
    :cond_3
    return-void
.end method

.method private AnimateDonutDelta(F)V
    .locals 12
    .param p1, "value"    # F

    .prologue
    const/4 v11, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 327
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    .line 329
    .local v2, "finalSweepAngle":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v0

    .line 333
    .local v0, "finalFromSweepAngle":F
    sub-float v6, v10, p1

    sub-float v7, v0, v2

    mul-float/2addr v6, v7

    add-float v4, v2, v6

    .line 337
    .local v4, "sweepAngle":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    .line 341
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_0

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v11, :cond_0

    .line 345
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v3

    .line 347
    .local v3, "finalSweepAngle2":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    .line 351
    .local v1, "finalFromSweepAngle2":F
    sub-float v6, v10, p1

    sub-float v7, v1, v3

    mul-float/2addr v6, v7

    add-float v5, v3, v6

    .line 355
    .local v5, "sweepAngle2":F
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    iget-object v7, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getStartAngle()F

    move-result v7

    add-float/2addr v7, v4

    invoke-virtual {v6, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    .line 357
    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v6, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    .line 361
    .end local v1    # "finalFromSweepAngle2":F
    .end local v3    # "finalSweepAngle2":F
    .end local v5    # "sweepAngle2":F
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->animateCleanPie(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonutDelta(F)V

    return-void
.end method

.method static synthetic access$1802(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLineCallback()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # F
    .param p3, "x3"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonut(Ljava/util/ArrayList;FZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V

    return-void
.end method

.method static synthetic access$902(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    return p1
.end method

.method private animateCleanPie(F)V
    .locals 1
    .param p1, "arriveAngle"    # F

    .prologue
    .line 435
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isAnimateClean:Z

    .line 439
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setFinalSweepAngle(F)V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    .line 443
    return-void
.end method

.method private calculateLineInvalidate()V
    .locals 4

    .prologue
    .line 1549
    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 1551
    .local v0, "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    if-le v2, v3, :cond_1

    .line 1553
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    .line 1557
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    if-ge v2, v3, :cond_2

    .line 1559
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    .line 1563
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    if-le v2, v3, :cond_0

    .line 1565
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineWidth:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    goto :goto_0

    .line 1571
    .end local v0    # "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_3
    return-void
.end method

.method private cancelAllAnimator()V
    .locals 2

    .prologue
    .line 1303
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "cancelAllAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    .line 1307
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1311
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1313
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1315
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1319
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->initializeDisplay()V

    .line 1321
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1291
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 1297
    :cond_0
    return-void
.end method

.method private cancelPointnLineAnimator()V
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1329
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1331
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->initializeDisplay()V

    .line 1333
    return-void
.end method

.method private drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pie"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .prologue
    .line 1379
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1383
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1467
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    add-int v8, v2, v3

    .line 1471
    .local v8, "center_x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    add-int v9, v2, v3

    .line 1473
    .local v9, "center_y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v11

    .line 1475
    .local v11, "line_x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v12

    .line 1479
    .local v12, "line_y":I
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    const/high16 v3, 0x42f00000    # 120.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v3, 0x0

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    add-int v8, v2, v3

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    const/4 v3, 0x0

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    add-int v9, v2, v3

    .line 1493
    :cond_0
    const/4 v2, -0x1

    if-eq v11, v2, :cond_1

    const/4 v2, -0x1

    if-ne v12, v2, :cond_2

    .line 1467
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1499
    :cond_2
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 1503
    .local v16, "theta":D
    int-to-float v2, v8

    sub-int v3, v12, v9

    int-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v3, v0

    add-float v13, v2, v3

    .line 1505
    .local v13, "slope_x":F
    int-to-float v14, v12

    .line 1507
    .local v14, "slope_y":F
    sub-int v2, v11, v8

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v2, v3

    int-to-float v3, v8

    add-float v5, v2, v3

    .line 1511
    .local v5, "drawLine_x":F
    if-lt v12, v9, :cond_3

    .line 1513
    int-to-float v2, v9

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v3, v0

    add-float v6, v2, v3

    .line 1523
    .local v6, "drawLine_y":F
    :goto_2
    cmpg-float v2, v5, v13

    if-gez v2, :cond_4

    .line 1525
    int-to-float v3, v8

    int-to-float v4, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1517
    .end local v6    # "drawLine_y":F
    :cond_3
    int-to-float v2, v9

    sub-int v3, v11, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    mul-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v3, v0

    sub-float v6, v2, v3

    .restart local v6    # "drawLine_y":F
    goto :goto_2

    .line 1529
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 1531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v3, v8

    int-to-float v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    int-to-float v3, v12

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLinePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1543
    .end local v5    # "drawLine_x":F
    .end local v6    # "drawLine_y":F
    .end local v8    # "center_x":I
    .end local v9    # "center_y":I
    .end local v11    # "line_x":I
    .end local v12    # "line_y":I
    .end local v13    # "slope_x":F
    .end local v14    # "slope_y":F
    .end local v16    # "theta":D
    :cond_5
    return-void
.end method

.method private drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1389
    .local p2, "targetPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 1391
    .local v6, "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->rectf:Landroid/graphics/RectF;

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getStartAngle()F

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v2, v0, v2

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getSweepAngle()F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1397
    .end local v6    # "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_0
    return-void
.end method

.method private drawPoint(Ljava/lang/String;)V
    .locals 9
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42f00000    # 120.0f

    .line 1403
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1407
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineX()I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getLineY()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 1405
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1413
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_2

    .line 1415
    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterX(FF)I

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1, v7, v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getModifiedCenterY(FF)I

    move-result v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1427
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterX()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getCenterY()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointRadius:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1437
    :cond_3
    return-void
.end method

.method private initializeDisplay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1339
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1341
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointValue:F

    .line 1343
    iput v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F

    .line 1347
    return-void
.end method

.method private loadImageDrawable(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dimension"    # I

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202db

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    invoke-static {v0, p2, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 313
    return-void
.end method

.method private playFoldAnimator()V
    .locals 4

    .prologue
    .line 1251
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "playFoldAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1255
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    .line 1259
    return-void
.end method

.method private playSpreadAnimator()V
    .locals 4

    .prologue
    .line 1237
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "playSpreadAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V

    .line 1241
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 1243
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    .line 1245
    return-void
.end method

.method private setAnimator()V
    .locals 5

    .prologue
    const-wide/16 v2, 0x1f4

    const/4 v4, 0x2

    .line 473
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "setAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    .line 479
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 481
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 501
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 557
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseIn;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 579
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 631
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    .line 633
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 635
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 637
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$5;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 657
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->deltaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$6;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 695
    new-array v0, v4, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    .line 697
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 699
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 701
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$7;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 713
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 751
    new-array v0, v4, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 753
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 755
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 757
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 769
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 815
    new-array v0, v4, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    .line 817
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 819
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 821
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 823
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;-><init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 851
    return-void

    .line 477
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 555
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 631
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 695
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 751
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 815
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setBackgroundDonut(Z)V
    .locals 3
    .param p1, "isReverse"    # Z

    .prologue
    .line 1353
    if-eqz p1, :cond_0

    .line 1355
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1365
    :goto_0
    return-void

    .line 1361
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getColorValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private setLineCallback()V
    .locals 3

    .prologue
    .line 1577
    const-string v0, "secVisualEffect_Donut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lineCallbackListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;->onLineFinished()V

    .line 1585
    :cond_0
    return-void
.end method

.method private startAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 1277
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public drawDonutWithoutAnimation(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, "targetPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const-string v4, "secVisualEffect_Donut"

    const-string v5, "drawDonutWithoutAnimation"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 1205
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 1207
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    .line 1215
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 1217
    .local v0, "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v1

    .line 1219
    .local v1, "finalStartAngle":F
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    .line 1223
    .local v2, "finalSweepAngle":F
    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setStartAngle(F)V

    .line 1225
    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    goto :goto_0

    .line 1229
    .end local v0    # "aTargetPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    .end local v1    # "finalStartAngle":F
    .end local v2    # "finalSweepAngle":F
    :cond_0
    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I

    iget v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I

    iget v7, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 1231
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1671
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    if-eqz v0, :cond_3

    .line 1675
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1677
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1679
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    .line 1687
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    .line 1689
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    .line 1697
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1699
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1701
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1707
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1711
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1713
    .local v5, "m":Landroid/graphics/Matrix;
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1715
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    .line 1719
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirroredBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1753
    .end local v5    # "m":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 1725
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1727
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    if-eqz v0, :cond_4

    .line 1729
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->backDonutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1733
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPie(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    .line 1735
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawPoint(Ljava/lang/String;)V

    .line 1737
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z

    if-eqz v0, :cond_5

    .line 1739
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawAddedPie(Landroid/graphics/Canvas;Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;)V

    .line 1745
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1747
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mImageBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1749
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawLine(Landroid/graphics/Canvas;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playPointAnimator()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1087
    const-string v3, "secVisualEffect_Donut"

    const-string v4, "playPointAnimator"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v1, 0x0

    .line 1091
    .local v1, "count":I
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 1093
    .local v0, "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->hasLine()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1095
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    .end local v0    # "aThisPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 1119
    :cond_2
    :goto_1
    return-void

    .line 1113
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V

    .line 1115
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->calculateLineInvalidate()V

    .line 1117
    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->pointAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimator(Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public registerLineCallbackListener(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineCallbackListener:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;

    .line 1593
    return-void
.end method

.method public setDirectionRTL(Z)V
    .locals 0
    .param p1, "isDirectionRTL"    # Z

    .prologue
    .line 1661
    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mIsDirectionRTL:Z

    .line 1663
    return-void
.end method

.method public setLayoutDimension(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1647
    iput p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutWidth:I

    .line 1649
    iput p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutHeight:I

    .line 1651
    iget v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mLayoutHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    .line 1653
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->mirrorCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1655
    return-void
.end method

.method public setLineColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineColor:Ljava/lang/String;

    .line 1373
    return-void
.end method

.method public startAnimatorFoldnSpread(Ljava/util/ArrayList;Ljava/util/ArrayList;ZJ)V
    .locals 4
    .param p3, "isReverse"    # Z
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .local p1, "firstPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    .local p2, "secondPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 895
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "startAnimatorFoldnSpread"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    .line 899
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    .line 903
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 935
    iput-object p2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 937
    invoke-direct {p0, p3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setBackgroundDonut(Z)V

    .line 939
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 941
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 943
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseIn;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 945
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 947
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    .line 951
    if-eqz p3, :cond_0

    .line 953
    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    .line 955
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    .line 967
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->playFoldAnimator()V

    .line 969
    return-void

    .line 959
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z

    .line 961
    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    goto :goto_0
.end method

.method public startAnimatorSpread(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "firstPie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/4 v4, 0x0

    .line 1029
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "startAnimatorSpread"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z

    .line 1033
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAllAnimator()V

    .line 1037
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;

    .line 1039
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1045
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z

    .line 1047
    iput-boolean v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z

    .line 1049
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->playSpreadAnimator()V

    .line 1051
    return-void
.end method
