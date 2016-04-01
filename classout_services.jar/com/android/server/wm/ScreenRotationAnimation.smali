.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG_STATE:Z = false

.field static final DEBUG_TRANSFORMS:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"

.field static final TWO_PHASE_ANIMATION:Z

.field static final USE_CUSTOM_BLACK_FRAME:Z


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field mForceDefaultOrientation:Z

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field mIsTranslucentScreenshot:Z

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field mLayerStack:I

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZ)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "inTransaction"    # Z
    .param p5, "forceDefaultOrientation"    # Z
    .param p6, "isSecure"    # Z

    .prologue
    .line 223
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZI)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZI)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "inTransaction"    # Z
    .param p5, "forceDefaultOrientation"    # Z
    .param p6, "isSecure"    # Z
    .param p7, "forcedLocalOrientationWindowLayer"    # I

    .prologue
    .line 231
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZIZ)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZIZ)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "inTransaction"    # Z
    .param p5, "forceDefaultOrientation"    # Z
    .param p6, "isSecure"    # Z
    .param p7, "forcedLocalOrientationWindowLayer"    # I
    .param p8, "useInputMethodDisplay"    # Z

    .prologue
    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 77
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 88
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 90
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 92
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 99
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 101
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 103
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 109
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 111
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 113
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 118
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 120
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 122
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 125
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mExitTransformation:Landroid/view/animation/Transformation;

    .line 126
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mEnterTransformation:Landroid/view/animation/Transformation;

    .line 127
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mFrameTransformation:Landroid/view/animation/Transformation;

    .line 135
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 136
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 137
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 139
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mTmpMatrix:Landroid/graphics/Matrix;

    .line 140
    const/16 v2, 0x9

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, mTmpFloats:[F

    .line 238
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 239
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 241
    const/4 v2, -0x1

    move/from16 v0, p7

    if-eq v0, v2, :cond_1e6

    const/4 v2, 0x1

    :goto_e3
    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsTranslucentScreenshot:Z

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, mOriginalDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v16

    .line 247
    .local v16, "display":Landroid/view/Display;
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getRotation()I

    move-result v20

    .line 250
    .local v20, "originalRotation":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v17

    .line 251
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p5, :cond_1e9

    .line 253
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mForceDefaultOrientation:Z

    .line 254
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move/from16 v21, v0

    .line 255
    .local v21, "originalWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move/from16 v19, v0

    .line 261
    .local v19, "originalHeight":I
    :goto_10f
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_119

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_1f7

    .line 263
    :cond_119
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mWidth:I

    .line 264
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mHeight:I

    .line 270
    :goto_125
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mOriginalRotation:I

    .line 271
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mOriginalWidth:I

    .line 272
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mOriginalHeight:I

    .line 275
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mLayerStack:I

    .line 278
    if-nez p4, :cond_144

    .line 281
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 286
    :cond_144
    const/4 v8, 0x4

    .line 287
    .local v8, "flags":I
    if-eqz p6, :cond_149

    .line 288
    or-int/lit16 v8, v8, 0x80

    .line 291
    :cond_149
    :try_start_149
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v2, :cond_205

    .line 292
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v4, "ScreenshotSurface"

    move-object/from16 v0, p0

    iget v5, v0, mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    const/4 v7, -0x1

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 295
    const-string v2, "ScreenRotationAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenRotationAnimation ctor: displayOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_183
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 307
    .local v10, "sur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 311
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsTranslucentScreenshot:Z

    if-eqz v2, :cond_243

    .line 315
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    .line 316
    .local v9, "displayToken":Landroid/os/IBinder;
    if-eqz v9, :cond_1b0

    .line 317
    move-object/from16 v0, p0

    iget v11, v0, mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, mHeight:I

    add-int/lit8 v13, p7, 0x1

    const v14, 0x493e0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 344
    .end local v9    # "displayToken":Landroid/os/IBinder;
    :cond_1b0
    :goto_1b0
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x1e8481

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 349
    if-nez p8, :cond_1d6

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 353
    :cond_1d6
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V
    :try_end_1d9
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_149 .. :try_end_1d9} :catch_22d
    .catchall {:try_start_149 .. :try_end_1d9} :catchall_238

    .line 362
    .end local v10    # "sur":Landroid/view/Surface;
    :goto_1d9
    :try_start_1d9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, setRotationInTransaction(I)V
    :try_end_1e0
    .catchall {:try_start_1d9 .. :try_end_1e0} :catchall_238

    .line 364
    if-nez p4, :cond_1e5

    .line 365
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 370
    :cond_1e5
    return-void

    .line 241
    .end local v8    # "flags":I
    .end local v16    # "display":Landroid/view/Display;
    .end local v17    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v19    # "originalHeight":I
    .end local v20    # "originalRotation":I
    .end local v21    # "originalWidth":I
    :cond_1e6
    const/4 v2, 0x0

    goto/16 :goto_e3

    .line 258
    .restart local v16    # "display":Landroid/view/Display;
    .restart local v17    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20    # "originalRotation":I
    :cond_1e9
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    .line 259
    .restart local v21    # "originalWidth":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v19, v0

    .restart local v19    # "originalHeight":I
    goto/16 :goto_10f

    .line 266
    :cond_1f7
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mWidth:I

    .line 267
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mHeight:I

    goto/16 :goto_125

    .line 298
    .restart local v8    # "flags":I
    :cond_205
    :try_start_205
    new-instance v9, Landroid/view/SurfaceControl;

    const-string v11, "ScreenshotSurface"

    move-object/from16 v0, p0

    iget v12, v0, mWidth:I

    move-object/from16 v0, p0

    iget v13, v0, mHeight:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsTranslucentScreenshot:Z

    if-eqz v2, :cond_23f

    const/4 v14, -0x3

    :goto_218
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsTranslucentScreenshot:Z

    if-eqz v2, :cond_241

    const/high16 v2, 0x20000000

    :goto_220
    or-int v15, v8, v2

    move-object/from16 v10, p3

    invoke-direct/range {v9 .. v15}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_22b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_205 .. :try_end_22b} :catch_22d
    .catchall {:try_start_205 .. :try_end_22b} :catchall_238

    goto/16 :goto_183

    .line 354
    :catch_22d
    move-exception v18

    .line 355
    .local v18, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_22e
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate freeze surface"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_237
    .catchall {:try_start_22e .. :try_end_237} :catchall_238

    goto :goto_1d9

    .line 364
    .end local v18    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_238
    move-exception v2

    if-nez p4, :cond_23e

    .line 365
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_23e
    throw v2

    .line 298
    :cond_23f
    const/4 v14, -0x1

    goto :goto_218

    :cond_241
    const/4 v2, 0x0

    goto :goto_220

    .line 338
    .restart local v10    # "sur":Landroid/view/Surface;
    :cond_243
    :try_start_243
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_25e

    .line 339
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    goto/16 :goto_1b0

    .line 341
    :cond_25e
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, setBlackSurface(Landroid/view/Surface;)V
    :try_end_263
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_243 .. :try_end_263} :catch_22d
    .catchall {:try_start_243 .. :try_end_263} :catchall_238

    goto/16 :goto_1b0
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 425
    packed-switch p0, :pswitch_data_28

    .line 442
    :goto_4
    return-void

    .line 427
    :pswitch_5
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_4

    .line 430
    :pswitch_9
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 431
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 434
    :pswitch_13
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 435
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 438
    :pswitch_1e
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 439
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 425
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_13
        :pswitch_1e
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 390
    sub-int v0, p1, p0

    .line 391
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 392
    :cond_6
    return v0
