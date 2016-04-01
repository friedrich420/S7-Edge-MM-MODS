.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final ABSORB_START_ALPHA:F = 0.11f

.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.4f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDuration:F

.field private mEdgeControlPointHeight:F

.field private mEdgePadding:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private final mTabHeight:F

.field private final mTabHeightBuffer:F

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, SIN:F

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v4, p0, mState:I

    .line 112
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mBounds:Landroid/graphics/Rect;

    .line 113
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mPaint:Landroid/graphics/Paint;

    .line 114
    iput v3, p0, mDisplacement:F

    .line 115
    iput v3, p0, mTargetDisplacement:F

    .line 123
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, mPath:Landroid/graphics/Path;

    .line 138
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, -0x99999a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 143
    .local v1, "themeColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 147
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 149
    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-direct {p0, v2}, dipToPixels(F)F

    move-result v2

    iput v2, p0, mTabHeight:F

    .line 150
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {p0, v2}, dipToPixels(F)F

    move-result v2

    iput v2, p0, mTabHeightBuffer:F

    .line 151
    return-void
.end method

.method private dipToPixels(F)F
    .registers 4
    .param p1, "dipValue"    # F

    .prologue
    .line 154
    const/4 v0, 0x1

    iget-object v1, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private update()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 410
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 411
    .local v2, "time":J
    iget-wide v4, p0, mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, mDuration:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 413
    .local v1, "t":F
    iget-object v4, p0, mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 415
    .local v0, "interp":F
    iget v4, p0, mGlowAlphaStart:F

    iget v5, p0, mGlowAlphaFinish:F

    iget v6, p0, mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, mGlowAlpha:F

    .line 416
    iget v4, p0, mGlowScaleYStart:F

    iget v5, p0, mGlowScaleYFinish:F

    iget v6, p0, mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, mGlowScaleY:F

    .line 417
    iget v4, p0, mDisplacement:F

    iget v5, p0, mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, mDisplacement:F

    .line 419
    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_46

    .line 420
    iget v4, p0, mState:I

    packed-switch v4, :pswitch_data_82

    .line 453
    :cond_46
    :goto_46
    return-void

    .line 422
    :pswitch_47
    iput v8, p0, mState:I

    .line 423
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, mStartTime:J

    .line 424
    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, mDuration:F

    .line 426
    iget v4, p0, mGlowAlpha:F

    iput v4, p0, mGlowAlphaStart:F

    .line 427
    iget v4, p0, mGlowScaleY:F

    iput v4, p0, mGlowScaleYStart:F

    .line 430
    iput v7, p0, mGlowAlphaFinish:F

    .line 431
    iput v7, p0, mGlowScaleYFinish:F

    goto :goto_46

    .line 434
    :pswitch_60
    const/4 v4, 0x4

    iput v4, p0, mState:I

    .line 435
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, mStartTime:J

    .line 436
    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, mDuration:F

    .line 438
    iget v4, p0, mGlowAlpha:F

    iput v4, p0, mGlowAlphaStart:F

    .line 439
    iget v4, p0, mGlowScaleY:F

    iput v4, p0, mGlowScaleYStart:F

    .line 442
    iput v7, p0, mGlowAlphaFinish:F

    .line 443
    iput v7, p0, mGlowScaleYFinish:F

    goto :goto_46

    .line 446
    :pswitch_7a
    iput v8, p0, mState:I

    goto :goto_46

    .line 449
    :pswitch_7d
    const/4 v4, 0x0

    iput v4, p0, mState:I

    goto :goto_46

    .line 420
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_60
        :pswitch_47
        :pswitch_7d
        :pswitch_7a
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 364
    invoke-direct {p0}, update()V

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 368
    .local v10, "count":I
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    .line 370
    .local v8, "centerX":F
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, mGlowScaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v8, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 372
    const/4 v0, 0x0

    iget v1, p0, mDisplacement:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v11, v0, v1

    .line 373
    .local v11, "displacement":F
    const/high16 v7, 0x3f000000    # 0.5f

    .line 374
    .local v7, "availableRange":F
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v7

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v11

    mul-float/2addr v1, v7

    iget-object v3, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float v9, v0, v1

    .line 375
    .local v9, "controlX":F
    iget v0, p0, mEdgeControlPointHeight:F

    iget v1, p0, mEdgePadding:F

    add-float v2, v0, v1

    .line 377
    .local v2, "controlY":F
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v13, v0, v1

    .line 378
    .local v13, "topDistance":F
    iget-object v0, p0, mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 379
    iget-object v0, p0, mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 380
    iget-object v0, p0, mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iget v3, p0, mEdgePadding:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 381
    iget-object v0, p0, mPath:Landroid/graphics/Path;

    sub-float v1, v9, v13

    add-float v3, v9, v13

    iget-object v4, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v5, v4

    iget v6, p0, mEdgePadding:F

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 384
    iget-object v0, p0, mPath:Landroid/graphics/Path;

    iget-object v1, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 385
    iget-object v0, p0, mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 387
    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v3, p0, mGlowAlpha:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 388
    iget-object v0, p0, mPath:Landroid/graphics/Path;

    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 389
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 391
    const/4 v12, 0x0

    .line 392
    .local v12, "oneLastFrame":Z
    iget v0, p0, mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_bc

    iget v0, p0, mGlowScaleY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_bc

    .line 393
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 394
    const/4 v12, 0x1

    .line 397
    :cond_bc
    iget v0, p0, mState:I

    if-nez v0, :cond_c2

    if-eqz v12, :cond_c4

    :cond_c2
    const/4 v0, 0x1

    :goto_c3
    return v0

    :cond_c4
    const/4 v0, 0x0

    goto :goto_c3
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 212
    return-void
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 203
    iget v0, p0, mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAbsorb(I)V
    .registers 6
    .param p1, "velocity"    # I

    .prologue
    const v3, 0x3e19999a    # 0.15f

    .line 312
    const/4 v0, 0x2

    iput v0, p0, mState:I

    .line 313
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 315
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 316
    int-to-float v0, p1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, mDuration:F

    .line 320
    const v0, 0x3de147ae    # 0.11f

    iput v0, p0, mGlowAlphaStart:F

    .line 321
    iget v0, p0, mGlowScaleY:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, mGlowScaleYStart:F

    .line 328
    const v0, 0x3ccccccd    # 0.025f

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, mGlowScaleYFinish:F

    .line 330
    iget v0, p0, mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x6

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, mGlowAlphaFinish:F

    .line 332
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, mTargetDisplacement:F

    .line 333
    return-void
