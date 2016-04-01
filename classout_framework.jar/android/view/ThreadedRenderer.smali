.class public Landroid/view/ThreadedRenderer;
.super Landroid/view/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$ProcessInitializer;
    }
.end annotation


# static fields
.field private static final DEBUG_DCS:Z

.field private static final DYNAMIC_COLOR_SCALING_IS_ENABLED:Z = true

.field private static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field private static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "ThreadedRenderer"

.field private static final SAFE_DEBUG:Z

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDemoted:Z

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 69
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_1f

    move v0, v1

    :goto_9
    sput-boolean v0, SAFE_DEBUG:Z

    .line 79
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "visual_bars"

    aput-object v2, v0, v1

    sput-object v0, VISUALIZERS:[Ljava/lang/String;

    .line 119
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, DEBUG_DCS:Z

    return-void

    :cond_1f
    move v0, v2

    .line 69
    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;ZZ)V

    .line 127
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z
    .param p3, "demoted"    # Z

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 130
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 112
    iput-boolean v5, p0, mInitialized:Z

    .line 123
    iput-boolean v5, p0, mDemoted:Z

    .line 131
    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v1, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 132
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, mLightY:F

    .line 133
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, mLightZ:F

    .line 134
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, mLightRadius:F

    .line 135
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, mAmbientShadowAlpha:I

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, mSpotShadowAlpha:I

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-static {}, nCreateRootRenderNode()J

    move-result-wide v2

    .line 141
    .local v2, "rootNodePtr":J
    invoke-static {v2, v3}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, mRootNode:Landroid/view/RenderNode;

    .line 142
    iget-object v1, p0, mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 145
    invoke-static {p2, v2, v3, p3}, nCreateProxy(ZJZ)J

    move-result-wide v4

    iput-wide v4, p0, mNativeProxy:J

    .line 146
    iput-boolean p3, p0, mDemoted:Z

    .line 148
    iget-boolean v1, p0, mDemoted:Z

    if-eqz v1, :cond_61

    .line 149
    const-string v1, "ThreadedRenderer"

    const-string v4, "ThreadedRenderer created in DEMOTED mode"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_61
    sget-object v1, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    iget-wide v4, p0, mNativeProxy:J

    invoke-virtual {v1, p1, v4, v5}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    .line 156
    invoke-virtual {p0}, loadSystemProperties()Z

    .line 157
    return-void
.end method

.method static synthetic access$000(JI)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, nSetProcessStatsBuffer(JI)V

    return-void
.end method

