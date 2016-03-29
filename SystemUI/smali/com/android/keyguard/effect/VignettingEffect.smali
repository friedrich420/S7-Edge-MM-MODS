.class public Lcom/android/keyguard/effect/VignettingEffect;
.super Ljava/lang/Object;
.source "VignettingEffect.java"


# static fields
.field private static BOTTOM_DIM_ALPHA:I = 0x0

.field private static final BOTTOM_TO_TOP:I = 0x1

.field private static final DEFAULT_COLOR:I = 0x6e

.field private static final LIMITTED_VALUE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "VignettingEffect"

.field private static TOP_DIM_ALPHA:I

.field private static final TOP_TO_BOTTOM:I

.field private static VIGNETTING_BOTTOM_RATIO:F

.field private static VIGNETTING_TOP_RATIO:F

.field private static mDefaultColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 26
    const/16 v0, 0x4d

    sput v0, Lcom/android/keyguard/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    .line 27
    const/16 v0, 0x33

    sput v0, Lcom/android/keyguard/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    .line 32
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    .line 33
    const v0, 0x3def9db2    # 0.117f

    sput v0, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    .line 36
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/keyguard/effect/VignettingEffect;->mDefaultColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBlendedFilter(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "wallpaperBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 203
    :goto_0
    return-object p0

    .line 157
    :cond_0
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .local v11, "pnt":Landroid/graphics/Paint;
    invoke-static {}, Lcom/android/keyguard/effect/VignettingEffect;->init()V

    .line 164
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 165
    .local v10, "mRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-static {v10, v0, p0}, Lcom/android/keyguard/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    .line 167
    invoke-static {p0, v10}, Lcom/android/keyguard/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v9

    .line 169
    .local v9, "extractColor":I
    shr-int/lit8 v0, v9, 0x10

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 170
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget v5, Lcom/android/keyguard/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    const/16 v13, 0x6e

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 181
    :goto_1
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 184
    new-instance v10, Landroid/graphics/Rect;

    .end local v10    # "mRect":Landroid/graphics/Rect;
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 185
    .restart local v10    # "mRect":Landroid/graphics/Rect;
    const/4 v0, 0x1

    invoke-static {v10, v0, p0}, Lcom/android/keyguard/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    .line 187
    invoke-static {p0, v10}, Lcom/android/keyguard/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v9

    .line 189
    shr-int/lit8 v0, v9, 0x10

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc8

    if-le v0, v1, :cond_2

    .line 190
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v6, Lcom/android/keyguard/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    const/16 v7, 0x6e

    const/16 v12, 0x6e

    const/16 v13, 0x6e

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 201
    :goto_2
    invoke-virtual {v8, v10, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 175
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget v5, Lcom/android/keyguard/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_1

    .line 195
    :cond_2
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v5, v6, v7, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v6, Lcom/android/keyguard/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v7, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2
.end method

.method public static applyBlendedFilter(Landroid/widget/ImageView;)V
    .locals 15
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v5, 0x34

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v8, 0x6e

    .line 75
    if-nez p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 80
    .local v13, "wallpaperBitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_0

    .line 84
    new-instance v11, Landroid/graphics/ImageFilterSet;

    invoke-direct {v11}, Landroid/graphics/ImageFilterSet;-><init>()V

    .line 86
    .local v11, "filterSet":Landroid/graphics/ImageFilterSet;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 89
    .local v0, "topFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v9

    check-cast v9, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 92
    .local v9, "bottomFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    invoke-static {}, Lcom/android/keyguard/effect/VignettingEffect;->init()V

    .line 98
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 99
    .local v12, "mRect":Landroid/graphics/Rect;
    invoke-static {v12, v14, v13}, Lcom/android/keyguard/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    .line 101
    invoke-static {v13, v12}, Lcom/android/keyguard/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    .line 102
    .local v10, "extractColor":I
    const-string v3, "VignettingEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractedColor of top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v10, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 105
    shr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2

    .line 106
    sget v3, Lcom/android/keyguard/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v3, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v4, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    sub-float v5, v2, v4

    invoke-static {v14, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 120
    :goto_1
    const/4 v12, 0x0

    .line 121
    const/4 v10, 0x0

    .line 124
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "mRect":Landroid/graphics/Rect;
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .restart local v12    # "mRect":Landroid/graphics/Rect;
    const/4 v2, 0x1

    invoke-static {v12, v2, v13}, Lcom/android/keyguard/effect/VignettingEffect;->calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    .line 127
    invoke-static {v13, v12}, Lcom/android/keyguard/effect/VignettingEffect;->getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I

    move-result v10

    .line 128
    const-string v2, "VignettingEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractedColor of bottom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v10, 0x10

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v9}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 131
    shr-int/lit8 v2, v10, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc8

    if-le v2, v3, :cond_3

    .line 132
    sget v2, Lcom/android/keyguard/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v2, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    invoke-static {v14, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 146
    :goto_2
    invoke-virtual {v11, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 147
    invoke-virtual {v11, v9}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 149
    invoke-virtual {p0, v11}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto/16 :goto_0

    .line 111
    :cond_2
    sget v3, Lcom/android/keyguard/effect/VignettingEffect;->TOP_DIM_ALPHA:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    sget v4, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    sub-float v5, v2, v4

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v14, v4, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_1

    .line 137
    :cond_3
    sget v2, Lcom/android/keyguard/effect/VignettingEffect;->BOTTOM_DIM_ALPHA:I

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    sget v7, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v14, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move-object v2, v9

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_2
.end method

.method private static calcGradientArea(Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "rect"    # Landroid/graphics/Rect;
    .param p1, "direction"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 208
    .local v1, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 210
    .local v0, "bitmapHeight":I
    packed-switch p1, :pswitch_data_0

    .line 228
    const/4 p0, 0x0

    .line 231
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 214
    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 215
    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 216
    int-to-float v2, v0

    sget v3, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_TOP_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 221
    :pswitch_1
    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 222
    int-to-float v2, v0

    sget v3, Lcom/android/keyguard/effect/VignettingEffect;->VIGNETTING_BOTTOM_RATIO:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int v2, v0, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 223
    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 224
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static convertToAlphaValue(I)I
    .locals 1
    .param p0, "percent"    # I

    .prologue
    .line 50
    mul-int/lit16 v0, p0, 0xff

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 42
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "region"    # Landroid/graphics/Rect;

    .prologue
    .line 235
    const/high16 v19, 0x3e800000    # 0.25f

    .line 237
    .local v19, "mLimitRatio":F
    const-wide/16 v36, 0x0

    .line 238
    .local v36, "sumR":J
    const-wide/16 v34, 0x0

    .line 239
    .local v34, "sumG":J
    const-wide/16 v32, 0x0

    .line 240
    .local v32, "sumB":J
    const-wide/16 v28, 0x0

    .line 242
    .local v28, "sampleCount":J
    const-wide/16 v24, 0x0

    .line 243
    .local v24, "lowestR":J
    const-wide/16 v22, 0x0

    .line 244
    .local v22, "lowestG":J
    const-wide/16 v20, 0x0

    .line 246
    .local v20, "lowestB":J
    const-wide/16 v10, 0x0

    .line 247
    .local v10, "curR":J
    const-wide/16 v8, 0x0

    .line 248
    .local v8, "curG":J
    const-wide/16 v6, 0x0

    .line 251
    .local v6, "curB":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    .line 252
    .local v31, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 254
    .local v18, "h":I
    move/from16 v0, v31

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x42c80000    # 100.0f

    div-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v30, v0

    .line 255
    .local v30, "step":I
    :goto_0
    if-gtz v30, :cond_0

    .line 256
    const/16 v30, 0x1

    .line 258
    :cond_0
    const/16 v38, 0x0

    .local v38, "x":I
    :goto_1
    move/from16 v0, v38

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 259
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    .local v39, "y":I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_9

    .line 261
    if-eqz v38, :cond_1

    if-nez v39, :cond_3

    .line 259
    :cond_1
    :goto_3
    add-int v39, v39, v30

    goto :goto_2

    .line 254
    .end local v30    # "step":I
    .end local v38    # "x":I
    .end local v39    # "y":I
    :cond_2
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v40, v0

    const/high16 v41, 0x42c80000    # 100.0f

    div-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v30, v0

    goto :goto_0

    .line 264
    .restart local v30    # "step":I
    .restart local v38    # "x":I
    .restart local v39    # "y":I
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 266
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v10, v0

    .line 267
    add-long v36, v36, v10

    .line 269
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v8, v0

    .line 270
    add-long v34, v34, v8

    .line 272
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v6, v0

    .line 273
    add-long v32, v32, v6

    .line 275
    const-wide/16 v40, 0x1

    add-long v28, v28, v40

    .line 277
    cmp-long v40, v24, v10

    if-gtz v40, :cond_4

    const-wide/16 v40, 0x0

    cmp-long v40, v24, v40

    if-nez v40, :cond_5

    .line 278
    :cond_4
    move-wide/from16 v24, v10

    .line 279
    :cond_5
    cmp-long v40, v22, v8

    if-gtz v40, :cond_6

    const-wide/16 v40, 0x0

    cmp-long v40, v22, v40

    if-nez v40, :cond_7

    .line 280
    :cond_6
    move-wide/from16 v22, v8

    .line 281
    :cond_7
    cmp-long v40, v20, v6

    if-gtz v40, :cond_8

    const-wide/16 v40, 0x0

    cmp-long v40, v20, v40

    if-nez v40, :cond_1

    .line 282
    :cond_8
    move-wide/from16 v20, v6

    goto :goto_3

    .line 258
    .end local v4    # "color":I
    :cond_9
    add-int v38, v38, v30

    goto :goto_1

    .line 286
    .end local v39    # "y":I
    :cond_a
    const/4 v14, 0x0

    .local v14, "everageR":I
    const/4 v12, 0x0

    .local v12, "everageB":I
    const/4 v13, 0x0

    .line 287
    .local v13, "everageG":I
    const/16 v17, 0x0

    .local v17, "finalR":I
    const/16 v16, 0x0

    .local v16, "finalG":I
    const/4 v15, 0x0

    .line 294
    .local v15, "finalB":I
    div-long v40, v36, v28

    move-wide/from16 v0, v40

    long-to-int v14, v0

    .line 295
    div-long v40, v34, v28

    move-wide/from16 v0, v40

    long-to-int v13, v0

    .line 296
    div-long v40, v32, v28

    move-wide/from16 v0, v40

    long-to-int v12, v0

    .line 298
    const/16 v26, 0x0

    .line 300
    .local v26, "ratio":F
    int-to-long v0, v14

    move-wide/from16 v40, v0

    cmp-long v40, v40, v24

    if-lez v40, :cond_10

    .line 301
    int-to-long v0, v14

    move-wide/from16 v40, v0

    sub-long v40, v40, v24

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v14

    move/from16 v41, v0

    div-float v26, v40, v41

    .line 302
    cmpl-float v40, v26, v19

    if-lez v40, :cond_b

    .line 303
    move/from16 v26, v19

    .line 305
    :cond_b
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_f

    .line 306
    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v14

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v17, v0

    .line 313
    :goto_4
    int-to-long v0, v13

    move-wide/from16 v40, v0

    cmp-long v40, v40, v22

    if-lez v40, :cond_12

    .line 314
    int-to-long v0, v13

    move-wide/from16 v40, v0

    sub-long v40, v40, v22

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v13

    move/from16 v41, v0

    div-float v26, v40, v41

    .line 315
    cmpl-float v40, v26, v19

    if-lez v40, :cond_c

    .line 316
    move/from16 v26, v19

    .line 318
    :cond_c
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_11

    .line 319
    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v13

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v16, v0

    .line 326
    :goto_5
    int-to-long v0, v12

    move-wide/from16 v40, v0

    cmp-long v40, v40, v20

    if-lez v40, :cond_14

    .line 327
    int-to-long v0, v12

    move-wide/from16 v40, v0

    sub-long v40, v40, v20

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v40, v0

    int-to-float v0, v12

    move/from16 v41, v0

    div-float v26, v40, v41

    .line 328
    cmpl-float v40, v26, v19

    if-lez v40, :cond_d

    .line 329
    move/from16 v26, v19

    .line 331
    :cond_d
    const/16 v40, 0x0

    cmpl-float v40, v26, v40

    if-lez v40, :cond_13

    .line 332
    const/high16 v40, 0x3f800000    # 1.0f

    sub-float v40, v40, v26

    int-to-float v0, v12

    move/from16 v41, v0

    mul-float v40, v40, v41

    move/from16 v0, v40

    float-to-int v15, v0

    .line 339
    :goto_6
    const/16 v40, 0xff

    move/from16 v0, v40

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v27

    .line 341
    .local v27, "resultColor":I
    const/16 v40, 0xc8

    move/from16 v0, v17

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    const/16 v40, 0xc8

    move/from16 v0, v16

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    const/16 v40, 0xc8

    move/from16 v0, v40

    if-le v15, v0, :cond_e

    .line 342
    sget v27, Lcom/android/keyguard/effect/VignettingEffect;->mDefaultColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v12    # "everageB":I
    .end local v13    # "everageG":I
    .end local v14    # "everageR":I
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v17    # "finalR":I
    .end local v18    # "h":I
    .end local v26    # "ratio":F
    .end local v27    # "resultColor":I
    .end local v30    # "step":I
    .end local v31    # "w":I
    .end local v38    # "x":I
    :cond_e
    :goto_7
    return v27

    .line 308
    .restart local v12    # "everageB":I
    .restart local v13    # "everageG":I
    .restart local v14    # "everageR":I
    .restart local v15    # "finalB":I
    .restart local v16    # "finalG":I
    .restart local v17    # "finalR":I
    .restart local v18    # "h":I
    .restart local v26    # "ratio":F
    .restart local v30    # "step":I
    .restart local v31    # "w":I
    .restart local v38    # "x":I
    :cond_f
    move/from16 v17, v14

    goto/16 :goto_4

    .line 310
    :cond_10
    move/from16 v17, v14

    goto/16 :goto_4

    .line 321
    :cond_11
    move/from16 v16, v13

    goto :goto_5

    .line 323
    :cond_12
    move/from16 v16, v13

    goto :goto_5

    .line 334
    :cond_13
    move v15, v12

    goto :goto_6

    .line 336
    :cond_14
    move v15, v12

    goto :goto_6

    .line 347
    .end local v12    # "everageB":I
    .end local v13    # "everageG":I
    .end local v14    # "everageR":I
    .end local v15    # "finalB":I
    .end local v16    # "finalG":I
    .end local v17    # "finalR":I
    .end local v18    # "h":I
    .end local v26    # "ratio":F
    .end local v30    # "step":I
    .end local v31    # "w":I
    .end local v38    # "x":I
    :catch_0
    move-exception v5

    .line 348
    .local v5, "e":Ljava/lang/Exception;
    sget v27, Lcom/android/keyguard/effect/VignettingEffect;->mDefaultColor:I

    goto :goto_7
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public static resetBlendedFilter(Landroid/widget/ImageView;)V
    .locals 6
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v5, 0x34

    .line 54
    if-nez p0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v1, Landroid/graphics/ImageFilterSet;

    invoke-direct {v1}, Landroid/graphics/ImageFilterSet;-><init>()V

    .line 59
    .local v1, "filterSet":Landroid/graphics/ImageFilterSet;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v2

    check-cast v2, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 62
    .local v2, "topFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    invoke-static {v5}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 65
    .local v0, "bottomFilter":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    invoke-virtual {v2}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 66
    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 68
    invoke-virtual {v1, v2}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    goto :goto_0
.end method
