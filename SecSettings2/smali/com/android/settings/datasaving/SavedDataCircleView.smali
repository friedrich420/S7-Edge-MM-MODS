.class public Lcom/android/settings/datasaving/SavedDataCircleView;
.super Landroid/view/View;
.source "SavedDataCircleView.java"


# instance fields
.field private mBackgroundColor:I

.field private mCenterX:F

.field private mCenterY:F

.field private mEndAngle:F

.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mRadius:F

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mBackgroundColor:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mRadius:F

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mBackgroundColor:I

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mOval:Landroid/graphics/RectF;

    .line 52
    return-void
.end method

.method private setEndAngle(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/datasaving/SavedDataCircleView;->validateAngle(F)F

    move-result v0

    iput v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mEndAngle:F

    .line 85
    return-void
.end method

.method private validateAngle(F)F
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 88
    move v0, p1

    .line 89
    .local v0, "finalAngle":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 90
    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 92
    :cond_0
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x43870000    # 270.0f

    .line 96
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mOval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mCenterX:F

    iget v4, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mRadius:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mCenterY:F

    iget v5, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mRadius:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mCenterX:F

    iget v6, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mRadius:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mCenterY:F

    iget v7, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mRadius:F

    add-float/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    iget v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mEndAngle:F

    sub-float v3, v0, v2

    .line 100
    .local v3, "fillAngle":F
    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_0

    .line 101
    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr v3, v0

    .line 103
    :cond_0
    iget v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mBackgroundColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 104
    iget v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mOval:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method public setCircleCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mCenterX:F

    .line 80
    iput p2, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mCenterY:F

    .line 81
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public setPercent(F)V
    .locals 2
    .param p1, "percent"    # F

    .prologue
    .line 75
    const/high16 v0, 0x43870000    # 270.0f

    const v1, 0x40666666    # 3.6f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/datasaving/SavedDataCircleView;->setEndAngle(F)V

    .line 76
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 71
    iput p1, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mRadius:F

    .line 72
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/datasaving/SavedDataCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    :cond_0
    return-void
.end method
