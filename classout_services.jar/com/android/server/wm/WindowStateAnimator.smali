.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    }
.end annotation


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

.field static final REDUCE_SCREEN_ENABLED:Z = true

.field private static final SYSTEM_UI_FLAGS_LAYOUT_STABLE_FULLSCREEN:I = 0x500

.field static final TAG:Ljava/lang/String; = "WindowStateAnimator"

.field private static final bDSSEnabled:Z = true


# instance fields
.field mAlpha:F

.field mAnimDh:I

.field mAnimDw:I

.field mAnimLayer:I

.field mAnimateMove:Z

.field mAnimating:Z

.field mAnimatingMove:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field mAnimationSkipRequested:Z

.field mAnimationStartTime:J

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAttrType:I

.field mClipRect:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mHasClipRect:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field mHiddenBeforeRotationAnimation:Z

.field final mIsWallpaper:Z

.field mKeyguardGoingAwayAnimation:Z

.field mLastAlpha:F

.field mLastAnimationTime:J

.field mLastClipRect:Landroid/graphics/Rect;

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLayerStack:I

.field mLocalAnimating:Z

.field private mMovedTransparentRegion:Z

.field mPendingDestroySurface:Landroid/view/SurfaceControl;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field private mSecure:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field private mShownFrameChangedInAnimate:Z

.field mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceH:F

.field mSurfaceInsetRect:Landroid/graphics/Rect;

.field mSurfaceLayer:I

.field mSurfaceLayerStack:I

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:F

.field mSurfaceX:F

.field mSurfaceY:F

.field private mTempShownFrame:Landroid/graphics/RectF;

.field mTmpClipRect:Landroid/graphics/Rect;

.field final mTransformation:Landroid/view/animation/Transformation;

.field private mTransparentRegion:Landroid/graphics/Region;

.field private mTransparentRegionOffset:Landroid/graphics/Point;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v3, p0, mTransformation:Landroid/view/animation/Transformation;

    .line 151
    iput v5, p0, mShownAlpha:F

    .line 152
    iput v5, p0, mAlpha:F

    .line 153
    iput v5, p0, mLastAlpha:F

    .line 156
    iput-boolean v6, p0, mSecure:Z

    .line 160
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mClipRect:Landroid/graphics/Rect;

    .line 161
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mTmpClipRect:Landroid/graphics/Rect;

    .line 162
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mLastClipRect:Landroid/graphics/Rect;

    .line 165
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    .line 175
    iput-boolean v6, p0, mAnimateMove:Z

    .line 178
    iput-boolean v6, p0, mAnimatingMove:Z

    .line 180
    iput v7, p0, mDsDx:F

    iput v5, p0, mDtDx:F

    iput v5, p0, mDsDy:F

    iput v7, p0, mDtDy:F

    .line 181
    iput v7, p0, mLastDsDx:F

    iput v5, p0, mLastDtDx:F

    iput v5, p0, mLastDsDy:F

    iput v7, p0, mLastDtDy:F

    .line 250
    iput-boolean v6, p0, mHiddenBeforeRotationAnimation:Z

    .line 254
    iput-object v4, p0, mTransparentRegion:Landroid/graphics/Region;

    .line 255
    iput-boolean v6, p0, mMovedTransparentRegion:Z

    .line 256
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, mTransparentRegionOffset:Landroid/graphics/Point;

    .line 260
    iput-boolean v6, p0, mAnimationSkipRequested:Z

    .line 261
    iput-boolean v6, p0, mShownFrameChangedInAnimate:Z

    .line 262
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, mTempShownFrame:Landroid/graphics/RectF;

    .line 269
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 271
    .local v2, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 272
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 273
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v3, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    .line 274
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v3, p0, mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 276
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_9f

    .line 277
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 278
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, mAnimDw:I

    .line 279
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, mAnimDh:I

    .line 285
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_81
    iput-object p1, p0, mWin:Lcom/android/server/wm/WindowState;

    .line 286
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_a7

    move-object v3, v4

    :goto_88
    iput-object v3, p0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 288
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_ac

    :goto_8e
    iput-object v4, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 289
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v3, p0, mSession:Lcom/android/server/wm/Session;

    .line 290
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v3, p0, mAttrType:I

    .line 291
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v3, p0, mIsWallpaper:Z

    .line 292
    return-void

    .line 281
    :cond_9f
    const-string v3, "WindowStateAnimator"

    const-string v5, "WindowStateAnimator ctor: Display has been removed"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 286
    :cond_a7
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_88

    .line 288
    :cond_ac
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_8e
.end method

.method private adjustSurfaceInsetForReduceScreen()V
    .registers 4

    .prologue
    .line 3096
    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_18

    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_18

    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_18

    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_54

    .line 3098
    :cond_18
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-nez v1, :cond_2c

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mReduceScreenStarted:Z

    if-eqz v1, :cond_54

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v1

    if-nez v1, :cond_54

    .line 3099
    :cond_2c
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v1, Lcom/android/server/wm/WindowManagerService;->mReduceScreenScale:F

    .line 3100
    .local v0, "scale":F
    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3101
    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 3102
    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 3103
    iget-object v1, p0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 3107
    .end local v0    # "scale":F
    :cond_54
    return-void
.end method

.method private applyDecorRect(Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "decorRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    .line 1809
    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    .line 1810
    .local v4, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1811
    .local v5, "width":I
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1814
    .local v0, "height":I
    iget v6, v4, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int v1, v6, v7

    .line 1815
    .local v1, "left":I
    iget v6, v4, Lcom/android/server/wm/WindowState;->mYOffset:I

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int v3, v6, v7

    .line 1818
    .local v3, "top":I
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1821
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v1

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iget v9, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v1

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 1830
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v6, :cond_79

    iget v6, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_79

    .line 1831
    iget v2, v4, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1832
    .local v2, "scale":F
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 1833
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 1834
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 1835
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1837
    .end local v2    # "scale":F
    :cond_79
    return-void
.end method

.method private applyFadeoutDuringKeyguardExitAnimation()V
    .registers 15

    .prologue
    .line 2840
    iget-object v10, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v8

    .line 2841
    .local v8, "startTime":J
    iget-object v10, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v10}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    .line 2842
    .local v0, "duration":J
    iget-wide v10, p0, mLastAnimationTime:J

    sub-long v2, v10, v8

    .line 2843
    .local v2, "elapsed":J
    sub-long v4, v0, v2

    .line 2844
    .local v4, "fadeDuration":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_19

    .line 2859
    :goto_18
    return-void

    .line 2848
    :cond_19
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2849
    .local v7, "newAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2850
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    .line 2851
    iget-object v10, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2852
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x10a0011

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 2854
    .local v6, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2855
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2856
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2857
    iget-object v10, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, p0, mAnimDw:I

    iget v13, p0, mAnimDh:I

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 2858
    iput-object v7, p0, mAnimation:Landroid/view/animation/Animation;

    goto :goto_18
.end method

.method private stepAnimation(J)Z
    .registers 6
    .param p1, "currentTime"    # J

    .prologue
    .line 350
    iget-object v1, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, mLocalAnimating:Z

    if-nez v1, :cond_a

    .line 351
    :cond_8
    const/4 v0, 0x0

    .line 358
    :goto_9
    return v0

    .line 353
    :cond_a
    iget-object v1, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 354
    iget-object v1, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 358
    .local v0, "more":Z
    goto :goto_9
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .registers 12
    .param p1, "transit"    # I
    .param p2, "isEntrance"    # Z

    .prologue
    .line 2741
    iget v6, p0, mAttrType:I

    const/16 v7, 0x832

    if-ne v6, v7, :cond_e

    iget-object v6, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    if-eqz v6, :cond_e

    .line 2743
    const/4 v6, 0x0

    .line 2836
    :goto_d
    return v6

    .line 2747
    :cond_e
    iget-boolean v6, p0, mLocalAnimating:Z

    if-eqz v6, :cond_16

    iget-boolean v6, p0, mAnimationIsEntrance:Z

    if-eq v6, p2, :cond_1a

    :cond_16
    iget-boolean v6, p0, mKeyguardGoingAwayAnimation:Z

    if-eqz v6, :cond_2a

    .line 2754
    :cond_1a
    iget-object v6, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_28

    iget-boolean v6, p0, mKeyguardGoingAwayAnimation:Z

    if-eqz v6, :cond_28

    const/4 v6, 0x5

    if-ne p1, v6, :cond_28

    .line 2756
    invoke-direct {p0}, applyFadeoutDuringKeyguardExitAnimation()V

    .line 2758
    :cond_28
    const/4 v6, 0x1

    goto :goto_d

    .line 2765
    :cond_2a
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v6

    if-eqz v6, :cond_137

    .line 2766
    iget-object v6, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v6, v7, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2767
    .local v1, "anim":I
    const/4 v2, -0x1

    .line 2768
    .local v2, "attr":I
    const/4 v0, 0x0

    .line 2769
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v1, :cond_11c

    .line 2770
    const/4 v6, -0x1

    if-eq v1, v6, :cond_119

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2798
    :cond_4d
    :goto_4d
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v6, :cond_ae

    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyAnimation: win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " anim="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attr=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " a="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEntrance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Callers "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    :cond_ae
    if-eqz v0, :cond_13a

    .line 2805
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v6, :cond_d7

    .line 2806
    const/4 v3, 0x0

    .line 2811
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded animation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2814
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_d7
    const/4 v6, 0x5

    if-ne p1, v6, :cond_f0

    .line 2815
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_f0

    .line 2816
    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_f0

    .line 2817
    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/AppWindowToken;->updateStartingAnimAdjustment(Lcom/android/server/wm/WindowState;)V

    .line 2821
    :cond_f0
    invoke-virtual {p0, v0}, setAnimation(Landroid/view/animation/Animation;)V

    .line 2822
    iput-boolean p2, p0, mAnimationIsEntrance:Z

    .line 2825
    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x832

    if-ne v6, v7, :cond_13a

    .line 2826
    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_107
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 2827
    .local v5, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v0}, setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_107

    .line 2770
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    :cond_119
    const/4 v0, 0x0

    goto/16 :goto_4d

    .line 2772
    :cond_11c
    packed-switch p1, :pswitch_data_144

    .line 2786
    :goto_11f
    if-ltz v2, :cond_4d

    .line 2792
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_4d

    .line 2774
    :pswitch_12f
    const/4 v2, 0x0

    .line 2775
    goto :goto_11f

    .line 2777
    :pswitch_131
    const/4 v2, 0x1

    .line 2778
    goto :goto_11f

    .line 2780
    :pswitch_133
    const/4 v2, 0x2

    .line 2781
    goto :goto_11f

    .line 2783
    :pswitch_135
    const/4 v2, 0x3

    goto :goto_11f

    .line 2833
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "anim":I
    .end local v2    # "attr":I
    :cond_137
    invoke-virtual {p0}, clearAnimation()V

    .line 2836
    :cond_13a
    iget-object v6, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_141

    const/4 v6, 0x1

    goto/16 :goto_d

    :cond_141
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 2772
    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_12f
        :pswitch_131
        :pswitch_133
        :pswitch_135
    .end packed-switch
.end method

.method applyEnterAnimationLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2700
    iget-boolean v1, p0, mAnimationSkipRequested:Z

    if-eqz v1, :cond_26

    .line 2701
    const/4 v0, 0x0

    .line 2702
    .local v0, "transit":I
    iput-boolean v2, p0, mAnimationSkipRequested:Z

    .line 2703
    iput-boolean v2, p0, mEnterAnimationPending:Z

    .line 2713
    :goto_a
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, applyAnimationLocked(IZ)Z

    .line 2723
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_25

    iget-object v1, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_25

    .line 2725
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2728
    :cond_25
    return-void

    .line 2706
    .end local v0    # "transit":I
    :cond_26
    iget-boolean v1, p0, mEnterAnimationPending:Z

    if-eqz v1, :cond_2e

    .line 2707
    iput-boolean v2, p0, mEnterAnimationPending:Z

    .line 2708
    const/4 v0, 0x1

    .restart local v0    # "transit":I
    goto :goto_a

    .line 2710
    .end local v0    # "transit":I
    :cond_2e
    const/4 v0, 0x3

    .restart local v0    # "transit":I
    goto :goto_a
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_12

    .line 342
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, mLocalAnimating:Z

    .line 345
    invoke-virtual {p0}, destroySurfaceLocked()V

    .line 347
    :cond_12
    return-void
.end method

.method public clearAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_14

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, mAnimating:Z

    .line 315
    iput-boolean v1, p0, mLocalAnimating:Z

    .line 316
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    .line 318
    iput-boolean v1, p0, mKeyguardGoingAwayAnimation:Z

    .line 320
    :cond_14
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x3

    .line 642
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_36

    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_36

    .line 644
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitFinishDrawingLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cur mDrawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_36
    iget v2, p0, mDrawState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_40

    iget v2, p0, mDrawState:I

    if-eq v2, v5, :cond_40

    .line 658
    :cond_3f
    :goto_3f
    return v1

    .line 650
    :cond_40
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-nez v2, :cond_48

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_62

    .line 651
    :cond_48
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_62
    iput v5, p0, mDrawState:I

    .line 654
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 655
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_76

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v2, :cond_76

    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v5, :cond_3f

    .line 656
    :cond_76
    invoke-virtual {p0}, performShowLocked()Z

    move-result v1

    goto :goto_3f
.end method

