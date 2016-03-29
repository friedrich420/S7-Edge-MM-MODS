.class Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CoverPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverCirclePreviewDrawable"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mShader:Landroid/graphics/BitmapShader;


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, -0x3

    return v0
.end method

.method public isShaderReady()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->invalidateSelf()V

    .line 258
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 263
    return-void
.end method

.method public setPreViewBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 278
    return-void

    .line 274
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mShader:Landroid/graphics/BitmapShader;

    goto :goto_0
.end method

.method public setPreviewRect(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 282
    return-void
.end method
