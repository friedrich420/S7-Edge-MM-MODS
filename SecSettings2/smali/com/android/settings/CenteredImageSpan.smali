.class public Lcom/android/settings/CenteredImageSpan;
.super Landroid/text/style/ImageSpan;
.source "CenteredImageSpan.java"


# instance fields
.field public fontScale:F

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/CenteredImageSpan;->fontScale:F

    .line 18
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/settings/CenteredImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 55
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 61
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/CenteredImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/CenteredImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 66
    :cond_1
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 34
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 35
    .local v3, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-direct {p0}, Lcom/android/settings/CenteredImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 36
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 39
    :cond_0
    move/from16 v0, p7

    int-to-float v9, v0

    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v10, v10

    add-float v5, v9, v10

    .line 40
    .local v5, "text_bottom_base":F
    move/from16 v0, p7

    int-to-float v9, v0

    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v10, v10

    add-float v7, v9, v10

    .line 41
    .local v7, "text_top_base":F
    sub-float v4, v5, v7

    .line 42
    .local v4, "text_area_height":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v4, v9

    add-float v6, v7, v9

    .line 43
    .local v6, "text_center_position":F
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/settings/CenteredImageSpan;->fontScale:F

    mul-float v2, v9, v10

    .line 44
    .local v2, "drawable_height":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v8, v6, v9

    .line 46
    .local v8, "transY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    const/high16 v9, 0x3f000000    # 0.5f

    add-float v9, v9, p5

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 48
    iget v9, p0, Lcom/android/settings/CenteredImageSpan;->fontScale:F

    iget v10, p0, Lcom/android/settings/CenteredImageSpan;->fontScale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 49
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/CenteredImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 23
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 28
    :goto_0
    return v2

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 28
    .local v1, "rect":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/CenteredImageSpan;->fontScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