.method computeShownFrameLocked()V
    .registers 50

    .prologue
    .line 1247
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasLocalTransformation:Z

    move/from16 v32, v0

    .line 1248
    .local v32, "selfTransformation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8be

    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, mHasLocalTransformation:Z

    move/from16 v44, v0

    if-eqz v44, :cond_8be

    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v8, v0, mTransformation:Landroid/view/animation/Transformation;

    .line 1251
    .local v8, "attachedTransformation":Landroid/view/animation/Transformation;
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8c1

    move-object/from16 v0, p0

    iget-object v0, v0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v44, v0

    if-eqz v44, :cond_8c1

    move-object/from16 v0, p0

    iget-object v0, v0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v6, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 1258
    .local v6, "appTransformation":Landroid/view/animation/Transformation;
    :goto_46
    const/16 v16, 0x0

    .line 1273
    .local v16, "isAppTransitReady":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1275
    .local v7, "appTransition":Lcom/android/server/wm/AppTransition;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    .line 1276
    .local v21, "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .line 1277
    .local v19, "mLowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    .line 1280
    .local v20, "mUpperWallpaperTarget":Lcom/android/server/wm/WindowState;
    if-eqz v21, :cond_86

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_86

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v44

    if-eqz v44, :cond_86

    .line 1283
    const/16 v16, 0x1

    .line 1289
    :cond_86
    if-eqz v16, :cond_8c4

    if-eqz v20, :cond_8c4

    move-object/from16 v40, v20

    .line 1295
    .local v40, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :goto_8c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsWallpaper:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1b2

    if-eqz v40, :cond_1b2

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1b2

    .line 1296
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v39, v0

    .line 1297
    .local v39, "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v39

    iget-boolean v0, v0, mHasLocalTransformation:Z

    move/from16 v44, v0

    if-eqz v44, :cond_ea

    move-object/from16 v0, v39

    iget-object v0, v0, mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v44, v0

    if-eqz v44, :cond_ea

    move-object/from16 v0, v39

    iget-object v0, v0, mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v44

    if-nez v44, :cond_ea

    .line 1300
    move-object/from16 v0, v39

    iget-object v8, v0, mTransformation:Landroid/view/animation/Transformation;

    .line 1301
    sget-boolean v44, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v44, :cond_ea

    if-eqz v8, :cond_ea

    .line 1302
    const-string v44, "WindowStateAnimator"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WP target attached xform: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_ea
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    if-nez v44, :cond_8c8

    const/16 v41, 0x0

    .line 1307
    .local v41, "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_f4
    if-eqz v41, :cond_136

    move-object/from16 v0, v41

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v44, v0

    if-eqz v44, :cond_136

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v44, v0

    if-eqz v44, :cond_136

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v44

    if-nez v44, :cond_136

    .line 1310
    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 1311
    sget-boolean v44, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v44, :cond_136

    if-eqz v6, :cond_136

    .line 1312
    const-string v44, "WindowStateAnimator"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WP target app xform: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_136
    if-eqz v6, :cond_1b2

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v44

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-nez v44, :cond_1b2

    if-eqz v20, :cond_1b2

    if-eqz v19, :cond_1b2

    .line 1324
    move-object/from16 v0, v40

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8d6

    move-object/from16 v26, v20

    .line 1327
    .local v26, "otherWallpaperTarget":Lcom/android/server/wm/WindowState;
    :goto_14e
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    if-nez v44, :cond_8da

    const/16 v25, 0x0

    .line 1329
    .local v25, "otherWPAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_158
    if-eqz v25, :cond_1b2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1b2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1b2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v44

    if-nez v44, :cond_1b2

    .line 1333
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1b2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v44

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-eqz v44, :cond_1b2

    .line 1334
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 1335
    sget-boolean v44, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v44, :cond_1b2

    if-eqz v6, :cond_1b2

    .line 1336
    const-string v44, "WindowStateAnimator"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "WP upper or lower target app xform: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    .end local v25    # "otherWPAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v26    # "otherWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v39    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v41    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    .line 1345
    .local v12, "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v31

    .line 1347
    .local v31, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v31, :cond_8e8

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v44

    if-eqz v44, :cond_8e8

    const/16 v30, 0x1

    .line 1350
    .local v30, "screenAnimation":Z
    :goto_1d2
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasClipRect:Z

    .line 1352
    const/16 v37, 0x0

    .line 1354
    .local v37, "virtualScreenOffset":Landroid/graphics/PointF;
    new-instance v37, Landroid/graphics/PointF;

    .end local v37    # "virtualScreenOffset":Landroid/graphics/PointF;
    invoke-direct/range {v37 .. v37}, Landroid/graphics/PointF;-><init>()V

    .line 1355
    .restart local v37    # "virtualScreenOffset":Landroid/graphics/PointF;
    const/high16 v29, 0x3f800000    # 1.0f

    .line 1358
    .local v29, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v33

    .line 1359
    .local v33, "spec":Landroid/view/MagnificationSpec;
    if-eqz v33, :cond_1f5

    .line 1360
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v29, v0

    .line 1364
    :cond_1f5
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v37

    move/from16 v3, v29

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/android/server/am/VirtualScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;F)Z

    move-result v44

    if-nez v44, :cond_20f

    .line 1365
    const/16 v37, 0x0

    .line 1372
    :cond_20f
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasClipRect:Z

    .line 1375
    if-nez v32, :cond_21f

    if-nez v8, :cond_21f

    if-nez v6, :cond_21f

    if-eqz v30, :cond_aeb

    .line 1378
    :cond_21f
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1379
    .local v14, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v35, v0

    .line 1380
    .local v35, "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v36, v0

    .line 1383
    .local v36, "tmpMatrix":Landroid/graphics/Matrix;
    if-eqz v30, :cond_9bb

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v44

    if-eqz v44, :cond_9bb

    .line 1391
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v38, v0

    .line 1392
    .local v38, "w":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v44

    move/from16 v0, v44

    int-to-float v15, v0

    .line 1393
    .local v15, "h":F
    const/high16 v44, 0x3f800000    # 1.0f

    cmpl-float v44, v38, v44

    if-ltz v44, :cond_8ec

    const/high16 v44, 0x3f800000    # 1.0f

    cmpl-float v44, v15, v44

    if-ltz v44, :cond_8ec

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v44

    if-nez v44, :cond_8ec

    .line 1394
    const/high16 v44, 0x3f800000    # 1.0f

    const/high16 v45, 0x40000000    # 2.0f

    div-float v45, v45, v38

    add-float v44, v44, v45

    const/high16 v45, 0x3f800000    # 1.0f

    const/high16 v46, 0x40000000    # 2.0f

    div-float v46, v46, v15

    add-float v45, v45, v46

    const/high16 v46, 0x40000000    # 2.0f

    div-float v46, v38, v46

    const/high16 v47, 0x40000000    # 2.0f

    div-float v47, v15, v47

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1419
    :goto_29a
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHiddenBeforeRotationAnimation:Z

    .line 1425
    .end local v15    # "h":F
    .end local v38    # "w":F
    :goto_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1426
    if-eqz v32, :cond_2d6

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v44

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1430
    :cond_2d6
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1431
    if-eqz v8, :cond_334

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v44, v0

    const/16 v45, 0x8d4

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_334

    .line 1435
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v44

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1437
    :cond_334
    if-eqz v6, :cond_347

    .line 1440
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v34

    .line 1441
    .local v34, "tempAppMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v44

    if-eqz v44, :cond_9c0

    .line 1442
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1463
    .end local v34    # "tempAppMatrix":Landroid/graphics/Matrix;
    :cond_347
    :goto_347
    if-eqz v30, :cond_358

    .line 1464
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v44

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1492
    :cond_358
    if-eqz v12, :cond_366

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v44

    if-eqz v44, :cond_3d0

    .line 1494
    :cond_366
    const/16 v33, 0x0

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v44, v0

    if-eqz v44, :cond_38c

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v33

    .line 1499
    :cond_38c
    if-eqz v33, :cond_394

    invoke-virtual/range {v33 .. v33}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v44

    if-eqz v44, :cond_39e

    .line 1500
    :cond_394
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v33

    .line 1503
    :cond_39e
    if-eqz v33, :cond_3d0

    invoke-virtual/range {v33 .. v33}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v44

    if-nez v44, :cond_3d0

    .line 1504
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v44, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1505
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v44, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1513
    :cond_3d0
    if-eqz v37, :cond_3e7

    .line 1514
    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v44, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1525
    :cond_3e7
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHaveMatrix:Z

    .line 1526
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1527
    const/16 v44, 0x0

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDsDx:F

    .line 1528
    const/16 v44, 0x3

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDtDx:F

    .line 1529
    const/16 v44, 0x1

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDsDy:F

    .line 1530
    const/16 v44, 0x4

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDtDy:F

    .line 1531
    const/16 v44, 0x2

    aget v42, v35, v44

    .line 1532
    .local v42, "x":F
    const/16 v44, 0x5

    aget v43, v35, v44

    .line 1534
    .local v43, "y":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v38

    .line 1535
    .local v38, "w":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1537
    .local v15, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTempShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v45, v45, v42

    int-to-float v0, v15

    move/from16 v46, v0

    add-float v46, v46, v43

    move-object/from16 v0, v44

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTempShownFrame:Landroid/graphics/RectF;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v45, v0

    cmpl-float v44, v44, v45

    if-nez v44, :cond_4ac

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTempShownFrame:Landroid/graphics/RectF;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v45, v0

    cmpl-float v44, v44, v45

    if-eqz v44, :cond_4b4

    .line 1542
    :cond_4ac
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShownFrameChangedInAnimate:Z

    .line 1549
    :cond_4b4
    move-object/from16 v0, p0

    iget v0, v0, mAlpha:F

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move/from16 v44, v0

    if-eqz v44, :cond_524

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v44

    if-eqz v44, :cond_524

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, mDsDx:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, mDtDx:F

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, mDsDy:F

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, mDtDy:F

    move/from16 v48, v0

    invoke-virtual/range {v44 .. v48}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v44

    if-eqz v44, :cond_857

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    cmpl-float v44, v42, v44

    if-nez v44, :cond_857

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    cmpl-float v44, v43, v44

    if-nez v44, :cond_857

    .line 1557
    :cond_524
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v44, v0

    and-int/lit8 v13, v44, 0xc

    .line 1560
    .local v13, "fixedOrientationFlag":I
    if-eqz v32, :cond_552

    .line 1561
    move-object/from16 v0, p0

    iget v0, v0, mShownAlpha:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v45

    mul-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1563
    :cond_552
    if-eqz v8, :cond_566

    .line 1564
    move-object/from16 v0, p0

    iget v0, v0, mShownAlpha:F

    move/from16 v44, v0

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v45

    mul-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1566
    :cond_566
    if-eqz v6, :cond_82f

    .line 1567
    move-object/from16 v0, p0

    iget v0, v0, mShownAlpha:F

    move/from16 v44, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v45

    mul-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1568
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->hasClipRect()Z

    move-result v44

    if-eqz v44, :cond_82f

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    if-eqz v44, :cond_6cd

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v44, v0

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x4000

    move/from16 v44, v0

    if-nez v44, :cond_6cd

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v22

    .line 1574
    .local v22, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v22, :cond_6cd

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_6cd

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    if-eqz v44, :cond_64d

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v44, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v9, v44, v45

    .line 1577
    .local v9, "clipLeft":F
    const/high16 v44, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, mDsDx:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    mul-float v44, v44, v9

    add-float v9, v9, v44

    .line 1578
    const/16 v44, 0x0

    cmpl-float v44, v9, v44

    if-lez v44, :cond_64d

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    const/high16 v45, 0x3f000000    # 0.5f

    add-float v45, v45, v9

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    neg-int v0, v0

    move/from16 v45, v0

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/Rect;->offset(II)V

    .line 1583
    .end local v9    # "clipLeft":F
    :cond_64d
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    if-eqz v44, :cond_6cd

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v44, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v10, v44, v45

    .line 1585
    .local v10, "clipTop":F
    const/high16 v44, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, mDtDy:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    mul-float v44, v44, v10

    add-float v10, v10, v44

    .line 1586
    const/16 v44, 0x0

    cmpl-float v44, v10, v44

    if-lez v44, :cond_6cd

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/high16 v46, 0x3f000000    # 0.5f

    add-float v46, v46, v10

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/Rect;->offset(II)V

    .line 1594
    .end local v10    # "clipTop":F
    .end local v22    # "mainWin":Lcom/android/server/wm/WindowState;
    :cond_6cd
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v44, v0

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_733

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1598
    :cond_733
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v44, v0

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_799

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v46, v0

    div-float v45, v45, v46

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1604
    :cond_799
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v44, v0

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x4000

    move/from16 v44, v0

    if-eqz v44, :cond_827

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v45, v0

    sub-int v24, v44, v45

    .line 1606
    .local v24, "offsetWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    sub-int v23, v44, v45

    .line 1607
    .local v23, "offsetHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v45, v0

    add-int v45, v45, v24

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v45, v0

    add-int v45, v45, v23

    move/from16 v0, v45

    move-object/from16 v1, v44

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1611
    .end local v23    # "offsetHeight":I
    .end local v24    # "offsetWidth":I
    :cond_827
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasClipRect:Z

    .line 1614
    :cond_82f
    if-eqz v30, :cond_857

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    if-nez v44, :cond_857

    if-nez v13, :cond_857

    .line 1617
    move-object/from16 v0, p0

    iget v0, v0, mShownAlpha:F

    move/from16 v44, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v45

    mul-float v44, v44, v45

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1627
    .end local v13    # "fixedOrientationFlag":I
    :cond_857
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v44, v0

    if-nez v44, :cond_887

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    if-eqz v44, :cond_88f

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    move/from16 v44, v0

    if-eqz v44, :cond_88f

    .line 1629
    :cond_887
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1642
    :cond_88f
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8b9

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsLastShownWhenLocked:Z

    move/from16 v44, v0

    if-eqz v44, :cond_8b9

    .line 1643
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1649
    :cond_8b9
    sget-boolean v44, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-nez v44, :cond_a01

    .line 1806
    .end local v14    # "frame":Landroid/graphics/Rect;
    .end local v15    # "h":I
    .end local v35    # "tmpFloats":[F
    .end local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v38    # "w":I
    .end local v42    # "x":F
    .end local v43    # "y":F
    :cond_8bd
    :goto_8bd
    return-void

    .line 1248
    .end local v6    # "appTransformation":Landroid/view/animation/Transformation;
    .end local v7    # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v8    # "attachedTransformation":Landroid/view/animation/Transformation;
    .end local v12    # "displayId":I
    .end local v16    # "isAppTransitReady":Z
    .end local v19    # "mLowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v20    # "mUpperWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v21    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v29    # "scale":F
    .end local v30    # "screenAnimation":Z
    .end local v31    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v33    # "spec":Landroid/view/MagnificationSpec;
    .end local v37    # "virtualScreenOffset":Landroid/graphics/PointF;
    .end local v40    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_8be
    const/4 v8, 0x0

    goto/16 :goto_26

    .line 1251
    .restart local v8    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_8c1
    const/4 v6, 0x0

    goto/16 :goto_46

    .restart local v6    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v7    # "appTransition":Lcom/android/server/wm/AppTransition;
    .restart local v16    # "isAppTransitReady":Z
    .restart local v19    # "mLowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    .restart local v20    # "mUpperWallpaperTarget":Lcom/android/server/wm/WindowState;
    .restart local v21    # "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_8c4
    move-object/from16 v40, v21

    .line 1289
    goto/16 :goto_8c

    .line 1305
    .restart local v39    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v40    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_8c8
    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v41, v0

    goto/16 :goto_f4

    .restart local v41    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_8d6
    move-object/from16 v26, v19

    .line 1324
    goto/16 :goto_14e

    .line 1327
    .restart local v26    # "otherWallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_8da
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v25, v0

    goto/16 :goto_158

    .line 1347
    .end local v26    # "otherWallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v39    # "wallpaperAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v41    # "wpAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v12    # "displayId":I
    .restart local v31    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_8e8
    const/16 v30, 0x0

    goto/16 :goto_1d2

    .line 1397
    .restart local v14    # "frame":Landroid/graphics/Rect;
    .local v15, "h":F
    .restart local v29    # "scale":F
    .restart local v30    # "screenAnimation":Z
    .restart local v33    # "spec":Landroid/view/MagnificationSpec;
    .restart local v35    # "tmpFloats":[F
    .restart local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v37    # "virtualScreenOffset":Landroid/graphics/PointF;
    .local v38, "w":F
    :cond_8ec
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v44

    if-eqz v44, :cond_9a7

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v44, v0

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x4000

    move/from16 v44, v0

    if-eqz v44, :cond_9a7

    const/16 v17, 0x1

    .line 1399
    .local v17, "isCascadedSurfaceView":Z
    :goto_918
    const/high16 v44, 0x3f800000    # 1.0f

    cmpl-float v44, v38, v44

    if-ltz v44, :cond_9b6

    const/high16 v44, 0x3f800000    # 1.0f

    cmpl-float v44, v15, v44

    if-ltz v44, :cond_9b6

    if-eqz v17, :cond_9b6

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->width()I

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Rect;->width()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_9ab

    const/16 v27, 0x4

    .line 1404
    .local v27, "pixelForHScaleUpWhileRotation":I
    :goto_94e
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->height()I

    move-result v44

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/graphics/Rect;->height()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_9ae

    const/16 v28, 0x4

    .line 1405
    .local v28, "pixelForVScaleUpWhileRotation":I
    :goto_976
    if-gtz v27, :cond_97a

    if-lez v28, :cond_9b1

    .line 1406
    :cond_97a
    const/high16 v44, 0x3f800000    # 1.0f

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v45, v45, v38

    add-float v44, v44, v45

    const/high16 v45, 0x3f800000    # 1.0f

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v46, v0

    div-float v46, v46, v15

    add-float v45, v45, v46

    const/high16 v46, 0x40000000    # 2.0f

    div-float v46, v38, v46

    const/high16 v47, 0x40000000    # 2.0f

    div-float v47, v15, v47

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto/16 :goto_29a

    .line 1397
    .end local v17    # "isCascadedSurfaceView":Z
    .end local v27    # "pixelForHScaleUpWhileRotation":I
    .end local v28    # "pixelForVScaleUpWhileRotation":I
    :cond_9a7
    const/16 v17, 0x0

    goto/16 :goto_918

    .line 1403
    .restart local v17    # "isCascadedSurfaceView":Z
    :cond_9ab
    const/16 v27, 0x0

    goto :goto_94e

    .line 1404
    .restart local v27    # "pixelForHScaleUpWhileRotation":I
    :cond_9ae
    const/16 v28, 0x0

    goto :goto_976

    .line 1408
    .restart local v28    # "pixelForVScaleUpWhileRotation":I
    :cond_9b1
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_29a

    .line 1412
    .end local v27    # "pixelForHScaleUpWhileRotation":I
    .end local v28    # "pixelForVScaleUpWhileRotation":I
    :cond_9b6
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_29a

    .line 1423
    .end local v15    # "h":F
    .end local v17    # "isCascadedSurfaceView":Z
    .end local v38    # "w":F
    :cond_9bb
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_2a2

    .line 1444
    .restart local v34    # "tempAppMatrix":Landroid/graphics/Matrix;
    :cond_9c0
    const/16 v44, 0x9

    move/from16 v0, v44

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 1445
    .local v18, "mFloats":[F
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1447
    const/16 v44, 0x2

    aget v42, v18, v44

    .line 1448
    .restart local v42    # "x":F
    const/16 v44, 0x5

    aget v43, v18, v44

    .line 1449
    .restart local v43    # "y":F
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1450
    const/high16 v44, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v45, v0

    div-float v44, v44, v45

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v11, v44, v45

    .line 1456
    .local v11, "delta":F
    mul-float v44, v42, v11

    mul-float v45, v43, v11

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_347

    .line 1649
    .end local v11    # "delta":F
    .end local v18    # "mFloats":[F
    .end local v34    # "tempAppMatrix":Landroid/graphics/Matrix;
    .local v15, "h":I
    .local v38, "w":I
    :cond_a01
    move-object/from16 v0, p0

    iget v0, v0, mShownAlpha:F

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    cmpl-double v44, v44, v46

    if-eqz v44, :cond_a23

    move-object/from16 v0, p0

    iget v0, v0, mShownAlpha:F

    move/from16 v44, v0

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_8bd

    .line 1650
    :cond_a23
    const-string v45, "WindowStateAnimator"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "computeShownFrameLocked: Animating "

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, " mAlpha="

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, mAlpha:F

    move/from16 v46, v0

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, " self="

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    if-eqz v32, :cond_ad1

    move-object/from16 v0, p0

    iget-object v0, v0, mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    :goto_a6e
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, " attached="

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    if-nez v8, :cond_ad5

    const-string/jumbo v44, "null"

    :goto_a85
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, " app="

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    if-nez v6, :cond_ade

    const-string/jumbo v44, "null"

    :goto_a9c
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, " screen="

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    if-eqz v30, :cond_ae7

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    :goto_abc
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8bd

    :cond_ad1
    const-string/jumbo v44, "null"

    goto :goto_a6e

    :cond_ad5
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    goto :goto_a85

    :cond_ade
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v44

    goto :goto_a9c

    :cond_ae7
    const-string/jumbo v44, "null"

    goto :goto_abc

    .line 1659
    .end local v14    # "frame":Landroid/graphics/Rect;
    .end local v15    # "h":I
    .end local v35    # "tmpFloats":[F
    .end local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v38    # "w":I
    .end local v42    # "x":F
    .end local v43    # "y":F
    :cond_aeb
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsWallpaper:Z

    move/from16 v44, v0

    if-eqz v44, :cond_b07

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    move/from16 v44, v0

    if-nez v44, :cond_8bd

    .line 1667
    :cond_b07
    const/16 v33, 0x0

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v44, v0

    if-eqz v44, :cond_b2f

    if-nez v12, :cond_b2f

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v33

    .line 1685
    :cond_b2f
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v44

    if-eqz v44, :cond_b4f

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v44

    if-eqz v44, :cond_b61

    :cond_b4f
    if-eqz v33, :cond_b57

    invoke-virtual/range {v33 .. v33}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v44

    if-eqz v44, :cond_b61

    .line 1688
    :cond_b57
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v33

    .line 1693
    :cond_b61
    if-eqz v33, :cond_d6e

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1695
    .restart local v14    # "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v35, v0

    .line 1696
    .restart local v35    # "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v36, v0

    .line 1698
    .restart local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1699
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v46, v0

    add-int v45, v45, v46

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1701
    if-eqz v33, :cond_c3d

    invoke-virtual/range {v33 .. v33}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v44

    if-nez v44, :cond_c3d

    .line 1702
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v44, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v44, v0

    const/high16 v45, 0x3f800000    # 1.0f

    cmpl-float v44, v44, v45

    if-eqz v44, :cond_d57

    .line 1705
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v45, v0

    div-float v44, v44, v45

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v46, v0

    div-float v45, v45, v46

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1714
    :cond_c3d
    :goto_c3d
    if-eqz v37, :cond_c54

    .line 1715
    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v44, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1720
    :cond_c54
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1722
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHaveMatrix:Z

    .line 1723
    const/16 v44, 0x0

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDsDx:F

    .line 1724
    const/16 v44, 0x3

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDtDx:F

    .line 1725
    const/16 v44, 0x1

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDsDy:F

    .line 1726
    const/16 v44, 0x4

    aget v44, v35, v44

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDtDy:F

    .line 1727
    const/16 v44, 0x2

    aget v42, v35, v44

    .line 1728
    .restart local v42    # "x":F
    const/16 v44, 0x5

    aget v43, v35, v44

    .line 1729
    .restart local v43    # "y":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v38

    .line 1730
    .restart local v38    # "w":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1731
    .restart local v15    # "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v45, v45, v42

    int-to-float v0, v15

    move/from16 v46, v0

    add-float v46, v46, v43

    move-object/from16 v0, v44

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1733
    move-object/from16 v0, p0

    iget v0, v0, mAlpha:F

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1770
    .end local v14    # "frame":Landroid/graphics/Rect;
    .end local v15    # "h":I
    .end local v35    # "tmpFloats":[F
    .end local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v38    # "w":I
    .end local v42    # "x":F
    .end local v43    # "y":F
    :cond_ccc
    :goto_ccc
    if-eqz v31, :cond_ce4

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v44

    if-nez v44, :cond_ce4

    move-object/from16 v0, p0

    iget-boolean v0, v0, mHiddenBeforeRotationAnimation:Z

    move/from16 v44, v0

    if-eqz v44, :cond_ce4

    .line 1771
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1777
    :cond_ce4
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    move/from16 v44, v0

    if-nez v44, :cond_d14

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    if-eqz v44, :cond_d1c

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    move/from16 v44, v0

    if-eqz v44, :cond_d1c

    .line 1779
    :cond_d14
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1789
    :cond_d1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mShownFrameChangedInAnimate:Z

    move/from16 v44, v0

    if-eqz v44, :cond_8bd

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v44, v0

    if-eqz v44, :cond_d4d

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v44

    if-nez v44, :cond_d4d

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 1803
    :cond_d4d
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mShownFrameChangedInAnimate:Z

    goto/16 :goto_8bd

    .line 1707
    .restart local v14    # "frame":Landroid/graphics/Rect;
    .restart local v35    # "tmpFloats":[F
    .restart local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_d57
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v44, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v45, v0

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_c3d

    .line 1736
    .end local v14    # "frame":Landroid/graphics/Rect;
    .end local v35    # "tmpFloats":[F
    .end local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_d6e
    if-eqz v37, :cond_ea6

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1738
    .restart local v14    # "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v35, v0

    .line 1739
    .restart local v35    # "tmpFloats":[F
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v36, v0

    .line 1741
    .restart local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Matrix;->reset()V

    .line 1742
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v45, v0

    add-float v44, v44, v45

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v46, v0

    add-float v45, v45, v46

    move-object/from16 v0, v36

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1743
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1744
    const/16 v44, 0x2

    aget v42, v35, v44

    .line 1745
    .restart local v42    # "x":F
    const/16 v44, 0x5

    aget v43, v35, v44

    .line 1746
    .restart local v43    # "y":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v38

    .line 1747
    .restart local v38    # "w":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1748
    .restart local v15    # "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v45, v45, v42

    int-to-float v0, v15

    move/from16 v46, v0

    add-float v46, v46, v43

    move-object/from16 v0, v44

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1754
    .end local v14    # "frame":Landroid/graphics/Rect;
    .end local v15    # "h":I
    .end local v35    # "tmpFloats":[F
    .end local v36    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v38    # "w":I
    .end local v42    # "x":F
    .end local v43    # "y":F
    :goto_dfc
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v44, v0

    if-nez v44, :cond_e18

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v44, v0

    if-eqz v44, :cond_e49

    .line 1755
    :cond_e18
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/RectF;->offset(FF)V

    .line 1757
    :cond_e49
    move-object/from16 v0, p0

    iget v0, v0, mAlpha:F

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 1758
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHaveMatrix:Z

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDsDx:F

    .line 1760
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDtDx:F

    .line 1761
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDsDy:F

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v44, v0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, mDtDy:F

    .line 1763
    if-nez v6, :cond_ccc

    .line 1764
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, mHasClipRect:Z

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_ccc

    .line 1751
    :cond_ea6
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_dfc
.end method

.method createSurfaceLocked()Landroid/view/SurfaceControl;
    .registers 20

    .prologue
    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    .line 894
    .local v16, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_2ee

    .line 895
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v2, :cond_14

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_35

    :cond_14
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createSurface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_35
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mDrawState:I

    .line 898
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_58

    .line 899
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_2f3

    .line 900
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 901
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 909
    :cond_58
    :goto_58
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 911
    const/4 v8, 0x4

    .line 912
    .local v8, "flags":I
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 915
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_70

    .line 916
    const/high16 v2, -0x80000000

    or-int/2addr v8, v2

    .line 920
    :cond_70
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_2fc

    .line 921
    or-int/lit16 v8, v8, 0x80

    .line 923
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mSecure:Z

    .line 930
    :goto_7d
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 931
    .local v15, "userId":I
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_96

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_96

    .line 932
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v15, v2, Lcom/android/server/wm/AppWindowToken;->userId:I

    .line 934
    :cond_96
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowManagerService;->isScreenCaptureDisabledLocked(I)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 935
    or-int/lit16 v8, v8, 0x80

    .line 937
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mSecure:Z

    .line 944
    :cond_a7
    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    if-eqz v2, :cond_c4

    invoke-static {}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getInstance()Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 946
    const/high16 v2, 0x8000000

    or-int/2addr v8, v2

    .line 953
    :cond_c4
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_cd

    .line 955
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v8, v2

    .line 970
    :cond_cd
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_303

    .line 973
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 974
    .local v5, "width":I
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 982
    .local v6, "height":I
    :goto_db
    if-gtz v5, :cond_de

    .line 983
    const/4 v5, 0x1

    .line 985
    :cond_de
    if-gtz v6, :cond_e1

    .line 986
    const/4 v6, 0x1

    .line 989
    :cond_e1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 990
    .local v13, "left":F
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v2, v3

    int-to-float v14, v2

    .line 993
    .local v14, "top":F
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v5, v2

    .line 994
    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v6, v2

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget-object v3, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 999
    invoke-direct/range {p0 .. p0}, adjustSurfaceInsetForReduceScreen()V

    .line 1004
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_315

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v13, v2

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v14, v2

    .line 1013
    :goto_13d
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_1a9

    .line 1014
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating surface in session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mSession:Lcom/android/server/wm/Session;

    iget-object v4, v4, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1a9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mSurfaceShown:Z

    .line 1023
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceLayer:I

    .line 1025
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceLayerStack:I

    .line 1027
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceAlpha:F

    .line 1028
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceX:F

    .line 1029
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceY:F

    .line 1030
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1031
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mHasClipRect:Z

    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, mClipRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, mLastClipRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1037
    int-to-float v2, v5

    :try_start_200
    move-object/from16 v0, p0

    iput v2, v0, mSurfaceW:F

    .line 1038
    int-to-float v2, v6

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceH:F

    .line 1040
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_327

    const/4 v12, 0x1

    .line 1042
    .local v12, "isHwAccelerated":Z
    :goto_211
    if-eqz v12, :cond_32a

    const/4 v7, -0x3

    .line 1043
    .local v7, "format":I
    :goto_214
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-nez v2, :cond_236

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_236

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_236

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_236

    iget-object v2, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_236

    .line 1048
    or-int/lit16 v8, v8, 0x400

    .line 1051
    :cond_236
    move-object/from16 v0, p0

    iput v7, v0, mSurfaceFormat:I

    .line 1052
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v2, :cond_32e

    .line 1053
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1064
    :goto_255
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_265

    .line 1067
    invoke-virtual/range {p0 .. p0}, printWindowHasSurface()V
    :try_end_265
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_200 .. :try_end_265} :catch_347
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_265} :catch_368

    .line 1108
    :cond_265
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1110
    :try_start_268
    move-object/from16 v0, p0

    iput v13, v0, mSurfaceX:F

    .line 1111
    move-object/from16 v0, p0

    iput v14, v0, mSurfaceY:F
    :try_end_270
    .catchall {:try_start_268 .. :try_end_270} :catchall_3b8

    .line 1115
    :try_start_270
    move-object/from16 v0, p0

    iget-object v2, v0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_37d

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, mSurfaceX:F

    move-object/from16 v0, p0

    iget-object v4, v0, mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, mSurfaceY:F

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v17, v0

    mul-float v4, v4, v17

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1121
    :goto_2a1
    move-object/from16 v0, p0

    iget v2, v0, mAnimLayer:I

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceLayer:I

    .line 1122
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 1123
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_2ce

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1126
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mLayerStack:I

    move-object/from16 v0, p0

    iput v2, v0, mSurfaceLayerStack:I

    .line 1129
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, mAnimLayer:I

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1131
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mSurfaceShown:Z
    :try_end_2e6
    .catch Ljava/lang/RuntimeException; {:try_start_270 .. :try_end_2e6} :catch_38e
    .catchall {:try_start_270 .. :try_end_2e6} :catchall_3b8

    .line 1136
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_2e6
    const/4 v2, 0x1

    :try_start_2e7
    move-object/from16 v0, p0

    iput-boolean v2, v0, mLastHidden:Z
    :try_end_2eb
    .catchall {:try_start_2e7 .. :try_end_2eb} :catchall_3b8

    .line 1138
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1145
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "format":I
    .end local v8    # "flags":I
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "isHwAccelerated":Z
    .end local v13    # "left":F
    .end local v14    # "top":F
    .end local v15    # "userId":I
    :cond_2ee
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_2f2
    return-object v2

    .line 905
    :cond_2f3
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto/16 :goto_58

    .line 925
    .restart local v8    # "flags":I
    .restart local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2fc
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mSecure:Z

    goto/16 :goto_7d

    .line 976
    .restart local v15    # "userId":I
    :cond_303
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 977
    .restart local v5    # "width":I
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .restart local v6    # "height":I
    goto/16 :goto_db

    .line 1009
    .restart local v13    # "left":F
    .restart local v14    # "top":F
    :cond_315
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v13, v2

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v14, v2

    goto/16 :goto_13d

    .line 1040
    :cond_327
    const/4 v12, 0x0

    goto/16 :goto_211

    .line 1042
    .restart local v12    # "isHwAccelerated":Z
    :cond_32a
    :try_start_32a
    iget v7, v9, Landroid/view/WindowManager$LayoutParams;->format:I

    goto/16 :goto_214

    .line 1058
    .restart local v7    # "format":I
    :cond_32e
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_345
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_32a .. :try_end_345} :catch_347
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_345} :catch_368

    goto/16 :goto_255

    .line 1080
    .end local v7    # "format":I
    .end local v12    # "isHwAccelerated":Z
    :catch_347
    move-exception v11

    .line 1081
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 1082
    const-string v2, "WindowStateAnimator"

    const-string v3, "OutOfResourcesException creating surface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v3, "create"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 1084
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mDrawState:I

    .line 1085
    const/4 v2, 0x0

    goto :goto_2f2

    .line 1086
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_368
    move-exception v11

    .line 1087
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 1088
    const-string v2, "WindowStateAnimator"

    const-string v3, "Exception creating surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mDrawState:I

    .line 1090
    const/4 v2, 0x0

    goto/16 :goto_2f2

    .line 1118
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v7    # "format":I
    .restart local v12    # "isHwAccelerated":Z
    :cond_37d
    :try_start_37d
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, mSurfaceX:F

    move-object/from16 v0, p0

    iget v4, v0, mSurfaceY:F

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_38c
    .catch Ljava/lang/RuntimeException; {:try_start_37d .. :try_end_38c} :catch_38e
    .catchall {:try_start_37d .. :try_end_38c} :catchall_3b8

    goto/16 :goto_2a1

    .line 1132
    :catch_38e
    move-exception v11

    .line 1133
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_38f
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating surface in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v3, "create-init"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    :try_end_3b6
    .catchall {:try_start_38f .. :try_end_3b6} :catchall_3b8

    goto/16 :goto_2e6

    .line 1138
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catchall_3b8
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2
.end method