.method static synthetic access$100(JLandroid/view/GraphicBuffer;[J)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/GraphicBuffer;
    .param p3, "x2"    # [J

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3}, nSetAtlas(JLandroid/view/GraphicBuffer;[J)V

    return-void
.end method

.method private static destroyResources(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 218
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 219
    check-cast v1, Landroid/view/ViewGroup;

    .line 221
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 222
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 223
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, destroyResources(Landroid/view/View;)V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 226
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method public static dumpProfileData([BLjava/io/FileDescriptor;)V
    .registers 2
    .param p0, "data"    # [B
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 478
    invoke-static {p0, p1}, nDumpProfileData([BLjava/io/FileDescriptor;)V

    .line 479
    return-void
.end method

.method static invokeFunctor(JZ)V
    .registers 3
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .prologue
    .line 401
    invoke-static {p0, p1, p2}, nInvokeFunctor(JZ)V

    .line 402
    return-void
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z
.end method

.method private static native nCreateProxy(ZJZ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDcsInitialize(JLandroid/view/Surface;ID)Z
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDumpProfileData([BLjava/io/FileDescriptor;)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nInitialize(JLandroid/view/Surface;)Z
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
.end method

.method private static native nSetLightCenter(JFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProcessStatsBuffer(JI)V
.end method

.method private static native nSetup(JIIFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(J[JI)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method public static overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 471
    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    .line 472
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name and value must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_d
    invoke-static {p0, p1}, nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method static native setupVulkanLayerPath(Ljava/lang/String;)V
.end method

.method static trimMemory(I)V
    .registers 1
    .param p0, "level"    # I

    .prologue
    .line 467
    invoke-static {p0}, nTrimMemory(I)V

    .line 468
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 167
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 168
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setEnabled(Z)V

    .line 172
    :goto_c
    return-void

    .line 170
    :cond_d
    iget-boolean v0, p0, mInitialized:Z

    invoke-virtual {p0, v0}, setEnabled(Z)V

    goto :goto_c
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    const-wide/16 v6, 0x8

    .line 330
    const-string v2, "Record View#draw()"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 331
    invoke-direct {p0, p1}, updateViewTreeDisplayList(Landroid/view/View;)V

    .line 333
    iget-boolean v2, p0, mRootNodeNeedsUpdate:Z

    if-nez v2, :cond_16

    iget-object v2, p0, mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 334
    :cond_16
    iget-object v2, p0, mRootNode:Landroid/view/RenderNode;

    iget v3, p0, mSurfaceWidth:I

    iget v4, p0, mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    .line 336
    .local v0, "canvas":Landroid/view/DisplayListCanvas;
    :try_start_20
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->save()I

    move-result v1

    .line 337
    .local v1, "saveCount":I
    iget v2, p0, mInsetLeft:I

    int-to-float v2, v2

    iget v3, p0, mInsetTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 338
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V

    .line 340
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 342
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    .line 344
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->restoreToCount(I)V

    .line 346
    const/4 v2, 0x0

    iput-boolean v2, p0, mRootNodeNeedsUpdate:Z
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_4f

    .line 348
    iget-object v2, p0, mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 351
    .end local v0    # "canvas":Landroid/view/DisplayListCanvas;
    .end local v1    # "saveCount":I
    :cond_4b
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 352
    return-void

    .line 348
    .restart local v0    # "canvas":Landroid/view/DisplayListCanvas;
    :catchall_4f
    move-exception v2

    iget-object v3, p0, mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v2
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    .line 321
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 322
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1f

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 324
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    .line 326
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 327
    return-void

    :cond_1f
    move v0, v1

    .line 322
    goto :goto_f
.end method


# virtual methods
.method buildLayer(Landroid/view/RenderNode;)V
    .registers 6
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 412
    iget-wide v0, p0, mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, nBuildLayer(JJ)V

    .line 413
    return-void
.end method

.method copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .registers 7
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 417
    iget-wide v0, p0, mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method createTextureLayer()Landroid/view/HardwareLayer;
    .registers 5

    .prologue
    .line 406
    iget-wide v2, p0, mNativeProxy:J

    invoke-static {v2, v3}, nCreateTextureLayer(J)J

    move-result-wide v0

    .line 407
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/HardwareRenderer;J)Landroid/view/HardwareLayer;

    move-result-object v2

    return-object v2
.end method

.method destroy()V
    .registers 3

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, mInitialized:Z

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateEnabledState(Landroid/view/Surface;)V

    .line 163
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1}, nDestroy(J)V

    .line 164
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-static {p1}, destroyResources(Landroid/view/View;)V

    .line 212
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1}, nDestroyHardwareResources(J)V

    .line 213
    return-void
.end method

.method detachSurfaceTexture(J)V
    .registers 6
    .param p1, "hardwareLayer"    # J

    .prologue
    .line 235
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, nDetachSurfaceTexture(JJ)V

    .line 236
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    const-wide/16 v10, 0x8

    const/4 v8, 0x0

    .line 361
    const/4 v5, 0x1

    iput-boolean v5, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 363
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v5, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 364
    .local v0, "choreographer":Landroid/view/Choreographer;
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v5}, Landroid/view/FrameInfo;->markDrawStart()V

    .line 366
    invoke-direct {p0, p1, p3}, updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 368
    iput-boolean v8, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 372
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v5, :cond_37

    .line 373
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 374
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v1, :cond_2f

    .line 375
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/RenderNode;

    invoke-virtual {p0, v5}, registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 378
    :cond_2f
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 381
    const/4 v5, 0x0

    iput-object v5, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 384
    .end local v1    # "count":I
    .end local v3    # "i":I
    :cond_37
    iget-object v5, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v2, v5, Landroid/view/FrameInfo;->mFrameInfo:[J

    .line 385
    .local v2, "frameInfo":[J
    sget-boolean v5, SAFE_DEBUG:Z

    if-eqz v5, :cond_45

    const-string/jumbo v5, "nSyncAndDrawFrame"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 386
    :cond_45
    iget-wide v6, p0, mNativeProxy:J

    array-length v5, v2

    invoke-static {v6, v7, v2, v5}, nSyncAndDrawFrame(J[JI)I

    move-result v4

    .line 387
    .local v4, "syncResult":I
    sget-boolean v5, SAFE_DEBUG:Z

    if-eqz v5, :cond_53

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_53
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_66

    .line 389
    invoke-virtual {p0, v8}, setEnabled(Z)V

    .line 390
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 393
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 395
    :cond_66
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_6f

    .line 396
    iget-object v5, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 398
    :cond_6f
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 296
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "flags":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p3

    if-ge v1, v2, :cond_33

    .line 299
    aget-object v3, p3, v1

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3a

    :cond_12
    :goto_12
    packed-switch v2, :pswitch_data_44

    .line 298
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 299
    :sswitch_18
    const-string v4, "framestats"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x0

    goto :goto_12

    :sswitch_22
    const-string/jumbo v4, "reset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    goto :goto_12

    .line 301
    :pswitch_2d
    or-int/lit8 v0, v0, 0x1

    .line 302
    goto :goto_15

    .line 304
    :pswitch_30
    or-int/lit8 v0, v0, 0x2

    goto :goto_15

    .line 308
    :cond_33
    iget-wide v2, p0, mNativeProxy:J

    invoke-static {v2, v3, p2, v0}, nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    .line 309
    return-void

    .line 299
    nop

    :sswitch_data_3a
    .sparse-switch
        -0xf0608ae -> :sswitch_18
        0x6761d4f -> :sswitch_22
    .end sparse-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method fence()V
    .registers 3

    .prologue
    .line 438
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1}, nFence(J)V

    .line 439
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
    .line 459
    :try_start_0
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1}, nDeleteProxy(J)V

    .line 460
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mNativeProxy:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 462
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 464
    return-void

    .line 462
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getHeight()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, mHeight:I

    return v0
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .registers 6
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, mInitialized:Z

    .line 177
    invoke-direct {p0, p1}, updateEnabledState(Landroid/view/Surface;)V

    .line 178
    iget-wide v2, p0, mNativeProxy:J

    invoke-static {v2, v3, p1}, nInitialize(JLandroid/view/Surface;)Z

    move-result v0

    .line 179
    .local v0, "status":Z
    return v0
.end method

.method initialize(Landroid/view/Surface;ZID)Z
    .registers 14
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "mIsDcsEnabledApp"    # Z
    .param p3, "mDcsFormat"    # I
    .param p4, "mDssFactor"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitialized:Z

    .line 186
    invoke-direct {p0, p1}, updateEnabledState(Landroid/view/Surface;)V

    .line 188
    if-eqz p2, :cond_3e

    .line 189
    const-string v0, "SRIB_DSS_ThreadedRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize, mIsDcsEnabledApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , with format= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scaleFactor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-wide v0, p0, mNativeProxy:J

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, nDcsInitialize(JLandroid/view/Surface;ID)Z

    move-result v6

    .line 194
    .local v6, "status":Z
    :goto_3d
    return v6

    .line 192
    .end local v6    # "status":Z
    :cond_3e
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1, p1}, nInitialize(JLandroid/view/Surface;)Z

    move-result v6

    .restart local v6    # "status":Z
    goto :goto_3d
.end method

.method invalidate(Landroid/view/Surface;)V
    .registers 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 230
    invoke-virtual {p0, p1}, updateSurface(Landroid/view/Surface;)V

    .line 231
    return-void
.end method

.method invalidateRoot()V
    .registers 2

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, mRootNodeNeedsUpdate:Z

    .line 357
    return-void
.end method

.method loadSystemProperties()Z
    .registers 5

    .prologue
    .line 313
    iget-wide v2, p0, mNativeProxy:J

    invoke-static {v2, v3}, nLoadSystemProperties(J)Z

    move-result v0

    .line 314
    .local v0, "changed":Z
    if-eqz v0, :cond_b

    .line 315
    invoke-virtual {p0}, invalidateRoot()V

    .line 317
    :cond_b
    return v0
.end method

.method public notifyFramePending()V
    .registers 3

    .prologue
    .line 448
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1}, nNotifyFramePending(J)V

    .line 449
    return-void
.end method

.method onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 428
    iget-wide v0, p0, mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, nCancelLayerUpdate(JJ)V

    .line 429
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)Z
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 206
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1, p1}, nPauseSurface(JLandroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .registers 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 423
    iget-wide v0, p0, mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, nPushLayerUpdate(JJ)V

    .line 424
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .registers 6
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 453
    iget-object v0, p0, mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, nRegisterAnimatingRenderNode(JJ)V

    .line 454
    return-void
.end method

.method setLightCenter(Landroid/view/View$AttachInfo;)V
    .registers 8
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    .prologue
    .line 271
    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 272
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v3, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 273
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 274
    .local v1, "lightX":F
    iget v3, p0, mLightY:F

    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 276
    .local v2, "lightY":F
    iget-wide v4, p0, mNativeProxy:J

    iget v3, p0, mLightZ:F

    invoke-static {v4, v5, v1, v2, v3}, nSetLightCenter(JFFF)V

    .line 277
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1, p1}, nSetName(JLjava/lang/String;)V

    .line 434
    return-void
.end method

.method setOpaque(Z)V
    .registers 6
    .param p1, "opaque"    # Z

    .prologue
    .line 281
    iget-wide v2, p0, mNativeProxy:J

    if-eqz p1, :cond_d

    iget-boolean v0, p0, mHasInsets:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v2, v3, v0}, nSetOpaque(JZ)V

    .line 282
    return-void

    .line 281
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surfaceInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 240
    iput p1, p0, mWidth:I

    .line 241
    iput p2, p0, mHeight:I

    .line 243
    if-eqz p4, :cond_57

    iget v0, p4, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_17

    iget v0, p4, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_17

    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_17

    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_57

    .line 245
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasInsets:Z

    .line 246
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iput v0, p0, mInsetLeft:I

    .line 247
    iget v0, p4, Landroid/graphics/Rect;->top:I

    iput v0, p0, mInsetTop:I

    .line 248
    iget v0, p0, mInsetLeft:I

    add-int/2addr v0, p1

    iget v1, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, mSurfaceWidth:I

    .line 249
    iget v0, p0, mInsetTop:I

    add-int/2addr v0, p2

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, mSurfaceHeight:I

    .line 252
    invoke-virtual {p0, v2}, setOpaque(Z)V

    .line 261
    :goto_35
    iget-object v0, p0, mRootNode:Landroid/view/RenderNode;

    iget v1, p0, mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, mInsetTop:I

    neg-int v2, v2

    iget v3, p0, mSurfaceWidth:I

    iget v4, p0, mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 262
    iget-wide v0, p0, mNativeProxy:J

    iget v2, p0, mSurfaceWidth:I

    iget v3, p0, mSurfaceHeight:I

    iget v4, p0, mLightRadius:F

    iget v5, p0, mAmbientShadowAlpha:I

    iget v6, p0, mSpotShadowAlpha:I

    invoke-static/range {v0 .. v6}, nSetup(JIIFII)V

    .line 265
    invoke-virtual {p0, p3}, setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 266
    return-void

    .line 254
    :cond_57
    iput-boolean v2, p0, mHasInsets:Z

    .line 255
    iput v2, p0, mInsetLeft:I

    .line 256
    iput v2, p0, mInsetTop:I

    .line 257
    iput p1, p0, mSurfaceWidth:I

    .line 258
    iput p2, p0, mSurfaceHeight:I

    goto :goto_35
.end method

.method stopDrawing()V
    .registers 3

    .prologue
    .line 443
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1}, nStopDrawing(J)V

    .line 444
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0, p1}, updateEnabledState(Landroid/view/Surface;)V

    .line 201
    iget-wide v0, p0, mNativeProxy:J

    invoke-static {v0, v1, p1}, nUpdateSurface(JLandroid/view/Surface;)V

    .line 202
    return-void
.end method
