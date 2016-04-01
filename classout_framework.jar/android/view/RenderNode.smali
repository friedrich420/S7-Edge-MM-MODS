.class public Landroid/view/RenderNode;
.super Ljava/lang/Object;
.source "RenderNode.java"


# static fields
.field public static final FLAG_CLIP_CHILDREN:I = 0x1

.field public static final STATUS_DONE:I = 0x0

.field public static final STATUS_DRAW:I = 0x1

.field public static final STATUS_DREW:I = 0x4

.field public static final STATUS_INVOKE:I = 0x2


# instance fields
.field final mNativeRenderNode:J

.field private final mOwningView:Landroid/view/View;

.field private mValid:Z


# direct methods
.method private constructor <init>(J)V
    .registers 4
    .param p1, "nativePtr"    # J

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-wide p1, p0, mNativeRenderNode:J

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, mOwningView:Landroid/view/View;

    .line 188
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owningView"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {p1}, nCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, mNativeRenderNode:J

    .line 179
    iput-object p2, p0, mOwningView:Landroid/view/View;

    .line 180
    return-void
.end method

.method public static adopt(J)Landroid/view/RenderNode;
    .registers 4
    .param p0, "nativePtr"    # J

    .prologue
    .line 209
    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, <init>(J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "owningView"    # Landroid/view/View;

    .prologue
    .line 199
    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, <init>(Ljava/lang/String;Landroid/view/View;)V

    return-object v0
.end method

.method private static native nAddAnimator(JJ)V
.end method

.method private static native nAddImageFilterClipRect(JIIIIF)V
.end method

.method private static native nClearImageFilterClipRects(J)V
.end method

.method private static native nClearImageFilters(J)V
.end method

.method private static native nCreate(Ljava/lang/String;)J
.end method

.method private static native nDestroyRenderNode(J)V
.end method

.method private static native nEndAllAnimators(J)V
.end method

.method private static native nGetAlpha(J)F
.end method

.method private static native nGetCameraDistance(J)F
.end method

.method private static native nGetClipToOutline(J)Z
.end method

.method private static native nGetDebugSize(J)I
.end method

.method private static native nGetElevation(J)F
.end method

.method private static native nGetInverseTransformMatrix(JJ)V
.end method

.method private static native nGetPivotX(J)F
.end method

.method private static native nGetPivotY(J)F
.end method

.method private static native nGetRotation(J)F
.end method

.method private static native nGetRotationX(J)F
.end method

.method private static native nGetRotationY(J)F
.end method

.method private static native nGetScaleX(J)F
.end method

.method private static native nGetScaleY(J)F
.end method

.method private static native nGetTransformMatrix(JJ)V
.end method

.method private static native nGetTranslationX(J)F
.end method

.method private static native nGetTranslationY(J)F
.end method

.method private static native nGetTranslationZ(J)F
.end method

.method private static native nHasIdentityMatrix(J)Z
.end method

.method private static native nHasOverlappingRendering(J)Z
.end method

.method private static native nHasShadow(J)Z
.end method

.method private static native nIsPivotExplicitlySet(J)Z
.end method

.method private static native nOffsetLeftAndRight(JI)Z
.end method

.method private static native nOffsetTopAndBottom(JI)Z
.end method

.method private static native nOutput(J)V
.end method

.method private static native nSetAlpha(JF)Z
.end method

.method private static native nSetAnimationMatrix(JJ)Z
.end method

.method private static native nSetBottom(JI)Z
.end method

.method private static native nSetCameraDistance(JF)Z
.end method

.method private static native nSetClipBounds(JIIII)Z
.end method

.method private static native nSetClipBoundsEmpty(J)Z
.end method

.method private static native nSetClipToBounds(JZ)Z
.end method

.method private static native nSetClipToOutline(JZ)Z
.end method

.method private static native nSetDisplayListData(JJ)V
.end method

.method private static native nSetElevation(JF)Z
.end method

.method private static native nSetHasOverlappingRendering(JZ)Z
.end method

.method private static native nSetImageFilter(JJI)V
.end method

.method private static native nSetLayerPaint(JJ)Z
.end method

.method private static native nSetLayerType(JI)Z
.end method

.method private static native nSetLeft(JI)Z
.end method

.method private static native nSetLeftTopRightBottom(JIIII)Z
.end method

.method private static native nSetOutlineConvexPath(JJF)Z
.end method

.method private static native nSetOutlineEmpty(J)Z
.end method

.method private static native nSetOutlineNone(J)Z
.end method

.method private static native nSetOutlineRoundRect(JIIIIFF)Z
.end method

.method private static native nSetPivotX(JF)Z
.end method

.method private static native nSetPivotY(JF)Z
.end method

.method private static native nSetProjectBackwards(JZ)Z
.end method

.method private static native nSetProjectionReceiver(JZ)Z
.end method

.method private static native nSetRevealClip(JZFFF)Z
.end method

.method private static native nSetRight(JI)Z
.end method

.method private static native nSetRotation(JF)Z
.end method

.method private static native nSetRotationX(JF)Z
.end method

.method private static native nSetRotationY(JF)Z
.end method

.method private static native nSetScaleX(JF)Z
.end method

.method private static native nSetScaleY(JF)Z
.end method

.method private static native nSetStaticMatrix(JJ)Z
.end method

.method private static native nSetTop(JI)Z
.end method

.method private static native nSetTranslationX(JF)Z
.end method

.method private static native nSetTranslationY(JF)Z
.end method

.method private static native nSetTranslationZ(JF)Z
.end method

.method private processImageFilter(Landroid/graphics/ImageFilter;)V
    .registers 9
    .param p1, "filter"    # Landroid/graphics/ImageFilter;

    .prologue
    .line 319
    if-eqz p1, :cond_22

    .line 320
    instance-of v2, p1, Landroid/graphics/ImageFilterSet;

    if-eqz v2, :cond_1a

    move-object v0, p1

    .line 321
    check-cast v0, Landroid/graphics/ImageFilterSet;

    .line 322
    .local v0, "filterSet":Landroid/graphics/ImageFilterSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {v0}, Landroid/graphics/ImageFilterSet;->getFilterCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 323
    invoke-virtual {v0, v1}, Landroid/graphics/ImageFilterSet;->getFilterAt(I)Landroid/graphics/ImageFilter;

    move-result-object v2

    invoke-direct {p0, v2}, processImageFilter(Landroid/graphics/ImageFilter;)V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 327
    .end local v0    # "filterSet":Landroid/graphics/ImageFilterSet;
    .end local v1    # "i":I
    :cond_1a
    iget-wide v2, p0, mNativeRenderNode:J

    iget-wide v4, p1, Landroid/graphics/ImageFilter;->mNativeImageFilter:J

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, nSetImageFilter(JJI)V

    .line 330
    :cond_22
    return-void
.end method


# virtual methods
.method public addAnimator(Landroid/view/RenderNodeAnimator;)V
    .registers 6
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 868
    iget-object v0, p0, mOwningView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_12

    .line 869
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_12
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/view/RenderNodeAnimator;->getNativeAnimator()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, nAddAnimator(JJ)V

    .line 872
    iget-object v0, p0, mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 873
    return-void
.end method

.method addImageFilterClipRect(IIIIF)V
    .registers 13
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "radius"    # F

    .prologue
    .line 347
    iget-wide v0, p0, mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, nAddImageFilterClipRect(JIIIIF)V

    .line 348
    return-void
.end method

.method clearImageFilterClipRects()V
    .registers 3

    .prologue
    .line 338
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nClearImageFilterClipRects(J)V

    .line 339
    return-void
.end method

.method public destroyDisplayListData()V
    .registers 5

    .prologue
    .line 270
    iget-boolean v0, p0, mValid:Z

    if-nez v0, :cond_5

    .line 274
    :goto_4
    return-void

    .line 272
    :cond_5
    iget-wide v0, p0, mNativeRenderNode:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, nSetDisplayListData(JJ)V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, mValid:Z

    goto :goto_4
.end method

.method public end(Landroid/view/DisplayListCanvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->onPostDraw()V

    .line 258
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->finishRecording()J

    move-result-wide v0

    .line 259
    .local v0, "renderNodeData":J
    iget-wide v2, p0, mNativeRenderNode:J

    invoke-static {v2, v3, v0, v1}, nSetDisplayListData(JJ)V

    .line 260
    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->recycle()V

    .line 261
    const/4 v2, 0x1

    iput-boolean v2, p0, mValid:Z

    .line 262
    return-void
.end method

.method public endAllAnimators()V
    .registers 3

    .prologue
    .line 876
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nEndAllAnimators(J)V

    .line 877
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 978
    :try_start_0
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nDestroyRenderNode(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 980
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 982
    return-void

    .line 980
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlpha()F
    .registers 3

    .prologue
    .line 490
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetAlpha(J)F

    move-result v0

    return v0
.end method

.method public getCameraDistance()F
    .registers 3

    .prologue
    .line 760
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetCameraDistance(J)F

    move-result v0

    return v0
.end method

.method public getClipToOutline()Z
    .registers 3

    .prologue
    .line 436
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetClipToOutline(J)Z

    move-result v0

    return v0
.end method

.method public getDebugSize()I
    .registers 3

    .prologue
    .line 860
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetDebugSize(J)I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .registers 3

    .prologue
    .line 525
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetElevation(J)F

    move-result v0

    return v0
.end method

.method public getInverseMatrix(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 304
    iget-wide v0, p0, mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, nGetInverseTransformMatrix(JJ)V

    .line 305
    return-void
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 300
    iget-wide v0, p0, mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, nGetTransformMatrix(JJ)V

    .line 301
    return-void
.end method

.method getNativeDisplayList()J
    .registers 3

    .prologue
    .line 285
    iget-boolean v0, p0, mValid:Z

    if-nez v0, :cond_c

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The display list is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_c
    iget-wide v0, p0, mNativeRenderNode:J

    return-wide v0
.end method

.method public getPivotX()F
    .registers 3

    .prologue
    .line 712
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .registers 3

    .prologue
    .line 733
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .registers 3

    .prologue
    .line 607
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetRotation(J)F

    move-result v0

    return v0
.end method

.method public getRotationX()F
    .registers 3

    .prologue
    .line 628
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetRotationX(J)F

    move-result v0

    return v0
.end method

.method public getRotationY()F
    .registers 3

    .prologue
    .line 649
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetRotationY(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .registers 3

    .prologue
    .line 670
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .registers 3

    .prologue
    .line 691
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .registers 3

    .prologue
    .line 546
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetTranslationX(J)F

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .registers 3

    .prologue
    .line 567
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetTranslationY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationZ()F
    .registers 3

    .prologue
    .line 586
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nGetTranslationZ(J)F

    move-result v0

    return v0
.end method

.method public hasIdentityMatrix()Z
    .registers 3

    .prologue
    .line 296
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nHasIdentityMatrix(J)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 3

    .prologue
    .line 517
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nHasOverlappingRendering(J)Z

    move-result v0

    return v0
.end method

.method public hasShadow()Z
    .registers 3

    .prologue
    .line 423
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nHasShadow(J)Z

    move-result v0

    return v0
.end method

.method public isPivotExplicitlySet()Z
    .registers 3

    .prologue
    .line 737
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nIsPivotExplicitlySet(J)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, mValid:Z

    return v0
.end method

.method public offsetLeftAndRight(I)Z
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 833
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nOffsetLeftAndRight(JI)Z

    move-result v0

    return v0
.end method

.method public offsetTopAndBottom(I)Z
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 845
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nOffsetTopAndBottom(JI)Z

    move-result v0

    return v0
.end method

.method public output()V
    .registers 3

    .prologue
    .line 853
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nOutput(J)V

    .line 854
    return-void
.end method

.method public setAlpha(F)Z
    .registers 4
    .param p1, "alpha"    # F

    .prologue
    .line 479
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public setAnimationMatrix(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 466
    iget-wide v2, p0, mNativeRenderNode:J

    if-eqz p1, :cond_b

    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    :goto_6
    invoke-static {v2, v3, v0, v1}, nSetAnimationMatrix(JJ)Z

    move-result v0

    return v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public setBottom(I)Z
    .registers 4
    .param p1, "bottom"    # I

    .prologue
    .line 804
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetBottom(JI)Z

    move-result v0

    return v0
.end method

.method public setCameraDistance(F)Z
    .registers 4
    .param p1, "distance"    # F

    .prologue
    .line 751
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetCameraDistance(JF)Z

    move-result v0

    return v0
.end method

.method public setClipBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 364
    if-nez p1, :cond_9

    .line 365
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nSetClipBoundsEmpty(J)Z

    move-result v0

    .line 367
    :goto_8
    return v0

    :cond_9
    iget-wide v0, p0, mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, nSetClipBounds(JIIII)Z

    move-result v0

    goto :goto_8
.end method

.method public setClipToBounds(Z)Z
    .registers 4
    .param p1, "clipToBounds"    # Z

    .prologue
    .line 378
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetClipToBounds(JZ)Z

    move-result v0

    return v0
.end method

.method public setClipToOutline(Z)Z
    .registers 4
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 432
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetClipToOutline(JZ)Z

    move-result v0

    return v0
.end method

.method public setElevation(F)Z
    .registers 4
    .param p1, "lift"    # F

    .prologue
    .line 521
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetElevation(JF)Z

    move-result v0

    return v0
.end method

.method public setHasOverlappingRendering(Z)Z
    .registers 4
    .param p1, "hasOverlappingRendering"    # Z

    .prologue
    .line 505
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetHasOverlappingRendering(JZ)Z

    move-result v0

    return v0
.end method

.method setImageFilter(Landroid/graphics/ImageFilter;)V
    .registers 4
    .param p1, "filter"    # Landroid/graphics/ImageFilter;

    .prologue
    .line 313
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nClearImageFilters(J)V

    .line 314
    invoke-direct {p0, p1}, processImageFilter(Landroid/graphics/ImageFilter;)V

    .line 315
    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)Z
    .registers 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 360
    iget-wide v2, p0, mNativeRenderNode:J

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    :goto_8
    invoke-static {v2, v3, v0, v1}, nSetLayerPaint(JJ)Z

    move-result v0

    return v0

    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public setLayerType(I)Z
    .registers 4
    .param p1, "layerType"    # I

    .prologue
    .line 356
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetLayerType(JI)Z

    move-result v0

    return v0
.end method

.method public setLeft(I)Z
    .registers 4
    .param p1, "left"    # I

    .prologue
    .line 771
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetLeft(JI)Z

    move-result v0

    return v0
.end method

.method public setLeftTopRightBottom(IIII)Z
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 821
    iget-wide v0, p0, mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public setOutline(Landroid/graphics/Outline;)Z
    .registers 10
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 408
    if-nez p1, :cond_9

    .line 409
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nSetOutlineNone(J)Z

    move-result v0

    .line 416
    :goto_8
    return v0

    .line 410
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 411
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1}, nSetOutlineEmpty(J)Z

    move-result v0

    goto :goto_8

    .line 412
    :cond_16
    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_35

    .line 413
    iget-wide v0, p0, mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Outline;->mRadius:F

    iget v7, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static/range {v0 .. v7}, nSetOutlineRoundRect(JIIIIFF)Z

    move-result v0

    goto :goto_8

    .line 415
    :cond_35
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_46

    .line 416
    iget-wide v0, p0, mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-wide v2, v2, Landroid/graphics/Path;->mNativePath:J

    iget v4, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static {v0, v1, v2, v3, v4}, nSetOutlineConvexPath(JJF)Z

    move-result v0

    goto :goto_8

    .line 419
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized outline?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPivotX(F)Z
    .registers 4
    .param p1, "pivotX"    # F

    .prologue
    .line 703
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetPivotX(JF)Z

    move-result v0

    return v0
.end method

.method public setPivotY(F)Z
    .registers 4
    .param p1, "pivotY"    # F

    .prologue
    .line 724
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetPivotY(JF)Z

    move-result v0

    return v0
.end method

.method public setProjectBackwards(Z)Z
    .registers 4
    .param p1, "shouldProject"    # Z

    .prologue
    .line 389
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetProjectBackwards(JZ)Z

    move-result v0

    return v0
.end method

.method public setProjectionReceiver(Z)Z
    .registers 4
    .param p1, "shouldRecieve"    # Z

    .prologue
    .line 398
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetProjectionReceiver(JZ)Z

    move-result v0

    return v0
.end method

.method public setRevealClip(ZFFF)Z
    .registers 11
    .param p1, "shouldClip"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F

    .prologue
    .line 444
    iget-wide v0, p0, mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, nSetRevealClip(JZFFF)Z

    move-result v0

    return v0
.end method

.method public setRight(I)Z
    .registers 4
    .param p1, "right"    # I

    .prologue
    .line 793
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetRight(JI)Z

    move-result v0

    return v0
.end method

.method public setRotation(F)Z
    .registers 4
    .param p1, "rotation"    # F

    .prologue
    .line 598
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetRotation(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationX(F)Z
    .registers 4
    .param p1, "rotationX"    # F

    .prologue
    .line 619
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetRotationX(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationY(F)Z
    .registers 4
    .param p1, "rotationY"    # F

    .prologue
    .line 640
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetRotationY(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleX(F)Z
    .registers 4
    .param p1, "scaleX"    # F

    .prologue
    .line 661
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetScaleX(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleY(F)Z
    .registers 4
    .param p1, "scaleY"    # F

    .prologue
    .line 682
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetScaleY(JF)Z

    move-result v0

    return v0
.end method

.method public setStaticMatrix(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 454
    iget-wide v0, p0, mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, nSetStaticMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public setTop(I)Z
    .registers 4
    .param p1, "top"    # I

    .prologue
    .line 782
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetTop(JI)Z

    move-result v0

    return v0
.end method

.method public setTranslationX(F)Z
    .registers 4
    .param p1, "translationX"    # F

    .prologue
    .line 537
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetTranslationX(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationY(F)Z
    .registers 4
    .param p1, "translationY"    # F

    .prologue
    .line 558
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetTranslationY(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationZ(F)Z
    .registers 4
    .param p1, "translationZ"    # F

    .prologue
    .line 577
    iget-wide v0, p0, mNativeRenderNode:J

    invoke-static {v0, v1, p1}, nSetTranslationZ(JF)Z

    move-result v0

    return v0
.end method

.method public start(II)Landroid/view/DisplayListCanvas;
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 231
    invoke-static {p0}, Landroid/view/DisplayListCanvas;->obtain(Landroid/view/RenderNode;)Landroid/view/DisplayListCanvas;

    move-result-object v0

    .line 233
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    iget-object v1, p0, mOwningView:Landroid/view/View;

    if-eqz v1, :cond_1f

    iget-object v1, p0, mOwningView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_1f

    .line 234
    iget-object v1, p0, mOwningView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->setHighContrastText(Z)V

    .line 242
    :goto_17
    invoke-virtual {v0, p1, p2}, Landroid/view/DisplayListCanvas;->setViewport(II)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 245
    return-object v0

    .line 236
    :cond_1f
    iget-object v1, p0, mOwningView:Landroid/view/View;

    if-nez v1, :cond_2b

    .line 237
    const-string v1, "DisplayListCanvas"

    const-string v2, "DisplayListCanvas is started on unbinded RenderNode (without mOwningView)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 239
    :cond_2b
    const-string v1, "DisplayListCanvas"

    const-string v2, "DisplayListCanvas is started on unattached RenderNode (without mOwningView.mAttachInfo)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method