.method destroyDeferredSurfaceLocked()V
    .registers 5

    .prologue
    .line 1225
    :try_start_0
    iget-object v1, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_10

    .line 1234
    iget-object v1, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 1235
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_17

    .line 1242
    :cond_10
    :goto_10
    const/4 v1, 0x0

    iput-boolean v1, p0, mSurfaceDestroyDeferred:Z

    .line 1243
    const/4 v1, 0x0

    iput-object v1, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    .line 1244
    return-void

    .line 1237
    :catch_17
    move-exception v0

    .line 1238
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method destroySurfaceLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1149
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_26

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq v3, v4, :cond_1a

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_26

    .line 1150
    :cond_1a
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1151
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput v6, v3, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    .line 1154
    :cond_26
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_bc

    .line 1156
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1157
    .local v2, "i":I
    :goto_32
    if-lez v2, :cond_44

    .line 1158
    add-int/lit8 v2, v2, -0x1

    .line 1159
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 1160
    .local v0, "c":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    goto :goto_32

    .line 1164
    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    :cond_44
    :try_start_44
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_79

    .line 1165
    const/4 v1, 0x0

    .line 1170
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1173
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_79
    iget-boolean v3, p0, mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_106

    .line 1174
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_99

    iget-object v3, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eq v3, v4, :cond_99

    .line 1175
    iget-object v3, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_90

    .line 1184
    iget-object v3, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    .line 1186
    :cond_90
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v3, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    .line 1187
    iget-object v3, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->hide()V

    .line 1190
    :cond_99
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I
    :try_end_9f
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_9f} :catch_c6

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_aa

    .line 1192
    :try_start_a3
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->onSurfaceDestroyDeferred()V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_aa} :catch_bd
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_aa} :catch_c6

    .line 1209
    :cond_aa
    :goto_aa
    :try_start_aa
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_b1
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_b1} :catch_c6

    .line 1216
    :goto_b1
    iput-boolean v6, p0, mSurfaceShown:Z

    .line 1217
    const/4 v3, 0x0

    iput-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1218
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 1219
    iput v6, p0, mDrawState:I

    .line 1221
    .end local v2    # "i":I
    :cond_bc
    return-void

    .line 1193
    .restart local v2    # "i":I
    :catch_bd
    move-exception v1

    .line 1194
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_be
    const-string v3, "WindowStateAnimator"

    const-string v4, "Failed to dispatch surface destroy deferred."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c5
    .catch Ljava/lang/RuntimeException; {:try_start_be .. :try_end_c5} :catch_c6

    goto :goto_aa

    .line 1210
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_c6
    move-exception v1

    .line 1211
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 1207
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_106
    :try_start_106
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_10b
    .catch Ljava/lang/RuntimeException; {:try_start_106 .. :try_end_10b} :catch_c6

    goto :goto_aa
