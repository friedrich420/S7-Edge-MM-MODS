.class Lcom/android/systemui/egg/MLand$Stem;
.super Lcom/android/systemui/egg/MLand$Obstacle;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stem"
.end annotation


# instance fields
.field id:I

.field mDrawShadow:Z

.field mGradient:Landroid/graphics/drawable/GradientDrawable;

.field mJandystripe:Landroid/graphics/Path;

.field mPaint:Landroid/graphics/Paint;

.field mPaint2:Landroid/graphics/Paint;

.field mShadow:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "h"    # F
    .param p4, "drawShadow"    # Z

    .prologue
    const/4 v5, 0x2

    const/high16 v4, -0x10000

    .line 1313
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Stem;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1314
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/egg/MLand$Obstacle;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    .line 1305
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    .line 1306
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    .line 1307
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    .line 1315
    # getter for: Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I
    invoke-static {p1}, Lcom/android/systemui/egg/MLand;->access$1300(Lcom/android/systemui/egg/MLand;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Stem;->id:I

    .line 1317
    iput-boolean p4, p0, Lcom/android/systemui/egg/MLand$Stem;->mDrawShadow:Z

    .line 1318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x22000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1323
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 1325
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    .line 1326
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1333
    :goto_0
    return-void

    .line 1331
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    goto :goto_0

    .line 1324
    nop

    :array_0
    .array-data 4
        -0x1
        -0x222223
    .end array-data

    .line 1331
    :array_1
    .array-data 4
        -0x43555c
        -0x5e7781
    .end array-data
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1337
    invoke-super {p0}, Lcom/android/systemui/egg/MLand$Obstacle;->onAttachedToWindow()V

    .line 1338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setWillNotDraw(Z)V

    .line 1339
    new-instance v0, Lcom/android/systemui/egg/MLand$Stem$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$Stem$1;-><init>(Lcom/android/systemui/egg/MLand$Stem;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Stem;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1345
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    .line 1348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 1349
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 1350
    .local v0, "h":I
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    int-to-float v4, v1

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 1351
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v6, v6, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1352
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1354
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    if-eqz v3, :cond_0

    .line 1355
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1356
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v4, v1

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1357
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v4, v1

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1358
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    int-to-float v4, v1

    mul-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1359
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    mul-int/lit8 v4, v1, 0x3

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1360
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 1361
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1362
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1363
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mJandystripe:Landroid/graphics/Path;

    mul-int/lit8 v4, v1, 0x4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 1361
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    goto :goto_0

    .line 1367
    .end local v2    # "y":I
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mDrawShadow:Z

    if-nez v3, :cond_1

    .line 1375
    :goto_1
    return-void

    .line 1368
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1369
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1370
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v1

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1371
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    int-to-float v4, v1

    # getter for: Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v5, v5

    mul-float/2addr v5, v9

    int-to-float v6, v1

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1372
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    # getter for: Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    invoke-virtual {v3, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1373
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 1374
    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Stem;->mShadow:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Stem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1
.end method