.end method

.method private hasAnimations()Z
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    iget-object v0, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setBlackSurface(Landroid/view/Surface;)V
    .registers 6
    .param p1, "sur"    # Landroid/view/Surface;

    .prologue
    .line 374
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 375
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, mWidth:I

    iget v3, p0, mHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_13
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_13} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_13} :catch_19

    .line 383
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_13
    return-void

    .line 378
    :catch_14
    move-exception v1

    .line 379
    .local v1, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-virtual {v1}, Landroid/view/Surface$OutOfResourcesException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_13

    .line 380
    .end local v1    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_19
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_13
.end method

.method private setRotationInTransaction(I)V
    .registers 6
    .param p1, "rotation"    # I

    .prologue
    .line 446
    iput p1, p0, mCurRotation:I

    .line 451
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 452
    .local v0, "delta":I
    iget v1, p0, mWidth:I

    iget v2, p0, mHeight:I

    iget-object v3, p0, mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 455
    iget-object v1, p0, mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    .line 456
    return-void
.end method

.method private setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V
    .registers 11
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "alpha"    # F

    .prologue
    .line 396
    iget-object v2, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4d

    .line 397
    iget-object v2, p0, mTmpFloats:[F

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 398
    iget-object v2, p0, mTmpFloats:[F

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 399
    .local v0, "x":F
    iget-object v2, p0, mTmpFloats:[F

    const/4 v3, 0x5

    aget v1, v2, v3

    .line 400
    .local v1, "y":F
    iget-boolean v2, p0, mForceDefaultOrientation:Z

    if-eqz v2, :cond_2a

    .line 401
    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 402
    iget-object v2, p0, mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 403
    iget-object v2, p0, mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 405
    :cond_2a
    iget-object v2, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 406
    iget-object v2, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, mTmpFloats:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, mTmpFloats:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, mTmpFloats:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v6, p0, mTmpFloats:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 409
    iget-object v2, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 421
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_4d
    return-void
.end method

.method private skipScreenRotationAnimation()Z
    .registers 7

    .prologue
    .line 1103
    iget-object v5, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 1104
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_34

    .line 1105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1106
    .local v0, "taskNdx":I
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iget-object v4, v5, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1107
    .local v4, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    if-lez v5, :cond_34

    .line 1108
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 1109
    .local v3, "tokenNdx":I
    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1110
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_34

    iget-boolean v5, v2, Lcom/android/server/wm/AppWindowToken;->skipRotationAnimation:Z

    if-eqz v5, :cond_34

    .line 1111
    const/4 v5, 0x1

    .line 1115
    .end local v0    # "taskNdx":I
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "tokenNdx":I
    .end local v4    # "tokens":Lcom/android/server/wm/AppTokenList;
    :goto_33
    return v5

    :cond_34
    const/4 v5, 0x0

    goto :goto_33
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z
    .registers 26
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "dismissing"    # Z
    .param p8, "exitAnim"    # I
    .param p9, "enterAnim"    # I

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_8

    .line 479
    const/4 v2, 0x0

    .line 742
    :goto_7
    return v2

    .line 481
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, mStarted:Z

    if-eqz v2, :cond_10

    .line 482
    const/4 v2, 0x1

    goto :goto_7

    .line 485
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mStarted:Z

    .line 487
    const/4 v13, 0x0

    .line 490
    .local v13, "firstStart":Z
    move-object/from16 v0, p0

    iget v2, v0, mCurRotation:I

    move-object/from16 v0, p0

    iget v3, v0, mOriginalRotation:I

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v11

    .line 519
    .local v11, "delta":I
    if-eqz p8, :cond_7d

    if-eqz p9, :cond_7d

    .line 520
    const/4 v10, 0x1

    .line 521
    .local v10, "customAnim":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move/from16 v0, p8

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move/from16 v0, p9

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 606
    :cond_43
    :goto_43
    move-object/from16 v0, p0

    iget-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_130

    .line 607
    :cond_4f
    const-string v2, "ScreenRotationAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurRotation : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, mCurRotation:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "mOriginalRotation : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, mOriginalRotation:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v2, 0x0

    goto :goto_7

    .line 524
    .end local v10    # "customAnim":Z
    :cond_7d
    const/4 v10, 0x0

    .line 525
    .restart local v10    # "customAnim":Z
    packed-switch v11, :pswitch_data_280

    .line 568
    :goto_81
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsTranslucentScreenshot:Z

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_43

    .line 569
    move-object/from16 v0, p0

    iget-object v14, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    check-cast v14, Landroid/view/animation/AnimationSet;

    .line 570
    .local v14, "rotateEnterAnimationSet":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 571
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v14}, Landroid/view/animation/AnimationSet;->getDuration()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 572
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 573
    invoke-virtual {v14, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_43

    .line 527
    .end local v9    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "rotateEnterAnimationSet":Landroid/view/animation/AnimationSet;
    :pswitch_b2
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a0077

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a0076

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_81

    .line 537
    :pswitch_d1
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a0084

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a0083

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_81

    .line 547
    :pswitch_f0
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a007a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a0079

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_81

    .line 557
    :pswitch_110
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a0080

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const v3, 0x10a007f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_81

    .line 611
    :cond_130
    move-object/from16 v0, p0

    iget-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 617
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mAnimRunning:Z

    .line 618
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mFinishAnimReady:Z

    .line 619
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, mFinishAnimStartTime:J

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, mRotateExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v7

    .line 678
    .local v7, "layerStack":I
    if-nez v10, :cond_1e2

    move-object/from16 v0, p0

    iget-object v2, v0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_1e2

    .line 682
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 690
    :try_start_1a1
    move-object/from16 v0, p0

    iget v2, v0, mOriginalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, mOriginalHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v11, v2, v3, v6}, createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 694
    move-object/from16 v0, p0

    iget-boolean v2, v0, mForceDefaultOrientation:Z

    if-eqz v2, :cond_224

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 699
    .local v4, "outer":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 705
    .local v5, "inner":Landroid/graphics/Rect;
    :goto_1be
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-boolean v3, v0, mIsTranslucentScreenshot:Z

    if-eqz v3, :cond_254

    const/4 v6, 0x0

    :goto_1c7
    move-object/from16 v0, p0

    iget-boolean v8, v0, mForceDefaultOrientation:Z

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_1df
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1a1 .. :try_end_1df} :catch_259
    .catchall {:try_start_1a1 .. :try_end_1df} :catchall_266

    .line 712
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 719
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_1e2
    :goto_1e2
    if-eqz v10, :cond_221

    move-object/from16 v0, p0

    iget-object v2, v0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_221

    .line 723
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 726
    :try_start_1ed
    new-instance v4, Landroid/graphics/Rect;

    move/from16 v0, p5

    neg-int v2, v0

    mul-int/lit8 v2, v2, 0x1

    move/from16 v0, p6

    neg-int v3, v0

    mul-int/lit8 v3, v3, 0x1

    mul-int/lit8 v6, p5, 0x2

    mul-int/lit8 v8, p6, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 729
    .restart local v5    # "inner":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-boolean v3, v0, mIsTranslucentScreenshot:Z

    if-eqz v3, :cond_26b

    const/4 v6, 0x0

    :goto_214
    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_21e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1ed .. :try_end_21e} :catch_26f
    .catchall {:try_start_1ed .. :try_end_21e} :catchall_27b

    .line 735
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 742
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_221
    :goto_221
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 701
    :cond_224
    :try_start_224
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, mOriginalWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, mOriginalHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, mOriginalWidth:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v8, v0, mOriginalHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 703
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, mOriginalWidth:I

    move-object/from16 v0, p0

    iget v8, v0, mOriginalHeight:I

    invoke-direct {v5, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_252
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_224 .. :try_end_252} :catch_259
    .catchall {:try_start_224 .. :try_end_252} :catchall_266

    .restart local v5    # "inner":Landroid/graphics/Rect;
    goto/16 :goto_1be

    .line 705
    :cond_254
    const v6, 0x1e8482

    goto/16 :goto_1c7

    .line 709
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :catch_259
    move-exception v12

    .line 710
    .local v12, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_25a
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_261
    .catchall {:try_start_25a .. :try_end_261} :catchall_266

    .line 712
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_1e2

    .end local v12    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_266
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    .line 729
    .restart local v4    # "outer":Landroid/graphics/Rect;
    .restart local v5    # "inner":Landroid/graphics/Rect;
    :cond_26b
    const v6, 0x1e8480

    goto :goto_214

    .line 732
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :catch_26f
    move-exception v12

    .line 733
    .restart local v12    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_270
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_277
    .catchall {:try_start_270 .. :try_end_277} :catchall_27b

    .line 735
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_221

    .end local v12    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_27b
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    .line 525
    :pswitch_data_280
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_d1
        :pswitch_f0
        :pswitch_110
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .registers 10
    .param p1, "now"    # J

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 877
    iget-wide v4, p0, mHalfwayPoint:J

    cmp-long v3, p1, v4

    if-lez v3, :cond_11

    .line 878
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, mHalfwayPoint:J

    .line 880
    :cond_11
    iget-boolean v3, p0, mFinishAnimReady:Z

    if-eqz v3, :cond_1d

    iget-wide v4, p0, mFinishAnimStartTime:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_1d

    .line 882
    iput-wide p1, p0, mFinishAnimStartTime:J

    .line 906
    :cond_1d
    iget-boolean v3, p0, mFinishAnimReady:Z

    if-eqz v3, :cond_25

    iget-wide v4, p0, mFinishAnimStartTime:J

    sub-long v0, p1, v4

    .line 930
    .local v0, "finishNow":J
    :cond_25
    iput-boolean v2, p0, mMoreRotateExit:Z

    .line 931
    iget-object v3, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_35

    .line 932
    iget-object v3, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, mMoreRotateExit:Z

    .line 936
    :cond_35
    iput-boolean v2, p0, mMoreRotateEnter:Z

    .line 937
    iget-object v3, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_45

    .line 938
    iget-object v3, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, mMoreRotateEnter:Z

    .line 950
    :cond_45
    iget-boolean v3, p0, mMoreRotateExit:Z

    if-nez v3, :cond_59

    .line 965
    iget-object v3, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_59

    .line 967
    iget-object v3, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 968
    iput-object v6, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 969
    iget-object v3, p0, mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 973
    :cond_59
    iget-boolean v3, p0, mMoreRotateEnter:Z

    if-nez v3, :cond_6d

    .line 988
    iget-object v3, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_6d

    .line 990
    iget-object v3, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 991
    iput-object v6, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 992
    iget-object v3, p0, mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 1017
    :cond_6d
    iget-object v3, p0, mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1018
    iget-object v3, p0, mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1041
    iget-boolean v3, p0, mMoreRotateEnter:Z

    if-nez v3, :cond_87

    iget-boolean v3, p0, mMoreRotateExit:Z

    if-nez v3, :cond_87

    iget-boolean v3, p0, mFinishAnimReady:Z

    if-nez v3, :cond_88

    :cond_87
    const/4 v2, 0x1

    .line 1048
    .local v2, "more":Z
    :cond_88
    iget-object v3, p0, mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1052
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFIIII)Z
    .registers 19
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .prologue
    .line 751
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 753
    const/4 v0, 0x0

    .line 791
    :goto_5
    return v0

    .line 755
    :cond_6
    iget-boolean v0, p0, mStarted:Z

    if-nez v0, :cond_3f

    .line 771
    invoke-direct {p0}, skipScreenRotationAnimation()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 772
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_29

    .line 773
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 777
    :cond_29
    const/4 v0, 0x0

    goto :goto_5

    .line 781
    :cond_2b
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 783
    const/4 v0, 0x0

    goto :goto_5

    .line 786
    :cond_3f
    iget-boolean v0, p0, mStarted:Z

    if-nez v0, :cond_45

    .line 787
    const/4 v0, 0x0

    goto :goto_5

    .line 790
    :cond_45
    const/4 v0, 0x1

    iput-boolean v0, p0, mFinishAnimReady:Z

    .line 791
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isAnimating()Z
    .registers 2

    .prologue
    .line 859
    invoke-direct {p0}, hasAnimations()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isRotating()Z
    .registers 3

    .prologue
    .line 863
    iget v0, p0, mCurRotation:I

    iget v1, p0, mOriginalRotation:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public kill()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 796
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 800
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 801
    iput-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 804
    :cond_c
    iget-object v0, p0, mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_17

    .line 805
    iget-object v0, p0, mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 806
    iput-object v1, p0, mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 808
    :cond_17
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_22

    .line 809
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 810
    iput-object v1, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 812
    :cond_22
    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2d

    .line 813
    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 814
    iput-object v1, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 848
    :cond_2d
    iget-object v0, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_38

    .line 849
    iget-object v0, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 850
    iput-object v1, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 852
    :cond_38
    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_43

    .line 853
    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 854
    iput-object v1, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 856
    :cond_43
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 153
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 154
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 155
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 162
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4c

    .line 164
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 166
    :cond_4c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_76

    .line 168
    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 170
    :cond_76
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 171
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 173
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 174
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 175
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 176
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 177
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 178
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 179
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 181
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStartFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 183
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 185
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 186
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 187
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 191
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRotateEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 193
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRotateFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 195
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 202
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 204
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 207
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 208
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 211
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 212
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 213
    iget-boolean v0, p0, mForceDefaultOrientation:Z

    if-eqz v0, :cond_263

    .line 214
    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    :cond_263
    return-void