.end method

.method drawStateToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget v0, p0, mDrawState:I

    packed-switch v0, :pswitch_data_1c

    .line 238
    iget v0, p0, mDrawState:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 233
    :pswitch_c
    const-string v0, "NO_SURFACE"

    goto :goto_b

    .line 234
    :pswitch_f
    const-string v0, "DRAW_PENDING"

    goto :goto_b

    .line 235
    :pswitch_12
    const-string v0, "COMMIT_DRAW_PENDING"

    goto :goto_b

    .line 236
    :pswitch_15
    const-string v0, "READY_TO_SHOW"

    goto :goto_b

    .line 237
    :pswitch_18
    const-string v0, "HAS_DRAWN"

    goto :goto_b

    .line 232
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2862
    iget-boolean v0, p0, mAnimating:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, mLocalAnimating:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, mAnimationIsEntrance:Z

    if-nez v0, :cond_12

    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3e

    .line 2864
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2865
    const-string v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2866
    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2867
    const-string v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2869
    :cond_3e
    iget-boolean v0, p0, mHasTransformation:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, mHasLocalTransformation:Z

    if-eqz v0, :cond_6a

    .line 2870
    :cond_46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2871
    iget-boolean v0, p0, mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2872
    const-string v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2873
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 2874
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2876
    :cond_6a
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_eb

    .line 2877
    if-eqz p3, :cond_98

    .line 2878
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2879
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {p0}, drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2881
    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2883
    :cond_98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2884
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2891
    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2893
    const-string v0, " secure="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSecure:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2895
    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2896
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2897
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSurfaceW:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2898
    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSurfaceH:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2900
    :cond_eb
    iget-object v0, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_fd

    .line 2901
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2902
    iget-object v0, p0, mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2904
    :cond_fd
    iget-boolean v0, p0, mSurfaceResized:Z

    if-nez v0, :cond_105

    iget-boolean v0, p0, mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_11d

    .line 2905
    :cond_105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2906
    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2908
    :cond_11d
    iget v0, p0, mShownAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12f

    iget v0, p0, mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12f

    iget v0, p0, mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_151

    .line 2909
    :cond_12f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2910
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2911
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2913
    :cond_151
    iget-boolean v0, p0, mHaveMatrix:Z

    if-nez v0, :cond_15d

    iget-object v0, p0, mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_195

    .line 2914
    :cond_15d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2915
    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2916
    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2917
    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 2918
    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 2921
    :cond_195
    iget-boolean v0, p0, mAnimationSkipRequested:Z

    if-eqz v0, :cond_1a7

    .line 2922
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimationSkipRequested="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mAnimationSkipRequested:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2925
    :cond_1a7
    return-void
