.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mHadSurface:Z

.field private mLayer:Landroid/view/HardwareLayer;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mLock:[Ljava/lang/Object;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixChanged:Z

.field private mNativeWindow:J

.field private final mNativeWindowLock:[Ljava/lang/Object;

.field private mOpaque:Z

.field private mSaveCount:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mUpdateLayer:Z

.field private final mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mUpdateSurface:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, mOpaque:Z

    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mLock:[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mNativeWindowLock:[Ljava/lang/Object;

    .line 768
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 135
    invoke-direct {p0}, init()V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, mOpaque:Z

    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mLock:[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mNativeWindowLock:[Ljava/lang/Object;

    .line 768
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 146
    invoke-direct {p0}, init()V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, mOpaque:Z

    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mLock:[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mNativeWindowLock:[Ljava/lang/Object;

    .line 768
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 160
    invoke-direct {p0}, init()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, mOpaque:Z

    .line 114
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    .line 117
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mLock:[Ljava/lang/Object;

    .line 124
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, mNativeWindowLock:[Ljava/lang/Object;

    .line 768
    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 178
    invoke-direct {p0}, init()V

    .line 179
    return-void
.end method

.method static synthetic access$000(Landroid/view/TextureView;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/TextureView;

    .prologue
    .line 104
    invoke-direct {p0}, updateLayer()V

    return-void
.end method

.method private applyTransformMatrix()V
    .registers 3

    .prologue
    .line 492
    iget-boolean v0, p0, mMatrixChanged:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_12

    .line 493
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setTransform(Landroid/graphics/Matrix;)V

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, mMatrixChanged:Z

    .line 496
    :cond_12
    return-void
.end method

.method private applyUpdate()V
    .registers 5

    .prologue
    .line 427
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_5

    .line 445
    :cond_4
    :goto_4
    return-void

    .line 431
    :cond_5
    iget-object v1, p0, mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_8
    iget-boolean v0, p0, mUpdateLayer:Z

    if-eqz v0, :cond_30

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, mUpdateLayer:Z

    .line 437
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_32

    .line 439
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    iget-boolean v3, p0, mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->prepare(IIZ)Z

    .line 440
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->updateSurfaceTexture()V

    .line 442
    iget-object v0, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto :goto_4

    .line 435
    :cond_30
    :try_start_30
    monitor-exit v1

    goto :goto_4

    .line 437
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_32

    throw v0
.end method

.method private destroySurface()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 232
    iget-object v1, p0, mLayer:Landroid/view/HardwareLayer;

    if-eqz v1, :cond_33

    .line 233
    iget-object v1, p0, mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->detachSurfaceTexture()V

    .line 235
    const/4 v0, 0x1

    .line 236
    .local v0, "shouldRelease":Z
    iget-object v1, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_18

    .line 237
    iget-object v1, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    .line 240
    :cond_18
    iget-object v2, p0, mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 241
    :try_start_1b
    invoke-direct {p0}, nDestroyNativeWindow()V

    .line 242
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_34

    .line 244
    iget-object v1, p0, mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v1}, Landroid/view/HardwareLayer;->destroy()V

    .line 245
    if-eqz v0, :cond_2b

    iget-object v1, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 246
    :cond_2b
    iput-object v4, p0, mSurface:Landroid/graphics/SurfaceTexture;

    .line 247
    iput-object v4, p0, mLayer:Landroid/view/HardwareLayer;

    .line 251
    iput-boolean v3, p0, mMatrixChanged:Z

    .line 252
    iput-boolean v3, p0, mHadSurface:Z

    .line 254
    .end local v0    # "shouldRelease":Z
    :cond_33
    return-void

    .line 242
    .restart local v0    # "shouldRelease":Z
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private init()V
    .registers 2

    .prologue
    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mLayerPaint:Landroid/graphics/Paint;

    .line 183
    return-void
.end method

.method private native nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native nDestroyNativeWindow()V
.end method

.method private static native nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private updateLayer()V
    .registers 3

    .prologue
    .line 414
    iget-object v1, p0, mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 415
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mUpdateLayer:Z

    .line 416
    monitor-exit v1

    .line 417
    return-void

    .line 416
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateLayerAndInvalidate()V
    .registers 3

    .prologue
    .line 420
    iget-object v1, p0, mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 421
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mUpdateLayer:Z

    .line 422
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 423
    invoke-virtual {p0}, invalidate()V

    .line 424
    return-void

    .line 422
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public buildLayer()V
    .registers 1

    .prologue
    .line 295
    return-void
.end method

.method protected destroyHardwareResources()V
    .registers 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 340
    invoke-direct {p0}, destroySurface()V

    .line 341
    invoke-virtual {p0}, invalidateParentCaches()V

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 343
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 306
    iget v0, p0, mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mPrivateFlags:I

    .line 308
    invoke-direct {p0}, applyUpdate()V

    .line 309
    invoke-direct {p0}, applyTransformMatrix()V

    .line 310
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 519
    invoke-virtual {p0}, getWidth()I

    move-result v0

    invoke-virtual {p0}, getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 546
    invoke-virtual {p0}, isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p1, :cond_1d

    if-lez p2, :cond_1d

    .line 547
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 550
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 577
    if-eqz p1, :cond_22

    invoke-virtual {p0}, isAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 578
    invoke-direct {p0}, applyUpdate()V

    .line 579
    invoke-direct {p0}, applyTransformMatrix()V

    .line 585
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_19

    iget-boolean v0, p0, mUpdateSurface:Z

    if-eqz v0, :cond_19

    .line 586
    invoke-virtual {p0}, getHardwareLayer()Landroid/view/HardwareLayer;

    .line 589
    :cond_19
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_22

    .line 590
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    .line 593
    :cond_22
    return-object p1
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 348
    iget v0, p0, mPrivateFlags:I

    const v1, 0x8020

    or-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 349
    iget v0, p0, mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    iput v0, p0, mPrivateFlags:I

    .line 351
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_78

    .line 352
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1f

    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-nez v0, :cond_21

    .line 353
    :cond_1f
    const/4 v0, 0x0

    .line 391
    :goto_20
    return-object v0

    .line 356
    :cond_21
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->createTextureLayer()Landroid/view/HardwareLayer;

    move-result-object v0

    iput-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    .line 357
    iget-boolean v0, p0, mUpdateSurface:Z

    if-nez v0, :cond_3d

    .line 359
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v4}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    .line 360
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 362
    :cond_3d
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 363
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 365
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 367
    iget-object v0, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_71

    iget-boolean v0, p0, mUpdateSurface:Z

    if-nez v0, :cond_71

    .line 368
    iget-object v0, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, getWidth()I

    move-result v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 370
    :cond_71
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 373
    :cond_78
    iget-boolean v0, p0, mUpdateSurface:Z

    if-eqz v0, :cond_98

    .line 377
    iput-boolean v4, p0, mUpdateSurface:Z

    .line 381
    invoke-direct {p0}, updateLayer()V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, mMatrixChanged:Z

    .line 384
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 385
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 388
    :cond_98
    invoke-direct {p0}, applyUpdate()V

    .line 389
    invoke-direct {p0}, applyTransformMatrix()V

    .line 391
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    goto :goto_20
.end method

.method public getLayerType()I
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x2

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .prologue
    .line 698
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 482
    if-nez p1, :cond_7

    .line 483
    new-instance p1, Landroid/graphics/Matrix;

    .end local p1    # "transform":Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 486
    .restart local p1    # "transform":Landroid/graphics/Matrix;
    :cond_7
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 488
    return-object p1
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, mOpaque:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 7
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 652
    invoke-virtual {p0}, isAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 665
    :goto_7
    return-object v0

    .line 654
    :cond_8
    iget-object v1, p0, mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_13

    .line 655
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, mCanvas:Landroid/graphics/Canvas;

    .line 658
    :cond_13
    iget-object v1, p0, mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 659
    :try_start_16
    iget-wide v2, p0, mNativeWindow:J

    iget-object v4, p0, mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v4, p1}, nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 660
    monitor-exit v1

    goto :goto_7

    .line 662
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 663
    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, mSaveCount:I

    .line 665
    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    goto :goto_7
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 211
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 213
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_10

    .line 214
    const-string v0, "TextureView"

    const-string v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_10
    iget-boolean v0, p0, mHadSurface:Z

    if-eqz v0, :cond_1b

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, invalidate(Z)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, mHadSurface:Z

    .line 222
    :cond_1b
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .registers 1

    .prologue
    .line 227
    invoke-direct {p0}, destroySurface()V

    .line 228
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 229
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 320
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 325
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2a

    .line 326
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 327
    invoke-direct {p0}, updateLayer()V

    .line 328
    iget-object v0, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2a

    .line 329
    iget-object v0, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, getWidth()I

    move-result v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 332
    :cond_2a
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 396
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 398
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1b

    .line 402
    if-nez p2, :cond_1c

    .line 403
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_18

    .line 404
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 406
    :cond_18
    invoke-direct {p0}, updateLayerAndInvalidate()V

    .line 411
    :cond_1b
    :goto_1b
    return-void

    .line 408
    :cond_1c
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_1b
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, setLayerType(ILandroid/graphics/Paint;)V

    .line 280
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 4
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 271
    iget-object v0, p0, mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v0, :cond_10

    .line 272
    if-nez p2, :cond_b

    new-instance p2, Landroid/graphics/Paint;

    .end local p2    # "paint":Landroid/graphics/Paint;
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_b
    iput-object p2, p0, mLayerPaint:Landroid/graphics/Paint;

    .line 273
    invoke-virtual {p0}, invalidate()V

    .line 275
    :cond_10
    return-void
.end method

.method public setOpaque(Z)V
    .registers 3
    .param p1, "opaque"    # Z

    .prologue
    .line 201
    iget-boolean v0, p0, mOpaque:Z

    if-eq p1, v0, :cond_d

    .line 202
    iput-boolean p1, p0, mOpaque:Z

    .line 203
    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_d

    .line 204
    invoke-direct {p0}, updateLayerAndInvalidate()V

    .line 207
    :cond_d
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 717
    if-nez p1, :cond_b

    .line 718
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_b
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_17

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 725
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_25
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2e

    .line 729
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 731
    :cond_2e
    iput-object p1, p0, mSurface:Landroid/graphics/SurfaceTexture;

    .line 739
    iget v0, p0, mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_45

    iget-object v0, p0, mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_45

    .line 740
    iget-object v0, p0, mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 742
    :cond_45
    const/4 v0, 0x1

    iput-boolean v0, p0, mUpdateSurface:Z

    .line 743
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 744
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 765
    iput-object p1, p0, mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 766
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .prologue
    .line 465
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, mMatrixChanged:Z

    .line 467
    invoke-virtual {p0}, invalidateParentIfNeeded()V

    .line 468
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 680
    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_1b

    .line 681
    iget v0, p0, mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 682
    const/4 v0, 0x0

    iput v0, p0, mSaveCount:I

    .line 684
    iget-object v1, p0, mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 685
    :try_start_13
    iget-wide v2, p0, mNativeWindow:J

    iget-object v0, p0, mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0}, nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V

    .line 686
    monitor-exit v1

    .line 688
    :cond_1b
    return-void

    .line 686
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v0
.end method