.end method

.method public onPull(F)V
    .registers 3
    .param p1, "deltaDistance"    # F

    .prologue
    .line 228
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, onPull(FF)V

    .line 229
    return-void
.end method

.method public onPull(FF)V
    .registers 13
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .prologue
    const/4 v6, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    .line 245
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 246
    .local v2, "now":J
    iput p2, p0, mTargetDisplacement:F

    .line 247
    iget v4, p0, mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    iget-wide v4, p0, mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1b

    .line 275
    :goto_1a
    return-void

    .line 250
    :cond_1b
    iget v4, p0, mState:I

    if-eq v4, v6, :cond_27

    .line 251
    iget v4, p0, mGlowScaleY:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, mGlowScaleY:F

    .line 253
    :cond_27
    iput v6, p0, mState:I

    .line 255
    iput-wide v2, p0, mStartTime:J

    .line 256
    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, mDuration:F

    .line 258
    iget v4, p0, mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, mPullDistance:F

    .line 260
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 261
    .local v0, "absdd":F
    const v4, 0x3e19999a    # 0.15f

    iget v5, p0, mGlowAlpha:F

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, mGlowAlphaStart:F

    iput v4, p0, mGlowAlpha:F

    .line 264
    iget v4, p0, mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_5d

    .line 265
    iput v7, p0, mGlowScaleYStart:F

    iput v7, p0, mGlowScaleY:F

    .line 273
    :goto_54
    iget v4, p0, mGlowAlpha:F

    iput v4, p0, mGlowAlphaFinish:F

    .line 274
    iget v4, p0, mGlowScaleY:F

    iput v4, p0, mGlowScaleYFinish:F

    goto :goto_1a

    .line 267
    :cond_5d
    const-wide/16 v4, 0x0

    iget v6, p0, mPullDistance:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double v6, v8, v6

    sub-double v6, v8, v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    div-double/2addr v4, v6

    double-to-float v1, v4

    .line 270
    .local v1, "scale":F
    iput v1, p0, mGlowScaleYStart:F

    iput v1, p0, mGlowScaleY:F

    goto :goto_54
.end method

.method public onRelease()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 284
    iput v2, p0, mPullDistance:F

    .line 286
    iget v0, p0, mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 299
    :goto_d
    return-void

    .line 290
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, mState:I

    .line 291
    iget v0, p0, mGlowAlpha:F

    iput v0, p0, mGlowAlphaStart:F

    .line 292
    iget v0, p0, mGlowScaleY:F

    iput v0, p0, mGlowScaleYStart:F

    .line 294
    iput v2, p0, mGlowAlphaFinish:F

    .line 295
    iput v2, p0, mGlowScaleYFinish:F

    .line 297
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 298
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, mDuration:F

    goto :goto_d
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 341
    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    return-void
.end method

.method public setSize(II)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v8, 0x3f400000    # 0.75f

    .line 164
    int-to-float v6, p1

    mul-float/2addr v6, v8

    sget v7, SIN:F

    div-float v4, v6, v7

    .line 165
    .local v4, "r":F
    sget v6, COS:F

    mul-float v5, v6, v4

    .line 166
    .local v5, "y":F
    sub-float v0, v4, v5

    .line 167
    .local v0, "h":F
    int-to-float v6, p2

    mul-float/2addr v6, v8

    sget v7, SIN:F

    div-float v2, v6, v7

    .line 168
    .local v2, "or":F
    sget v6, COS:F

    mul-float v3, v6, v2

    .line 169
    .local v3, "oy":F
    sub-float v1, v2, v3

    .line 184
    .local v1, "oh":F
    int-to-float v6, p1

    iget v7, p0, mTabHeight:F

    iget v8, p0, mTabHeightBuffer:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_48

    .line 185
    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v6}, dipToPixels(F)F

    move-result v6

    iput v6, p0, mEdgePadding:F

    .line 186
    const/high16 v6, 0x41980000    # 19.0f

    invoke-direct {p0, v6}, dipToPixels(F)F

    move-result v6

    iput v6, p0, mEdgeControlPointHeight:F

    .line 192
    :goto_34
    iget-object v6, p0, mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 193
    return-void

    .line 188
    :cond_48
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {p0, v6}, dipToPixels(F)F

    move-result v6

    iput v6, p0, mEdgePadding:F

    .line 189
    const/high16 v6, 0x41e80000    # 29.0f

    invoke-direct {p0, v6}, dipToPixels(F)F

    move-result v6

    iput v6, p0, mEdgeControlPointHeight:F

    goto :goto_34
.end method