.end method

.method finishDrawingLocked()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 621
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8d

    move v0, v1

    .line 624
    .local v0, "startingWindow":Z
    :goto_c
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing drawing window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": mDrawState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, drawStateToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget v3, p0, mDrawState:I

    if-ne v3, v1, :cond_90

    .line 628
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-nez v2, :cond_44

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v2, :cond_44

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_69

    .line 629
    :cond_44
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_69
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_89

    if-eqz v0, :cond_89

    .line 632
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw state now committed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_89
    const/4 v2, 0x2

    iput v2, p0, mDrawState:I

    .line 637
    :goto_8c
    return v1

    .end local v0    # "startingWindow":Z
    :cond_8d
    move v0, v2

    .line 621
    goto/16 :goto_c

    .restart local v0    # "startingWindow":Z
    :cond_90
    move v1, v2

    .line 637
    goto :goto_8c
.end method

.method finishExit()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 541
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v2, :cond_48

    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "finishExit in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": exiting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remove="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowAnimating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, isWindowAnimating()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_48
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 548
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_51
    if-ge v1, v0, :cond_65

    .line 549
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, finishExit()V

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 552
    :cond_65
    iget-boolean v2, p0, mEnteringAnimation:Z

    if-eqz v2, :cond_79

    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_79

    .line 554
    const/4 v2, 0x0

    :try_start_70
    iput-boolean v2, p0, mEnteringAnimation:Z

    .line 555
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_79} :catch_d5

    .line 560
    :cond_79
    :goto_79
    invoke-virtual {p0}, isWindowAnimating()Z

    move-result v2

    if-nez v2, :cond_94

    .line 570
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_94

    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_94

    .line 572
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 577
    :cond_94
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_9b

    .line 601
    :cond_9a
    :goto_9a
    return-void

    .line 581
    :cond_9b
    invoke-virtual {p0}, isWindowAnimating()Z

    move-result v2

    if-nez v2, :cond_9a

    .line 588
    iget-object v2, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b6

    .line 589
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 593
    invoke-virtual {p0}, hide()V

    .line 595
    :cond_b6
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    .line 596
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_cd

    .line 597
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 600
    :cond_cd
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_9a

    .line 556
    :catch_d5
    move-exception v2

    goto :goto_79
.end method

