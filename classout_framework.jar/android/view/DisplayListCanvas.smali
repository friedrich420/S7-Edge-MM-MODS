.class public Landroid/view/DisplayListCanvas;
.super Landroid/graphics/Canvas;
.source "DisplayListCanvas.java"


# static fields
.field private static final POOL_LIMIT:I = 0x19

.field private static sIsAvailable:Z

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/DisplayListCanvas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHeight:I

.field mNode:Landroid/view/RenderNode;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    .line 80
    invoke-static {}, nIsAvailable()Z

    move-result v0

    sput-boolean v0, sIsAvailable:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 91
    invoke-static {}, nCreateDisplayListCanvas()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Canvas;-><init>(J)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, mDensity:I

    .line 93
    return-void
.end method

.method static isAvailable()Z
    .registers 1

    .prologue
    .line 83
    sget-boolean v0, sIsAvailable:Z

    return v0
.end method

.method private static native nCallDrawGLFunction(JJ)V
.end method

.method private static native nCreateDisplayListCanvas()J
.end method

.method private static native nDrawCircle(JJJJJ)V
.end method

.method private static native nDrawLayer(JJFF)V
.end method

.method private static native nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V
.end method

.method private static native nDrawRects(JJJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDrawRoundRect(JJJJJJJJ)V
.end method

.method private static native nFinish(J)V
.end method

.method protected static native nFinishRecording(J)J
.end method

.method private static native nGetHighContrastText(J)Z
.end method

.method private static native nGetMaximumTextureHeight()I
.end method

.method private static native nGetMaximumTextureWidth()I
.end method

.method private static native nInsertReorderBarrier(JZ)V
.end method

.method private static native nIsAvailable()Z
.end method

.method private static native nPrepare(J)V
.end method

.method private static native nPrepareDirty(JIIII)V
.end method

.method private static native nSetHighContrastText(JZ)V
.end method

.method private static native nSetViewport(JII)V
.end method

.method static obtain(Landroid/view/RenderNode;)Landroid/view/DisplayListCanvas;
    .registers 4
    .param p0, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 52
    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "node cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_b
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 54
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    if-nez v0, :cond_1a

    .line 55
    new-instance v0, Landroid/view/DisplayListCanvas;

    .end local v0    # "canvas":Landroid/view/DisplayListCanvas;
    invoke-direct {v0}, <init>()V

    .line 57
    .restart local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :cond_1a
    iput-object p0, v0, mNode:Landroid/view/RenderNode;

    .line 58
    return-object v0
.end method


# virtual methods
.method public callDrawGLFunction2(J)V
    .registers 6
    .param p1, "drawGLFunction"    # J

    .prologue
    .line 230
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, nCallDrawGLFunction(JJ)V

    .line 231
    return-void
.end method

.method public drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "cx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "cy":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "radius":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual {p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-static/range {v0 .. v9}, nDrawCircle(JJJJJ)V

    .line 303
    return-void
.end method

.method drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    .registers 11
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 266
    invoke-virtual {p1, p4}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 267
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getLayerHandle()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, nDrawLayer(JJFF)V

    .line 268
    return-void
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 16
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 280
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 281
    if-nez p3, :cond_1f

    const-wide/16 v10, 0x0

    .line 282
    .local v10, "nativePaint":J
    :goto_b
    iget-wide v1, p0, mNativeCanvasWrapper:J

    iget-wide v4, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v0

    invoke-static/range {v1 .. v11}, nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V

    .line 284
    return-void

    .line 281
    .end local v10    # "nativePaint":J
    :cond_1f
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    goto :goto_b
.end method

.method public drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 16
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 290
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v3}, throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 291
    if-nez p3, :cond_1b

    const-wide/16 v10, 0x0

    .line 292
    .local v10, "nativePaint":J
    :goto_b
    iget-wide v1, p0, mNativeCanvasWrapper:J

    iget-wide v4, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v6, p2, Landroid/graphics/RectF;->left:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    iget v8, p2, Landroid/graphics/RectF;->right:F

    iget v9, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v1 .. v11}, nDrawPatch(JLandroid/graphics/Bitmap;JFFFFJ)V

    .line 294
    return-void

    .line 291
    .end local v10    # "nativePaint":J
    :cond_1b
    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v10

    goto :goto_b
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 9
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 323
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_16

    .line 324
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_15

    .line 325
    iget-wide v0, p0, mNativeCanvasWrapper:J

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v2, v2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, nDrawRects(JJJ)V

    .line 330
    :cond_15
    :goto_15
    return-void

    .line 328
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_15
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .registers 6
    .param p1, "renderNode"    # Landroid/view/RenderNode;

    .prologue
    .line 248
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, nDrawRenderNode(JJ)V

    .line 249
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "left":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p2, "top":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p3, "right":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p4, "bottom":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p5, "rx":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p6, "ry":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    .local p7, "paint":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    move-object/from16 v0, p0

    iget-wide v2, v0, mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v12

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v14

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v16

    invoke-static/range {v2 .. v17}, nDrawRoundRect(JJJJJJJJ)V

    .line 315
    return-void