.end method

.method public setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z
    .registers 9
    .param p1, "rotation"    # I
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "maxAnimationDuration"    # J
    .param p5, "animationScale"    # F
    .param p6, "finalWidth"    # I
    .param p7, "finalHeight"    # I

    .prologue
    .line 461
    invoke-direct {p0, p1}, setRotationInTransaction(I)V

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public stepAnimationLocked(J)Z
    .registers 8
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x0

    .line 1120
    invoke-direct {p0}, hasAnimations()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1122
    iput-boolean v0, p0, mFinishAnimReady:Z

    .line 1165
    :goto_9
    return v0

    .line 1126
    :cond_a
    iget-boolean v0, p0, mAnimRunning:Z

    if-nez v0, :cond_33

    .line 1153
    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_17

    .line 1154
    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1156
    :cond_17
    iget-object v0, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_20

    .line 1157
    iget-object v0, p0, mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1159
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, mAnimRunning:Z

    .line 1160
    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_33

    .line 1161
    iget-object v0, p0, mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, mHalfwayPoint:J

    .line 1165
    :cond_33
    invoke-direct {p0, p1, p2}, stepAnimation(J)Z

    move-result v0

    goto :goto_9
.end method

.method updateSurfacesInTransaction()V
    .registers 4

    .prologue
    .line 1056
    iget-boolean v0, p0, mStarted:Z

    if-nez v0, :cond_5

    .line 1099
    :goto_4
    return-void

    .line 1060
    :cond_5
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1a

    .line 1061
    iget-boolean v0, p0, mMoreStartExit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, mMoreFinishExit:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, mMoreRotateExit:Z

    if-nez v0, :cond_1a

    .line 1063
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 1067
    :cond_1a
    iget-object v0, p0, mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2f

    .line 1068
    iget-boolean v0, p0, mMoreStartFrame:Z

    if-nez v0, :cond_65

    iget-boolean v0, p0, mMoreFinishFrame:Z

    if-nez v0, :cond_65

    iget-boolean v0, p0, mMoreRotateFrame:Z

    if-nez v0, :cond_65

    .line 1070
    iget-object v0, p0, mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1076
    :cond_2f
    :goto_2f
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_44

    .line 1077
    iget-boolean v0, p0, mMoreStartExit:Z

    if-nez v0, :cond_71

    iget-boolean v0, p0, mMoreFinishExit:Z

    if-nez v0, :cond_71

    iget-boolean v0, p0, mMoreRotateExit:Z

    if-nez v0, :cond_71

    .line 1079
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1089
    :cond_44
    :goto_44
    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_59

    .line 1090
    iget-boolean v0, p0, mMoreStartEnter:Z

    if-nez v0, :cond_95

    iget-boolean v0, p0, mMoreFinishEnter:Z

    if-nez v0, :cond_95

    iget-boolean v0, p0, mMoreRotateEnter:Z

    if-nez v0, :cond_95

    .line 1092
    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1098
    :cond_59
    :goto_59
    iget-object v0, p0, mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1}, setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    goto :goto_4

    .line 1072
    :cond_65
    iget-object v0, p0, mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_2f

    .line 1081
    :cond_71
    iget-object v0, p0, mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1082
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1083
    iget-boolean v0, p0, mForceDefaultOrientation:Z

    if-eqz v0, :cond_44

    .line 1084
    iget-object v0, p0, mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setAlpha(F)V

    goto :goto_44

    .line 1094
    :cond_95
    iget-object v0, p0, mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_59
.end method