.method hasSecureSurface()Z
    .registers 2

    .prologue
    .line 3130
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, mSecure:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hide()V
    .registers 5

    .prologue
    .line 604
    iget-boolean v1, p0, mLastHidden:Z

    if-nez v1, :cond_13

    .line 606
    const/4 v1, 0x1

    iput-boolean v1, p0, mLastHidden:Z

    .line 609
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_13

    .line 610
    const/4 v1, 0x0

    iput-boolean v1, p0, mSurfaceShown:Z

    .line 612
    :try_start_e
    iget-object v1, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_14

    .line 618
    :cond_13
    :goto_13
    return-void

    .line 613
    :catch_14
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hiding surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public hideSurfaceBeofreScreenRotationAnimation(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 2939
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    .line 2940
    const/4 v0, 0x1

    iput-boolean v0, p0, mHiddenBeforeRotationAnimation:Z

    .line 2941
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 2943
    :cond_c
    return-void
.end method

.method isAnimating()Z
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1a

    iget-object v0, p0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1a

    :cond_e
    iget-object v0, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_1c

    iget-object v0, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method isDummyAnimation()Z
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isWindowAnimating()Z
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method performShowLocked()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 2569
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2570
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_38

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hiding "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", belonging to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_38
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 2663
    :cond_3d
    :goto_3d
    return v5

    .line 2574
    :cond_3e
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-nez v3, :cond_4e

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_10c

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v8, :cond_10c

    .line 2576
    :cond_4e
    const-string v6, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performShow on "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": mDrawState="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, drawStateToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " readyForDisplay="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " starting="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v8, :cond_217

    move v3, v4

    :goto_8d
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " during animation: policyVis="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " attHidden="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok.hiddenRequested="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_21a

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    :goto_bf
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok.hidden="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_21d

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    :goto_d5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " animating="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, mAnimating:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok animating="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_220

    iget-object v3, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    :goto_f3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " Callers="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_10c
    iget v3, p0, mDrawState:I

    if-ne v3, v8, :cond_3d

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2592
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_124

    .line 2593
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    const-string v6, "SHOW (performShowLocked)"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 2594
    :cond_124
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-nez v3, :cond_134

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_1b2

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v8, :cond_1b2

    .line 2596
    :cond_134
    const-string v6, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Showing "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " during animation: policyVis="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " attHidden="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok.hiddenRequested="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_223

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    :goto_173
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok.hidden="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_226

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    :goto_189
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " animating="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, mAnimating:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " tok animating="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_229

    iget-object v3, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    :goto_1a7
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :cond_1b2
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2610
    invoke-virtual {p0}, applyEnterAnimationLocked()V

    .line 2613
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, mLastAlpha:F

    .line 2614
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-nez v3, :cond_1c6

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_1df

    .line 2615
    :cond_1c6
    const-string v3, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performShowLocked: mDrawState=HAS_DRAWN in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_1df
    const/4 v3, 0x4

    iput v3, p0, mDrawState:I

    .line 2617
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2619
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 2620
    .local v2, "i":I
    :cond_1ef
    :goto_1ef
    if-lez v2, :cond_22c

    .line 2621
    add-int/lit8 v2, v2, -0x1

    .line 2622
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 2623
    .local v0, "c":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_1ef

    .line 2624
    iput-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 2625
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_1ef

    .line 2626
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, performShowLocked()Z

    .line 2632
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2633
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1ef

    .line 2634
    iput-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_1ef

    .end local v0    # "c":Lcom/android/server/wm/WindowState;
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "i":I
    :cond_217
    move v3, v5

    .line 2576
    goto/16 :goto_8d

    :cond_21a
    move v3, v5

    goto/16 :goto_bf

    :cond_21d
    move v3, v5

    goto/16 :goto_d5

    :cond_220
    move v3, v5

    goto/16 :goto_f3

    :cond_223
    move v3, v5

    .line 2596
    goto/16 :goto_173

    :cond_226
    move v3, v5

    goto/16 :goto_189

    :cond_229
    move v3, v5

    goto/16 :goto_1a7

    .line 2640
    .restart local v2    # "i":I
    :cond_22c
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v8, :cond_28f

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_28f

    .line 2642
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 2644
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_288

    .line 2645
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-nez v3, :cond_250

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_272

    .line 2646
    :cond_250
    const-string v3, "WindowStateAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finish starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": first real window is shown, no animation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :cond_272
    invoke-virtual {p0}, clearAnimation()V

    .line 2654
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2657
    :cond_288
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_28f
    move v5, v4

    .line 2660
    goto/16 :goto_3d
.end method

.method public prepareSurfaceLocked(Z)V
    .registers 14
    .param p1, "recoveringMemory"    # Z

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2291
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    .line 2292
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v6, :cond_51

    .line 2294
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    if-eqz v4, :cond_22

    .line 2295
    iget-object v4, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v4, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v4, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 2296
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_21

    .line 2297
    const-string v4, "WindowStateAnimator"

    const-string v5, "Orientation change skips hidden(mSurfaceControl is null && return mWaitingForOrientation(true)"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :cond_21
    :goto_21
    return-void

    .line 2302
    :cond_22
    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v4, :cond_21

    .line 2303
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_4e

    .line 2304
    const-string v4, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Orientation change skips hidden(mSurfaceControl is null) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mWaitingForOrientation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_4e
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_21

    .line 2311
    :cond_51
    const/4 v0, 0x0

    .line 2313
    .local v0, "displayed":Z
    invoke-virtual {p0}, computeShownFrameLocked()V

    .line 2315
    invoke-virtual {p0, p1}, setSurfaceBoundariesLocked(Z)V

    .line 2317
    iget-boolean v6, p0, mIsWallpaper:Z

    if-eqz v6, :cond_9e

    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v6, :cond_9e

    .line 2319
    invoke-virtual {p0}, hide()V

    .line 2429
    :cond_65
    :goto_65
    if-eqz v0, :cond_28d

    .line 2430
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v6, :cond_99

    .line 2431
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-nez v6, :cond_25e

    .line 2432
    iget-object v5, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 2433
    iget-object v5, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, v5, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 2434
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_99

    const-string v5, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Orientation continue waiting for draw in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_99
    :goto_99
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto :goto_21

    .line 2320
    :cond_9e
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v6, :cond_a8

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    if-nez v6, :cond_d6

    .line 2321
    :cond_a8
    invoke-virtual {p0}, hide()V

    .line 2322
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowManagerService;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    .line 2330
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v6, :cond_65

    .line 2331
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 2333
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    .line 2334
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_65

    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Orientation change skips hidden (hidden)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 2338
    :cond_d6
    iget v6, p0, mLastLayer:I

    iget v7, p0, mAnimLayer:I

    if-ne v6, v7, :cond_118

    iget v6, p0, mLastAlpha:F

    iget v7, p0, mShownAlpha:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_118

    iget v6, p0, mLastDsDx:F

    iget v7, p0, mDsDx:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_118

    iget v6, p0, mLastDtDx:F

    iget v7, p0, mDtDx:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_118

    iget v6, p0, mLastDsDy:F

    iget v7, p0, mDsDy:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_118

    iget v6, p0, mLastDtDy:F

    iget v7, p0, mDtDy:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_118

    iget v6, v3, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v7, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_118

    iget v6, v3, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v7, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_118

    iget-boolean v6, p0, mLastHidden:Z

    if-eqz v6, :cond_238

    .line 2347
    :cond_118
    const/4 v0, 0x1

    .line 2348
    iget v6, p0, mShownAlpha:F

    iput v6, p0, mLastAlpha:F

    .line 2349
    iget v6, p0, mAnimLayer:I

    iput v6, p0, mLastLayer:I

    .line 2350
    iget v6, p0, mDsDx:F

    iput v6, p0, mLastDsDx:F

    .line 2351
    iget v6, p0, mDtDx:F

    iput v6, p0, mLastDtDx:F

    .line 2352
    iget v6, p0, mDsDy:F

    iput v6, p0, mLastDsDy:F

    .line 2353
    iget v6, p0, mDtDy:F

    iput v6, p0, mLastDtDy:F

    .line 2354
    iget v6, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v6, v3, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 2355
    iget v6, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v6, v3, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 2362
    iget-object v6, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_65

    .line 2364
    :try_start_13d
    iget v6, p0, mShownAlpha:F

    iput v6, p0, mSurfaceAlpha:F

    .line 2365
    iget-object v6, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, mShownAlpha:F

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 2366
    iget v6, p0, mAnimLayer:I

    iput v6, p0, mSurfaceLayer:I

    .line 2367
    iget-object v6, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, mAnimLayer:I

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2369
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v6

    if-eqz v6, :cond_1f7

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_1f7

    move v2, v4

    .line 2371
    .local v2, "isCascadedSurfaceView":Z
    :goto_166
    if-eqz v2, :cond_1fa

    iget-boolean v6, p0, mSurfaceResized:Z

    if-nez v6, :cond_1fa

    iget v6, p0, mSurfaceH:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1fa

    iget v6, p0, mSurfaceW:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1fa

    .line 2372
    invoke-virtual {p0, v3}, setScaledMultiWindowMatrixLocked(Lcom/android/server/wm/WindowState;)V

    .line 2383
    :goto_17b
    invoke-virtual {p0}, updateFixedOrientationWindowInTransactionLocked()V

    .line 2387
    iget-boolean v6, p0, mLastHidden:Z

    if-eqz v6, :cond_1c7

    iget v6, p0, mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1c7

    .line 2390
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v6, :cond_1a9

    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " during relayout"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_1a9
    invoke-virtual {p0}, showSurfaceRobustlyLocked()Z

    move-result v6

    if-eqz v6, :cond_215

    .line 2393
    const/4 v6, 0x0

    iput-boolean v6, p0, mLastHidden:Z

    .line 2394
    iget-boolean v6, p0, mIsWallpaper:Z

    if-eqz v6, :cond_1bc

    .line 2395
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 2400
    :cond_1bc
    iget-object v6, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 2412
    :cond_1c7
    :goto_1c7
    iget-object v6, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_65

    .line 2413
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/WindowToken;->hasVisible:Z
    :try_end_1d0
    .catch Ljava/lang/RuntimeException; {:try_start_13d .. :try_end_1d0} :catch_1d2

    goto/16 :goto_65

    .line 2415
    .end local v2    # "isCascadedSurfaceView":Z
    :catch_1d2
    move-exception v1

    .line 2416
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error updating surface in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2417
    if-nez p1, :cond_65

    .line 2418
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v7, "update"

    invoke-virtual {v6, p0, v7, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_65

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_1f7
    move v2, v5

    .line 2369
    goto/16 :goto_166

    .line 2375
    .restart local v2    # "isCascadedSurfaceView":Z
    :cond_1fa
    :try_start_1fa
    iget-object v6, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, mDsDx:F

    iget v8, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    iget v8, p0, mDtDx:F

    iget v9, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v8, v9

    iget v9, p0, mDsDy:F

    iget v10, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget v10, p0, mDtDy:F

    iget v11, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_17b

    .line 2403
    :cond_215
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 2405
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    .line 2406
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_1c7

    .line 2407
    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Orientation change skips hidden (showSurfaceRobustlyLocked is failed)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_237
    .catch Ljava/lang/RuntimeException; {:try_start_1fa .. :try_end_237} :catch_1d2

    goto :goto_1c7

    .line 2423
    .end local v2    # "isCascadedSurfaceView":Z
    :cond_238
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v6, :cond_25b

    invoke-virtual {p0}, isAnimating()Z

    move-result v6

    if-eqz v6, :cond_25b

    .line 2424
    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareSurface: No changes in animation for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :cond_25b
    const/4 v0, 0x1

    goto/16 :goto_65

    .line 2437
    :cond_25e
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 2439
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    .line 2440
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_99

    const-string v5, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Orientation change complete in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mWaitingForOrientation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v3, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_99

    .line 2448
    :cond_28d
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    .line 2449
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_21

    const-string v4, "WindowStateAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Orientation change skips not display in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21
.end method

.method printWindowHasSurface()V
    .registers 9

    .prologue
    .line 3112
    const-string v5, "WindowStateAnimator"

    const-string/jumbo v6, "hasSurface window list"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3114
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_11
    if-ge v0, v1, :cond_88

    .line 3115
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 3116
    .local v4, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_27
    if-ltz v3, :cond_85

    .line 3117
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3118
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_5f

    .line 3119
    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    if-ne v2, v5, :cond_62

    .line 3120
    const-string v5, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(*)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_5f
    :goto_5f
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .line 3122
    :cond_62
    const-string v5, "WindowStateAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 3114
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 3127
    .end local v3    # "winNdx":I
    .end local v4    # "windowList":Lcom/android/server/wm/WindowList;
    :cond_88
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 309
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, setAnimation(Landroid/view/animation/Animation;J)V

    .line 310
    return-void
.end method

.method public setAnimation(Landroid/view/animation/Animation;J)V
    .registers 8
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "startTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, mAnimating:Z

    .line 297
    iput-boolean v0, p0, mLocalAnimating:Z

    .line 298
    iput-object p1, p0, mAnimation:Landroid/view/animation/Animation;

    .line 299
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 300
    iget-object v0, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 302
    iget-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 303
    iget-object v1, p0, mTransformation:Landroid/view/animation/Transformation;

    iget-boolean v0, p0, mLastHidden:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_25
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasLocalTransformation:Z

    .line 305
    iput-wide p2, p0, mAnimationStartTime:J

    .line 306
    return-void

    .line 303
    :cond_2e
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_25
.end method

.method setLayerStack(I)V
    .registers 2
    .param p1, "layerStack"    # I

    .prologue
    .line 195
    iput p1, p0, mLayerStack:I

    .line 196
    return-void
.end method

.method setOpaqueLocked(Z)V
    .registers 3
    .param p1, "isOpaque"    # Z

    .prologue
    .line 2530
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 2543
    :goto_4
    return-void

    .line 2534
    :cond_5
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2538
    :try_start_8
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 2540
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_4

    :catchall_11
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method setScaledMultiWindowCropAndAlpha(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 28
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 2031
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_18

    .line 2032
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2034
    :cond_18
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_30

    .line 2035
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2038
    :cond_30
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2039
    .local v5, "attachedWindowFrame":Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2040
    .local v17, "windowFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v9

    .line 2041
    .local v9, "isInside":Z
    if-nez v9, :cond_2e1

    .line 2042
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_417

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mHasMoved:Z

    move/from16 v20, v0

    if-eqz v20, :cond_417

    const/4 v6, 0x1

    .line 2043
    .local v6, "hasMoved":Z
    :goto_81
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v14

    .line 2045
    .local v14, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v14, :cond_41a

    invoke-virtual {v14}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_41a

    const/4 v11, 0x1

    .line 2047
    .local v11, "isScreenRotating":Z
    :goto_98
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_41d

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTargetTransit:I

    move/from16 v20, v0

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTargetTransit:I

    move/from16 v20, v0

    const/16 v21, 0x15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_41d

    :cond_c8
    const/4 v10, 0x1

    .line 2050
    .local v10, "isMultiWindowTransition":Z
    :goto_c9
    if-nez v6, :cond_2e1

    if-nez v11, :cond_2e1

    if-nez v10, :cond_2e1

    .line 2051
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2054
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2059
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v15

    .line 2060
    .local v15, "spec":Landroid/view/MagnificationSpec;
    if-eqz v15, :cond_2e1

    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v20

    if-nez v20, :cond_2e1

    .line 2061
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v23

    add-int v22, v22, v23

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2065
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v15, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    iget v0, v15, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v24, v0

    div-float v23, v23, v24

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2074
    .end local v6    # "hasMoved":Z
    .end local v10    # "isMultiWindowTransition":Z
    .end local v11    # "isScreenRotating":Z
    .end local v14    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v15    # "spec":Landroid/view/MagnificationSpec;
    :cond_2e1
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 2075
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 2076
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceW:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2077
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceH:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2079
    move-object/from16 v0, v17

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 2080
    .local v12, "offsetX":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 2082
    .local v13, "offsetY":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v20

    if-eqz v20, :cond_420

    const/4 v8, 0x0

    .line 2083
    .local v8, "hideScaledMultiWindow":Z
    :goto_380
    if-eqz v8, :cond_38a

    .line 2084
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mShownAlpha:F

    .line 2086
    :cond_38a
    neg-int v0, v12

    move/from16 v20, v0

    neg-int v0, v13

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2088
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2089
    .local v18, "x":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2090
    .local v19, "y":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2091
    .local v16, "width":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f000000    # 0.5f

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v7, v0

    .line 2092
    .local v7, "height":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2093
    sget-boolean v20, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-nez v20, :cond_423

    .line 2096
    :goto_416
    return-void

    .line 2042
    .end local v7    # "height":I
    .end local v8    # "hideScaledMultiWindow":Z
    .end local v12    # "offsetX":I
    .end local v13    # "offsetY":I
    .end local v16    # "width":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_417
    const/4 v6, 0x0

    goto/16 :goto_81

    .line 2045
    .restart local v6    # "hasMoved":Z
    .restart local v14    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_41a
    const/4 v11, 0x0

    goto/16 :goto_98

    .line 2047
    .restart local v11    # "isScreenRotating":Z
    :cond_41d
    const/4 v10, 0x0

    goto/16 :goto_c9

    .line 2082
    .end local v6    # "hasMoved":Z
    .end local v11    # "isScreenRotating":Z
    .end local v14    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v12    # "offsetX":I
    .restart local v13    # "offsetY":I
    :cond_420
    const/4 v8, 0x1

    goto/16 :goto_380

    .line 2094
    .restart local v7    # "height":I
    .restart local v8    # "hideScaledMultiWindow":Z
    .restart local v16    # "width":I
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_423
    const-string v20, "WindowStateAnimator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "w="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cropRect="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_416
.end method

.method setScaledMultiWindowMatrixLocked(Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2099
    iget v0, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2100
    .local v0, "tmpHScale":F
    iget v1, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2102
    .local v1, "tmpVScale":F
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 2103
    iget v2, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v3, p0, mSurfaceW:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, mSurfaceW:F

    div-float v0, v2, v3

    .line 2105
    :cond_29
    iget-object v2, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 2106
    iget v2, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    iget v3, p0, mSurfaceH:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, mSurfaceH:F

    div-float v1, v2, v3

    .line 2108
    :cond_4c
    iget-object v2, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, mDsDx:F

    mul-float/2addr v3, v0

    iget v4, p0, mDtDx:F

    mul-float/2addr v4, v1

    iget v5, p0, mDsDy:F

    mul-float/2addr v5, v1

    iget v6, p0, mDtDy:F

    mul-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 2111
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_MULTIWINDOW_SCALE:Z

    if-eqz v2, :cond_b3

    .line 2112
    const-string v2, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setScaledMultiWindowMatrixLocked] Adjust scale values for SurfaceFlinger, win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scale["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , adjusted scale["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_b3
    return-void
.end method

.method public setSecureLocked(Z)V
    .registers 3
    .param p1, "isSecure"    # Z

    .prologue
    .line 2547
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, mSecure:Z

    if-ne p1, v0, :cond_9

    .line 2564
    :cond_8
    :goto_8
    return-void

    .line 2550
    :cond_9
    if-nez p1, :cond_15

    iget-object v0, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_8

    .line 2554
    :cond_15
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2558
    :try_start_18
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 2559
    iput-boolean p1, p0, mSecure:Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_23

    .line 2561
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_8

    :catchall_23
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method setSurfaceBoundariesLocked(Z)V
    .registers 26
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    .line 2124
    .local v16, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-eqz v18, :cond_32c

    .line 2127
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v17, v0

    .line 2128
    .local v17, "width":I
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2136
    .local v7, "height":I
    :goto_24
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2e

    .line 2137
    const/16 v17, 0x1

    .line 2139
    :cond_2e
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_35

    .line 2140
    const/4 v7, 0x1

    .line 2145
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, mSurfaceW:F

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_51

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceH:F

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_82

    .line 2146
    :cond_51
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x10

    if-nez v18, :cond_7f

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_82

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_82

    .line 2148
    :cond_7f
    invoke-virtual/range {p0 .. p0}, computeShownFrameLocked()V

    .line 2153
    :cond_82
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/RectF;->left:F

    .line 2154
    .local v9, "left":F
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/RectF;->top:F

    .line 2157
    .local v15, "top":F
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2158
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    .line 2159
    .local v5, "displayId":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 2161
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_ce

    if-nez v5, :cond_ce

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v11

    .line 2164
    .local v11, "spec":Landroid/view/MagnificationSpec;
    if-eqz v11, :cond_ce

    invoke-virtual {v11}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v18

    if-nez v18, :cond_ce

    .line 2165
    iget v10, v11, Landroid/view/MagnificationSpec;->scale:F

    .line 2170
    .end local v11    # "spec":Landroid/view/MagnificationSpec;
    :cond_ce
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2172
    invoke-direct/range {p0 .. p0}, adjustSurfaceInsetForReduceScreen()V

    .line 2176
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2177
    int-to-float v0, v7

    move/from16 v18, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v10

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 2179
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v18

    if-eqz v18, :cond_342

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v19, v0

    div-float v18, v18, v19

    sub-float v9, v9, v18

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v19, v0

    div-float v18, v18, v19

    sub-float v15, v15, v18

    .line 2199
    :goto_17c
    move-object/from16 v0, p0

    iget-boolean v0, v0, mMovedTransparentRegion:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1c6

    .line 2200
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mMovedTransparentRegion:Z

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTransparentRegionOffset:Landroid/graphics/Point;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTransparentRegionOffset:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Region;->translate(II)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 2208
    :cond_1c6
    move-object/from16 v0, p0

    iget v0, v0, mSurfaceX:F

    move/from16 v18, v0

    cmpl-float v18, v18, v9

    if-nez v18, :cond_1da

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceY:F

    move/from16 v18, v0

    cmpl-float v18, v18, v15

    if-eqz v18, :cond_36e

    :cond_1da
    const/4 v13, 0x1

    .line 2209
    .local v13, "surfaceMoved":Z
    :goto_1db
    if-eqz v13, :cond_21f

    .line 2210
    move-object/from16 v0, p0

    iput v9, v0, mSurfaceX:F

    .line 2211
    move-object/from16 v0, p0

    iput v15, v0, mSurfaceY:F

    .line 2217
    :try_start_1e5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v18, v0

    const/high16 v19, 0x1000000

    and-int v18, v18, v19

    if-eqz v18, :cond_371

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceX:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceY:F

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 2225
    :goto_21c
    invoke-virtual/range {p0 .. p0}, updateFixedOrientationWindowInTransactionLocked()V
    :try_end_21f
    .catch Ljava/lang/RuntimeException; {:try_start_1e5 .. :try_end_21f} :catch_388

    .line 2237
    :cond_21f
    :goto_21f
    move-object/from16 v0, p0

    iget v0, v0, mSurfaceW:F

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-nez v18, :cond_23b

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceH:F

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_3e1

    :cond_23b
    const/4 v14, 0x1

    .line 2238
    .local v14, "surfaceResized":Z
    :goto_23c
    if-eqz v14, :cond_328

    .line 2239
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mSurfaceW:F

    .line 2240
    int-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mSurfaceH:F

    .line 2241
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSurfaceResized:Z

    .line 2246
    :try_start_25a
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 2248
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v18

    if-eqz v18, :cond_3e4

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x4000

    move/from16 v18, v0

    if-eqz v18, :cond_3e4

    const/4 v8, 0x1

    .line 2250
    .local v8, "isCascadedSurfaceView":Z
    :goto_286
    if-eqz v8, :cond_2a7

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceH:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2a7

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceW:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2a7

    .line 2251
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, setScaledMultiWindowMatrixLocked(Lcom/android/server/wm/WindowState;)V

    .line 2254
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mDsDx:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, mDtDx:F

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, mDsDy:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, mDtDy:F

    move/from16 v22, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    invoke-virtual/range {v18 .. v22}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v19

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 2259
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_328

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v18

    if-eqz v18, :cond_328

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-nez v18, :cond_328

    .line 2264
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v12

    .line 2265
    .local v12, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v12, :cond_328

    .line 2266
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/server/wm/TaskStack;->startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    :try_end_328
    .catch Ljava/lang/RuntimeException; {:try_start_25a .. :try_end_328} :catch_3e7

    .line 2287
    .end local v8    # "isCascadedSurfaceView":Z
    .end local v12    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_328
    :goto_328
    invoke-virtual/range {p0 .. p1}, updateSurfaceWindowCrop(Z)V

    .line 2288
    return-void

    .line 2130
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "displayId":I
    .end local v7    # "height":I
    .end local v9    # "left":F
    .end local v10    # "scale":F
    .end local v13    # "surfaceMoved":Z
    .end local v14    # "surfaceResized":Z
    .end local v15    # "top":F
    .end local v17    # "width":I
    :cond_32c
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 2131
    .restart local v17    # "width":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v7

    .restart local v7    # "height":I
    goto/16 :goto_24

    .line 2192
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "displayId":I
    .restart local v9    # "left":F
    .restart local v10    # "scale":F
    .restart local v15    # "top":F
    :cond_342
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    sub-float v9, v9, v18

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceInsetRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    sub-float v15, v15, v18

    goto/16 :goto_17c

    .line 2208
    :cond_36e
    const/4 v13, 0x0

    goto/16 :goto_1db

    .line 2220
    .restart local v13    # "surfaceMoved":Z
    :cond_371
    :try_start_371
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceY:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_386
    .catch Ljava/lang/RuntimeException; {:try_start_371 .. :try_end_386} :catch_388

    goto/16 :goto_21c

    .line 2228
    :catch_388
    move-exception v6

    .line 2229
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v18, "WindowStateAnimator"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error positioning surface of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pos=("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2231
    if-nez p1, :cond_21f

    .line 2232
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "position"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_21f

    .line 2237
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_3e1
    const/4 v14, 0x0

    goto/16 :goto_23c

    .line 2248
    .restart local v14    # "surfaceResized":Z
    :cond_3e4
    const/4 v8, 0x0

    goto/16 :goto_286

    .line 2269
    :catch_3e7
    move-exception v6

    .line 2273
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    const-string v18, "WindowStateAnimator"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error resizing surface of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " size=("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2275
    if-nez p1, :cond_328

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const-string/jumbo v19, "size"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_328
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 2455
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    .line 2456
    const-string v0, "WindowStateAnimator"

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :goto_c
    return-void

    .line 2460
    :cond_d
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2464
    :try_start_10
    iget-object v0, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 2466
    iput-object p1, p0, mTransparentRegion:Landroid/graphics/Region;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 2469
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_c

    :catchall_1b
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method setWallpaperOffset(Landroid/graphics/RectF;)V
    .registers 9
    .param p1, "shownFrame"    # Landroid/graphics/RectF;

    .prologue
    .line 2476
    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2477
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v4, p1, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v4, v5

    .line 2478
    .local v2, "left":I
    iget v4, p1, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 2479
    .local v3, "top":I
    iget v4, p0, mSurfaceX:F

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_26

    iget v4, p0, mSurfaceY:F

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2a

    .line 2480
    :cond_26
    iget-boolean v4, p0, mAnimating:Z

    if-eqz v4, :cond_2b

    .line 2505
    :cond_2a
    :goto_2a
    return-void

    .line 2487
    :cond_2b
    int-to-float v4, v2

    iput v4, p0, mSurfaceX:F

    .line 2488
    int-to-float v4, v3

    iput v4, p0, mSurfaceY:F

    .line 2490
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2494
    :try_start_34
    iget-object v4, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 2495
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, updateSurfaceWindowCrop(Z)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_4d} :catch_51
    .catchall {:try_start_34 .. :try_end_4d} :catchall_8a

    .line 2500
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_2a

    .line 2496
    :catch_51
    move-exception v1

    .line 2497
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_52
    const-string v4, "WindowStateAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pos=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_52 .. :try_end_86} :catchall_8a

    .line 2500
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_2a

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_8a
    move-exception v4

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v4
.end method

.method showSurfaceRobustlyLocked()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2676
    :try_start_2
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_49

    .line 2677
    const/4 v3, 0x1

    iput-boolean v3, p0, mSurfaceShown:Z

    .line 2678
    iget-object v3, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->show()V

    .line 2679
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v3, :cond_49

    .line 2680
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_32

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show surface turning screen on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_32
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 2683
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    .line 2684
    iget-object v3, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_49} :catch_4a

    .line 2694
    :cond_49
    :goto_49
    return v1

    .line 2688
    :catch_4a
    move-exception v0

    .line 2689
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2692
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "show"

    invoke-virtual {v3, p0, v4, v1}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move v1, v2

    .line 2694
    goto :goto_49
.end method

.method stepAnimationLocked(J)Z
    .registers 16
    .param p1, "currentTime"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 364
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 365
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_329

    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_329

    .line 368
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-eqz v3, :cond_132

    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_132

    .line 369
    iput-boolean v7, p0, mHasTransformation:Z

    .line 370
    iput-boolean v7, p0, mHasLocalTransformation:Z

    .line 371
    iget-boolean v3, p0, mLocalAnimating:Z

    if-nez v3, :cond_de

    .line 372
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_a0

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": ww="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mAnimDw:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mAnimDh:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_a0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 379
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-boolean v3, p0, mAnimateMove:Z

    if-eqz v3, :cond_f0

    .line 380
    iput-boolean v6, p0, mAnimateMove:Z

    .line 381
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v8, p0, mAnimDw:I

    iget v9, p0, mAnimDh:I

    invoke-virtual {v3, v4, v5, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 387
    :goto_c3
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p0, mAnimDw:I

    .line 388
    iget v3, v2, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p0, mAnimDh:I

    .line 389
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    iget-wide v4, p0, mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_10a

    iget-wide v4, p0, mAnimationStartTime:J

    :goto_d7
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 392
    iput-boolean v7, p0, mLocalAnimating:Z

    .line 393
    iput-boolean v7, p0, mAnimating:Z

    .line 395
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_de
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_10c

    iget-boolean v3, p0, mLocalAnimating:Z

    if-eqz v3, :cond_10c

    .line 396
    iput-wide p1, p0, mLastAnimationTime:J

    .line 397
    invoke-direct {p0, p1, p2}, stepAnimation(J)Z

    move-result v3

    if-eqz v3, :cond_10c

    move v6, v7

    .line 537
    :cond_ef
    :goto_ef
    return v6

    .line 384
    .restart local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_f0
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v8, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v9, v2, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v3, v4, v5, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_c3

    :cond_10a
    move-wide v4, p1

    .line 389
    goto :goto_d7

    .line 401
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_10c
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_132

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished animation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_132
    iput-boolean v6, p0, mHasLocalTransformation:Z

    .line 407
    iget-boolean v3, p0, mLocalAnimating:Z

    if-eqz v3, :cond_13c

    iget-boolean v3, p0, mAnimationIsEntrance:Z

    if-eqz v3, :cond_150

    :cond_13c
    iget-object v3, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_150

    iget-object v3, p0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_150

    .line 416
    iput-boolean v7, p0, mAnimating:Z

    .line 417
    iput-boolean v7, p0, mHasTransformation:Z

    .line 418
    iget-object v3, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_ef

    .line 420
    :cond_150
    iget-boolean v3, p0, mHasTransformation:Z

    if-eqz v3, :cond_31f

    .line 423
    iput-boolean v7, p0, mAnimating:Z

    .line 433
    :cond_156
    :goto_156
    iget-boolean v3, p0, mAnimating:Z

    if-nez v3, :cond_15e

    iget-boolean v3, p0, mLocalAnimating:Z

    if-eqz v3, :cond_ef

    .line 438
    :cond_15e
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v3, :cond_19e

    const-string v4, "WindowStateAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Animation done in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": exiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", reportedVisible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_331

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    :goto_193
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_19e
    iput-boolean v6, p0, mAnimating:Z

    .line 444
    iput-boolean v6, p0, mKeyguardGoingAwayAnimation:Z

    .line 445
    iput-boolean v6, p0, mAnimatingMove:Z

    .line 446
    iput-boolean v6, p0, mLocalAnimating:Z

    .line 447
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1b1

    .line 448
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 449
    iput-object v11, p0, mAnimation:Landroid/view/animation/Animation;

    .line 462
    :cond_1b1
    iget-object v3, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_1bd

    .line 463
    iget-object v3, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v11, v3, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 466
    :cond_1bd
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v3, p0, mAnimLayer:I

    .line 467
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v10, :cond_1dc

    .line 468
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1dc

    .line 469
    iget v3, p0, mAnimLayer:I

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v4, v4, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    add-int/2addr v3, v4

    iput v3, p0, mAnimLayer:I

    .line 472
    :cond_1dc
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v3, :cond_334

    .line 473
    iget v3, p0, mAnimLayer:I

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v3, v4

    iput v3, p0, mAnimLayer:I

    .line 484
    :cond_1eb
    :goto_1eb
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYERS:Z

    if-eqz v3, :cond_213

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepping win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anim layer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_213
    iput-boolean v6, p0, mHasTransformation:Z

    .line 487
    iput-boolean v6, p0, mHasLocalTransformation:Z

    .line 488
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v3, v4, :cond_27a

    .line 489
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_24b

    .line 490
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy visibility changing after anim in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_24b
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 494
    if-eqz v0, :cond_257

    .line 495
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 497
    :cond_257
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v3, :cond_27a

    .line 498
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_275

    .line 499
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_271

    const-string v3, "WindowStateAnimator"

    const-string/jumbo v4, "setAnimationLocked: setting mFocusMayChange true"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_271
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v7, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 506
    :cond_275
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 509
    :cond_27a
    iget-object v3, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 510
    iget v3, p0, mDrawState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_343

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v10, :cond_343

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_343

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_343

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_343

    .line 515
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_2c8

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": first real window done animating"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2c8
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v4, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 527
    :cond_2db
    :goto_2db
    invoke-virtual {p0}, finishExit()V

    .line 528
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 529
    .local v1, "displayId":I
    iget-object v3, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 530
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "d["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] WindowStateAnimator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 533
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_ef

    .line 534
    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    goto/16 :goto_ef

    .line 424
    .end local v1    # "displayId":I
    :cond_31f
    invoke-virtual {p0}, isAnimating()Z

    move-result v3

    if-eqz v3, :cond_156

    .line 425
    iput-boolean v7, p0, mAnimating:Z

    goto/16 :goto_156

    .line 427
    :cond_329
    iget-object v3, p0, mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_156

    .line 430
    iput-boolean v7, p0, mAnimating:Z

    goto/16 :goto_156

    :cond_331
    move v3, v6

    .line 438
    goto/16 :goto_193

    .line 474
    :cond_334
    iget-boolean v3, p0, mIsWallpaper:Z

    if-eqz v3, :cond_1eb

    .line 481
    iget v3, p0, mAnimLayer:I

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v3, v4

    iput v3, p0, mAnimLayer:I

    goto/16 :goto_1eb

    .line 519
    :cond_343
    iget v3, p0, mAttrType:I

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_2db

    iget-object v3, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_2db

    .line 522
    if-eqz v0, :cond_2db

    .line 523
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_2db
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2929
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2930
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2931
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2932
    iget-object v1, p0, mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 2933
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2934
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2515
    iget-object v5, p0, mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v5, :cond_7

    .line 2526
    :cond_6
    :goto_6
    return v3

    .line 2518
    :cond_7
    iget-object v5, p0, mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2519
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2a

    move v2, v4

    .line 2521
    .local v2, "isHwAccelerated":Z
    :goto_15
    if-eqz v2, :cond_2c

    const/4 v1, -0x3

    .line 2522
    .local v1, "format":I
    :goto_18
    iget v5, p0, mSurfaceFormat:I

    if-ne v1, v5, :cond_6

    .line 2523
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v5}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v5

    if-nez v5, :cond_25

    move v3, v4

    :cond_25
    invoke-virtual {p0, v3}, setOpaqueLocked(Z)V

    move v3, v4

    .line 2524
    goto :goto_6

    .end local v1    # "format":I
    .end local v2    # "isHwAccelerated":Z
    :cond_2a
    move v2, v3

    .line 2519
    goto :goto_15

    .line 2521
    .restart local v2    # "isHwAccelerated":Z
    :cond_2c
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_18
.end method

.method public updateFixedOrientationWindowInTransactionLocked()V
    .registers 27

    .prologue
    .line 2946
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0xc

    .line 2948
    .local v11, "fixedOrientationFlag":I
    if-eqz v11, :cond_328

    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_328

    .line 2949
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasLocalTransformation:Z

    move/from16 v17, v0

    .line 2950
    .local v17, "selfTransformation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_329

    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, mHasLocalTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_329

    move-object/from16 v0, p0

    iget-object v0, v0, mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v6, v0, mTransformation:Landroid/view/animation/Transformation;

    .line 2953
    .local v6, "attachedTransformation":Landroid/view/animation/Transformation;
    :goto_44
    move-object/from16 v0, p0

    iget-object v0, v0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_32c

    move-object/from16 v0, p0

    iget-object v0, v0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v21, v0

    if-eqz v21, :cond_32c

    move-object/from16 v0, p0

    iget-object v0, v0, mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 2955
    .local v4, "appTransformation":Landroid/view/animation/Transformation;
    :goto_64
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 2956
    .local v14, "matrix":Landroid/graphics/Matrix;
    const/4 v9, 0x0

    .line 2957
    .local v9, "deltaRot":I
    const/4 v5, 0x0

    .local v5, "appWidth":I
    const/4 v3, 0x0

    .line 2958
    .local v3, "appHeight":I
    const/16 v16, 0x0

    .local v16, "screenWidth":I
    const/4 v15, 0x0

    .line 2959
    .local v15, "screenHeight":I
    const/4 v7, 0x0

    .line 2960
    .local v7, "baseRotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 2961
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_32f

    const/4 v12, 0x1

    .line 2963
    .local v12, "isPort":Z
    :goto_8f
    iget v0, v10, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v16, v0

    .line 2964
    iget v15, v10, Landroid/view/DisplayInfo;->appHeight:I

    .line 2966
    const/4 v8, 0x0

    .line 2967
    .local v8, "cocktailBarLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    if-eqz v21, :cond_332

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    .line 2970
    .local v20, "ws":Lcom/android/server/wm/WindowState;
    :goto_b0
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_ea

    .line 2971
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v21, v0

    const/high16 v22, 0x20000000

    and-int v21, v21, v22

    if-eqz v21, :cond_ea

    .line 2972
    iget v0, v10, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v16, v0

    .line 2973
    iget v15, v10, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    .line 2974
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v21

    if-eqz v21, :cond_ea

    .line 2975
    if-eqz v12, :cond_33a

    .line 2976
    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->alphaScreenAppWidth:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    .line 2986
    :cond_ea
    :goto_ea
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v11, v0, :cond_363

    .line 2987
    if-eqz v12, :cond_346

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    if-eqz v21, :cond_104

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_346

    .line 2988
    :cond_104
    const/4 v7, 0x1

    .line 2992
    :cond_105
    :goto_105
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2993
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3003
    :cond_111
    :goto_111
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v9

    .line 3005
    packed-switch v9, :pswitch_data_4d6

    .line 3024
    :goto_126
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-eqz v21, :cond_1cb

    .line 3025
    const/16 v19, 0x0

    .line 3026
    .local v19, "titlebarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-eqz v21, :cond_179

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    if-eqz v21, :cond_179

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10502ab

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 3028
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 3030
    :cond_179
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3034
    .end local v19    # "titlebarHeight":I
    :cond_1cb
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1e9

    .line 3035
    if-eqz v6, :cond_1de

    .line 3036
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3038
    :cond_1de
    if-eqz v4, :cond_1e9

    .line 3039
    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3044
    :cond_1e9
    const/16 v18, 0x0

    .line 3052
    .local v18, "spec":Landroid/view/MagnificationSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    if-eqz v21, :cond_21b

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_21b

    .line 3053
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v18

    .line 3057
    :cond_21b
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_239

    if-eqz v18, :cond_22f

    invoke-virtual/range {v18 .. v18}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v21

    if-eqz v21, :cond_239

    .line 3058
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v18

    .line 3063
    :cond_239
    if-eqz v18, :cond_295

    invoke-virtual/range {v18 .. v18}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v21

    if-nez v21, :cond_295

    .line 3064
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3066
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_4c0

    .line 3067
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3074
    :cond_295
    :goto_295
    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v13, v0, [F

    .line 3075
    .local v13, "mTmpFloats":[F
    invoke-virtual {v14, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v21

    if-nez v21, :cond_2fe

    .line 3078
    const/16 v21, 0x0

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    .line 3079
    const/16 v21, 0x4

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    .line 3080
    const/16 v21, 0x3

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    .line 3081
    const/16 v21, 0x1

    aget v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    aput v22, v13, v21

    .line 3084
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v22, v13, v22

    const/16 v23, 0x5

    aget v23, v13, v23

    invoke-virtual/range {v21 .. v23}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v22, v13, v22

    const/16 v23, 0x3

    aget v23, v13, v23

    const/16 v24, 0x1

    aget v24, v13, v24

    const/16 v25, 0x4

    aget v25, v13, v25

    invoke-virtual/range {v21 .. v25}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 3090
    .end local v3    # "appHeight":I
    .end local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .end local v5    # "appWidth":I
    .end local v6    # "attachedTransformation":Landroid/view/animation/Transformation;
    .end local v7    # "baseRotation":I
    .end local v8    # "cocktailBarLength":I
    .end local v9    # "deltaRot":I
    .end local v10    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v12    # "isPort":Z
    .end local v13    # "mTmpFloats":[F
    .end local v14    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "screenHeight":I
    .end local v16    # "screenWidth":I
    .end local v17    # "selfTransformation":Z
    .end local v18    # "spec":Landroid/view/MagnificationSpec;
    .end local v20    # "ws":Lcom/android/server/wm/WindowState;
    :cond_328
    return-void

    .line 2950
    .restart local v17    # "selfTransformation":Z
    :cond_329
    const/4 v6, 0x0

    goto/16 :goto_44

    .line 2953
    .restart local v6    # "attachedTransformation":Landroid/view/animation/Transformation;
    :cond_32c
    const/4 v4, 0x0

    goto/16 :goto_64

    .line 2961
    .restart local v3    # "appHeight":I
    .restart local v4    # "appTransformation":Landroid/view/animation/Transformation;
    .restart local v5    # "appWidth":I
    .restart local v7    # "baseRotation":I
    .restart local v9    # "deltaRot":I
    .restart local v10    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v14    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "screenHeight":I
    .restart local v16    # "screenWidth":I
    :cond_32f
    const/4 v12, 0x0

    goto/16 :goto_8f

    .line 2967
    .restart local v8    # "cocktailBarLength":I
    .restart local v12    # "isPort":Z
    :cond_332
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    goto/16 :goto_b0

    .line 2978
    .restart local v20    # "ws":Lcom/android/server/wm/WindowState;
    :cond_33a
    iget v0, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->alphaScreenAppHeight:I

    move/from16 v22, v0

    sub-int v8, v21, v22

    goto/16 :goto_ea

    .line 2989
    :cond_346
    if-nez v12, :cond_105

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_360

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_105

    .line 2990
    :cond_360
    const/4 v7, 0x1

    goto/16 :goto_105

    .line 2994
    :cond_363
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v11, v0, :cond_111

    .line 2995
    if-eqz v12, :cond_392

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_383

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_392

    .line 2996
    :cond_383
    const/4 v7, 0x1

    .line 3000
    :cond_384
    :goto_384
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3001
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_111

    .line 2997
    :cond_392
    if-nez v12, :cond_384

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    if-eqz v21, :cond_3a6

    iget v0, v10, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_384

    .line 2998
    :cond_3a6
    const/4 v7, 0x1

    goto :goto_384

    .line 3007
    :pswitch_3a8
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_126

    .line 3011
    :pswitch_3e4
    const/high16 v21, 0x42b40000    # 90.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v21, v0

    sub-int v21, v3, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_126

    .line 3015
    :pswitch_42c
    const/high16 v21, 0x43340000    # 180.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3016
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v21, v0

    sub-int v21, v5, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v22, v0

    sub-int v22, v3, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_126

    .line 3019
    :pswitch_476
    const/high16 v21, 0x43870000    # 270.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v21, v0

    add-int v21, v21, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v22, v0

    sub-int v22, v5, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_126

    .line 3069
    .restart local v18    # "spec":Landroid/view/MagnificationSpec;
    :cond_4c0
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_295

    .line 3005
    nop

    :pswitch_data_4d6
    .packed-switch 0x0
        :pswitch_3a8
        :pswitch_3e4
        :pswitch_42c
        :pswitch_476
    .end packed-switch
.end method

.method updateSurfaceWindowCrop(Z)V
    .registers 27
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    .line 1841
    .local v18, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    .line 1842
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v9, :cond_d

    .line 2026
    :cond_c
    :goto_c
    return-void

    .line 1845
    :cond_d
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 1848
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    if-eqz v19, :cond_198

    .line 1851
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    .line 1887
    :goto_3e
    iget v0, v10, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v19, v0

    iget v0, v10, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v12

    .line 1888
    .local v12, "fullscreen":Z
    move-object/from16 v0, p0

    iget-object v6, v0, mTmpClipRect:Landroid/graphics/Rect;

    .line 1891
    .local v6, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasClipRect:Z

    move/from16 v19, v0

    if-eqz v19, :cond_31b

    if-nez v12, :cond_31b

    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    :goto_5e
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1894
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v19

    if-eqz v19, :cond_328

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v19, v0

    if-eqz v19, :cond_323

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_323

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-eqz v19, :cond_323

    .line 1897
    new-instance v5, Landroid/graphics/Region;

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    .line 1898
    .local v5, "clipBound":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v0, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d4

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1900
    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1959
    .end local v5    # "clipBound":Landroid/graphics/Region;
    :cond_d4
    :goto_d4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v19, v0

    if-eqz v19, :cond_508

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    if-eqz v19, :cond_508

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    if-eqz v19, :cond_508

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0xc

    if-nez v19, :cond_508

    .line 1963
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    .line 1964
    .local v13, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v13, :cond_129

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v19

    if-nez v19, :cond_129

    .line 1965
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1966
    .local v7, "crop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, setScaledMultiWindowCropAndAlpha(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1967
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2012
    .end local v7    # "crop":Landroid/graphics/Rect;
    .end local v13    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_129
    :goto_129
    move-object/from16 v0, p0

    iget-object v0, v0, mLastClipRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, mLastClipRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2017
    :try_start_142
    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_14d
    .catch Ljava/lang/RuntimeException; {:try_start_142 .. :try_end_14d} :catch_14f

    goto/16 :goto_c

    .line 2018
    :catch_14f
    move-exception v11

    .line 2019
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v19, "WindowStateAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error setting crop surface of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " crop="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2021
    if-nez p1, :cond_c

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "crop"

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_c

    .line 1852
    .end local v6    # "clipRect":Landroid/graphics/Rect;
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "fullscreen":Z
    :cond_198
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v19

    if-nez v19, :cond_210

    .line 1855
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    .line 1856
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    iget v0, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    iget v0, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto/16 :goto_3e

    .line 1859
    :cond_210
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_259

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    move/from16 v19, v0

    if-eqz v19, :cond_259

    .line 1862
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3e

    .line 1863
    :cond_259
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_288

    .line 1865
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3e

    .line 1866
    :cond_288
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7dd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d7

    move-object/from16 v0, p0

    iget-object v0, v0, mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2d7

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, mTmpClipRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1870
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, applyDecorRect(Landroid/graphics/Rect;)V

    .line 1871
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpClipRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_3e

    .line 1876
    :cond_2d7
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v19

    if-eqz v19, :cond_30c

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    move/from16 v19, v0

    if-eqz v19, :cond_30c

    .line 1877
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3e

    .line 1879
    :cond_30c
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_3e

    .line 1891
    .restart local v6    # "clipRect":Landroid/graphics/Rect;
    .restart local v12    # "fullscreen":Z
    :cond_31b
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    goto/16 :goto_5e

    .line 1903
    :cond_323
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_d4

    .line 1905
    :cond_328
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_364

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x834

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_364

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7d5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_369

    .line 1908
    :cond_364
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_d4

    .line 1913
    :cond_369
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1917
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v19

    if-eqz v19, :cond_402

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_402

    .line 1919
    new-instance v16, Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1920
    .local v16, "stackBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v19

    if-nez v19, :cond_402

    .line 1921
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v19

    if-eqz v19, :cond_484

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/TaskStack;->getTopVisibleWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v17

    .line 1922
    .local v17, "topVisibleWindowToken":Lcom/android/server/wm/AppWindowToken;
    :goto_3b6
    if-eqz v17, :cond_402

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_402

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_402

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v14

    .line 1924
    .local v14, "rotation":I
    if-eqz v14, :cond_3dc

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v14, v0, :cond_4b4

    .line 1925
    :cond_3dc
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_488

    .line 1926
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1940
    .end local v14    # "rotation":I
    .end local v16    # "stackBounds":Landroid/graphics/Rect;
    .end local v17    # "topVisibleWindowToken":Lcom/android/server/wm/AppWindowToken;
    :cond_402
    :goto_402
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 1941
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 1942
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 1943
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 1945
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasClipRect:Z

    move/from16 v19, v0

    if-eqz v19, :cond_467

    if-eqz v12, :cond_467

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, mClipRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1954
    :cond_467
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_d4

    .line 1921
    .restart local v16    # "stackBounds":Landroid/graphics/Rect;
    :cond_484
    const/16 v17, 0x0

    goto/16 :goto_3b6

    .line 1927
    .restart local v14    # "rotation":I
    .restart local v17    # "topVisibleWindowToken":Lcom/android/server/wm/AppWindowToken;
    :cond_488
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_402

    .line 1928
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v20

    sub-int v19, v19, v20

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_402

    .line 1930
    :cond_4b4
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4dc

    .line 1931
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    goto/16 :goto_402

    .line 1932
    :cond_4dc
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_402

    .line 1933
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v20

    sub-int v19, v19, v20

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_402

    .line 1969
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "rotation":I
    .end local v16    # "stackBounds":Landroid/graphics/Rect;
    .end local v17    # "topVisibleWindowToken":Lcom/android/server/wm/AppWindowToken;
    :cond_508
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsRecentsMultiWindowRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_129

    .line 1972
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v13

    .line 1973
    .restart local v13    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceY:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceW:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceH:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1977
    .local v8, "cropFrame":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "cropFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, mSurfaceX:F

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceY:F

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceX:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceW:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceY:F

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, mSurfaceH:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1981
    .restart local v8    # "cropFrame":Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1983
    .restart local v16    # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_694

    .line 1986
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v15

    .line 1987
    .local v15, "spec":Landroid/view/MagnificationSpec;
    if-eqz v15, :cond_625

    invoke-virtual {v15}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v19

    if-nez v19, :cond_625

    .line 1988
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_60b

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 1989
    :cond_60b
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_625

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 1993
    :cond_625
    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_63f

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 1994
    :cond_63f
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_659

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 2002
    .end local v15    # "spec":Landroid/view/MagnificationSpec;
    :cond_659
    :goto_659
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_671

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_684

    .line 2003
    :cond_671
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2006
    :cond_684
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2007
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_129

    .line 1995
    :cond_694
    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_659

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v19

    if-nez v19, :cond_659

    .line 1998
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_659

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->top:I

    goto :goto_659
.end method
