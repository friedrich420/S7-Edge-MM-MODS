.class public Lcom/android/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final ALPHA_TOLERANCE:I = 0x32

.field private static final COMPACT_BITMAP_SIZE:I = 0x40

.field private static final TOLERANCE:I = 0x14


# instance fields
.field private mTempBuffer:[I

.field private mTempCompactBitmap:Landroid/graphics/Bitmap;

.field private mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

.field private mTempCompactBitmapPaint:Landroid/graphics/Paint;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 129
    if-nez p0, :cond_5

    .line 157
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_4
    return-object v4

    .line 132
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 133
    .local v2, "originalWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 135
    .local v1, "originalHeight":I
    if-gt v2, p1, :cond_1c

    if-gt v1, p2, :cond_1c

    instance-of v7, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1c

    .line 137
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_4

    .line 139
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1c
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    .line 145
    int-to-float v7, p1

    int-to-float v8, v2

    div-float/2addr v7, v8

    int-to-float v8, p2

    int-to-float v9, v1

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 147
    .local v3, "ratio":F
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 148
    int-to-float v7, v2

    mul-float/2addr v7, v3

    float-to-int v6, v7

    .line 149
    .local v6, "scaledWidth":I
    int-to-float v7, v1

    mul-float/2addr v7, v3

    float-to-int v5, v7

    .line 150
    .local v5, "scaledHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 153
    .local v4, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v10, v10, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method private ensureBufferSize(I)V
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 98
    iget-object v0, p0, mTempBuffer:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, mTempBuffer:[I

    array-length v0, v0

    if-ge v0, p1, :cond_d

    .line 99
    :cond_9
    new-array v0, p1, [I

    iput-object v0, p0, mTempBuffer:[I

    .line 101
    :cond_d
    return-void
.end method

.method public static isGrayscale(I)Z
    .registers 8
    .param p0, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x14

    .line 110
    shr-int/lit8 v5, p0, 0x18

    and-int/lit16 v0, v5, 0xff

    .line 111
    .local v0, "alpha":I
    const/16 v5, 0x32

    if-ge v0, v5, :cond_c

    .line 119
    :cond_b
    :goto_b
    return v4

    .line 115
    :cond_c
    shr-int/lit8 v5, p0, 0x10

    and-int/lit16 v3, v5, 0xff

    .line 116
    .local v3, "r":I
    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v2, v5, 0xff

    .line 117
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 119
    .local v1, "b":I
    sub-int v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2e

    sub-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2e

    sub-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v6, :cond_b

    :cond_2e
    const/4 v4, 0x0

    goto :goto_b
.end method


# virtual methods
.method public isGrayscale(Landroid/graphics/Bitmap;)Z
    .registers 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x42800000    # 64.0f

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 60
    .local v7, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 63
    .local v3, "width":I
    if-gt v7, v1, :cond_13

    if-le v3, v1, :cond_59

    .line 64
    :cond_13
    iget-object v0, p0, mTempCompactBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_34

    .line 65
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, mTempCompactBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, mTempCompactBitmapPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    :cond_34
    iget-object v0, p0, mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 73
    iget-object v0, p0, mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v3

    div-float v1, v6, v1

    int-to-float v4, v7

    div-float v4, v6, v4

    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 77
    iget-object v0, p0, mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    iget-object v0, p0, mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, mTempMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 79
    iget-object p1, p0, mTempCompactBitmap:Landroid/graphics/Bitmap;

    .line 80
    const/16 v7, 0x40

    move v3, v7

    .line 83
    :cond_59
    mul-int v9, v7, v3

    .line 84
    .local v9, "size":I
    invoke-direct {p0, v9}, ensureBufferSize(I)V

    .line 85
    iget-object v1, p0, mTempBuffer:[I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 86
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_68
    if-ge v8, v9, :cond_78

    .line 87
    iget-object v0, p0, mTempBuffer:[I

    aget v0, v0, v8

    invoke-static {v0}, isGrayscale(I)Z

    move-result v0

    if-nez v0, :cond_75

    .line 91
    :goto_74
    return v2

    .line 86
    :cond_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    :cond_78
    move v2, v10

    .line 91
    goto :goto_74
.end method