.end method

.method finishRecording()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-static {v0, v1}, nFinishRecording(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, mHeight:I

    return v0
.end method

.method public getHighContrastText()Z
    .registers 3

    .prologue
    .line 176
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-static {v0, v1}, nGetHighContrastText(J)Z

    move-result v0

    return v0
.end method

.method public getMaximumBitmapHeight()I
    .registers 2

    .prologue
    .line 139
    invoke-static {}, nGetMaximumTextureHeight()I

    move-result v0

    return v0
.end method

.method public getMaximumBitmapWidth()I
    .registers 2

    .prologue
    .line 134
    invoke-static {}, nGetMaximumTextureWidth()I

    move-result v0

    return v0
.end method

.method getRenderer()J
    .registers 3

    .prologue
    .line 149
    iget-wide v0, p0, mNativeCanvasWrapper:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, mWidth:I

    return v0
.end method

.method public insertInorderBarrier()V
    .registers 4

    .prologue
    .line 188
    iget-wide v0, p0, mNativeCanvasWrapper:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, nInsertReorderBarrier(JZ)V

    .line 189
    return-void
.end method

.method public insertReorderBarrier()V
    .registers 4

    .prologue
    .line 183
    iget-wide v0, p0, mNativeCanvasWrapper:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, nInsertReorderBarrier(JZ)V

    .line 184
    return-void
.end method

.method public isHardwareAccelerated()Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingFor(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v0, p0, mNode:Landroid/view/RenderNode;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPostDraw()V
    .registers 3

    .prologue
    .line 213
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-static {v0, v1}, nFinish(J)V

    .line 214
    return-void
.end method

.method public onPreDraw(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 199
    if-eqz p1, :cond_10

    .line 200
    iget-wide v0, p0, mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, nPrepareDirty(JIIII)V

    .line 204
    :goto_f
    return-void

    .line 202
    :cond_10
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-static {v0, v1}, nPrepare(J)V

    goto :goto_f
.end method

.method recycle()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, mNode:Landroid/view/RenderNode;

    .line 63
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDensity(I)V
    .registers 2
    .param p1, "density"    # I

    .prologue
    .line 105
    return-void
.end method

.method public setHighContrastText(Z)V
    .registers 4
    .param p1, "highContrastText"    # Z

    .prologue
    .line 169
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, nSetHighContrastText(JZ)V

    .line 170
    return-void
.end method

.method public setViewport(II)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 158
    iput p1, p0, mWidth:I

    .line 159
    iput p2, p0, mHeight:I

    .line 161
    iget-wide v0, p0, mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, nSetViewport(JII)V

    .line 162
    return-void
.end method
