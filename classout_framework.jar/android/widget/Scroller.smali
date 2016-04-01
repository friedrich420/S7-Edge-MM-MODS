.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field bIsPerfBoostEnabled:Z

.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private sBoostParamVal:[I

.field private sBoostTimeOut:I

.field private scrollBoostTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    .line 98
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, DECELERATION_RATE:F

    .line 106
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, SPLINE_POSITION:[F

    .line 107
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, SPLINE_TIME:[F

    .line 127
    const/4 v7, 0x0

    .line 128
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 129
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    const/16 v11, 0x64

    if-ge v3, v11, :cond_ca

    .line 130
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .line 132
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    .local v6, "x_max":F
    :goto_30
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 136
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 137
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 138
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_b8

    .line 142
    sget-object v11, SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 144
    const/high16 v9, 0x3f800000    # 1.0f

    .line 147
    .local v9, "y_max":F
    :goto_73
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 148
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 149
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 150
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_c2

    .line 154
    sget-object v11, SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    .line 139
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_b8
    cmpl-float v11, v4, v0

    if-lez v11, :cond_bf

    move v6, v5

    goto/16 :goto_30

    .line 140
    :cond_bf
    move v7, v5

    goto/16 :goto_30

    .line 151
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_c2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_c8

    move v9, v8

    goto :goto_73

    .line 152
    :cond_c8
    move v10, v8

    goto :goto_73

    .line 156
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_ca
    sget-object v11, SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    aput v15, v11, v12

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 174
    return-void

    .line 172
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, mFlingFriction:F

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, mPerf:Landroid/util/BoostFramework;

    .line 118
    iput-boolean v2, p0, bIsPerfBoostEnabled:Z

    .line 119
    iput v2, p0, sBoostTimeOut:I

    .line 120
    iput v2, p0, scrollBoostTimeOut:I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "bIsPerfBoostEnabled":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, mFinished:Z

    .line 184
    if-nez p2, :cond_6e

    .line 185
    new-instance v1, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v1}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 189
    :goto_20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    iput v1, p0, mPpi:F

    .line 190
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    invoke-direct {p0, v1}, computeDeceleration(F)F

    move-result v1

    iput v1, p0, mDeceleration:F

    .line 191
    iput-boolean p3, p0, mFlywheel:Z

    .line 193
    const v1, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v1}, computeDeceleration(F)F

    move-result v1

    iput v1, p0, mPhysicalCoeff:F

    .line 196
    if-eqz v0, :cond_60

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, sBoostTimeOut:I

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, sBoostParamVal:[I

    .line 202
    :cond_60
    iget-object v1, p0, mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_6d

    if-eqz v0, :cond_6d

    .line 203
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, mPerf:Landroid/util/BoostFramework;

    .line 206
    :cond_6d
    return-void

    .line 187
    :cond_6e
    iput-object p2, p0, mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_20
.end method

.method private computeDeceleration(F)F
    .registers 4
    .param p1, "friction"    # F

    .prologue
    .line 221
    const v0, 0x43c10b3d

    iget v1, p0, mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .registers 5
    .param p1, "velocity"    # F

    .prologue
    .line 511
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, mFlingFriction:F

    iget v2, p0, mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .registers 10
    .param p1, "velocity"    # F

    .prologue
    .line 521
    invoke-direct {p0, p1}, getSplineDeceleration(F)D

    move-result-wide v2

    .line 522
    .local v2, "l":D
    sget v4, DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 523
    .local v0, "decelMinusOne":D
    iget v4, p0, mFlingFriction:F

    iget v5, p0, mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .registers 10
    .param p1, "velocity"    # F

    .prologue
    .line 515
    invoke-direct {p0, p1}, getSplineDeceleration(F)D

    move-result-wide v2

    .line 516
    .local v2, "l":D
    sget v4, DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 517
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .prologue
    .line 534
    iget v0, p0, mFinalX:I

    iput v0, p0, mCurrX:I

    .line 535
    iget v0, p0, mFinalY:I

    iput v0, p0, mCurrY:I

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, mFinished:Z

    .line 537
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 15

    .prologue
    .line 325
    iget-boolean v10, p0, mFinished:Z

    if-eqz v10, :cond_6

    .line 326
    const/4 v10, 0x0

    .line 376
    :goto_5
    return v10

    .line 329
    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 331
    .local v7, "timePassed":I
    iget v10, p0, mDuration:I

    if-ge v7, v10, :cond_d4

    .line 332
    iget v10, p0, mMode:I

    packed-switch v10, :pswitch_data_e2

    .line 376
    :cond_17
    :goto_17
    const/4 v10, 0x1

    goto :goto_5

    .line 334
    :pswitch_19
    iget-object v10, p0, mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v11, v7

    iget v12, p0, mDurationReciprocal:F

    mul-float/2addr v11, v12

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 335
    .local v9, "x":F
    iget v10, p0, mStartX:I

    iget v11, p0, mDeltaX:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, mCurrX:I

    .line 336
    iget v10, p0, mStartY:I

    iget v11, p0, mDeltaY:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, mCurrY:I

    goto :goto_17

    .line 339
    .end local v9    # "x":F
    :pswitch_3c
    int-to-float v10, v7

    iget v11, p0, mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 340
    .local v4, "t":F
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v4

    float-to-int v3, v10

    .line 341
    .local v3, "index":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 342
    .local v2, "distanceCoef":F
    const/4 v8, 0x0

    .line 343
    .local v8, "velocityCoef":F
    const/16 v10, 0x64

    if-ge v3, v10, :cond_6e

    .line 344
    int-to-float v10, v3

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v5, v10, v11

    .line 345
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v6, v10, v11

    .line 346
    .local v6, "t_sup":F
    sget-object v10, SPLINE_POSITION:[F

    aget v0, v10, v3

    .line 347
    .local v0, "d_inf":F
    sget-object v10, SPLINE_POSITION:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 348
    .local v1, "d_sup":F
    sub-float v10, v1, v0

    sub-float v11, v6, v5

    div-float v8, v10, v11

    .line 349
    sub-float v10, v4, v5

    mul-float/2addr v10, v8

    add-float v2, v0, v10

    .line 352
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_6e
    iget v10, p0, mDistance:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, p0, mDuration:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v10, v11

    iput v10, p0, mCurrVelocity:F

    .line 354
    iget v10, p0, mStartX:I

    iget v11, p0, mFinalX:I

    iget v12, p0, mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, mCurrX:I

    .line 356
    iget v10, p0, mCurrX:I

    iget v11, p0, mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, mCurrX:I

    .line 357
    iget v10, p0, mCurrX:I

    iget v11, p0, mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, mCurrX:I

    .line 359
    iget v10, p0, mStartY:I

    iget v11, p0, mFinalY:I

    iget v12, p0, mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, mCurrY:I

    .line 361
    iget v10, p0, mCurrY:I

    iget v11, p0, mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, mCurrY:I

    .line 362
    iget v10, p0, mCurrY:I

    iget v11, p0, mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, mCurrY:I

    .line 364
    iget v10, p0, mCurrX:I

    iget v11, p0, mFinalX:I

    if-ne v10, v11, :cond_17

    iget v10, p0, mCurrY:I

    iget v11, p0, mFinalY:I

    if-ne v10, v11, :cond_17

    .line 365
    const/4 v10, 0x1

    iput-boolean v10, p0, mFinished:Z

    goto/16 :goto_17

    .line 372
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v8    # "velocityCoef":F
    :cond_d4
    iget v10, p0, mFinalX:I

    iput v10, p0, mCurrX:I

    .line 373
    iget v10, p0, mFinalY:I

    iput v10, p0, mCurrY:I

    .line 374
    const/4 v10, 0x1

    iput-boolean v10, p0, mFinished:Z

    goto/16 :goto_17

    .line 332
    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_19
        :pswitch_3c
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 5
    .param p1, "extend"    # I

    .prologue
    .line 548
    invoke-virtual {p0}, timePassed()I

    move-result v0

    .line 549
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, mDuration:I

    .line 550
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, mDurationReciprocal:F

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p0, mFinished:Z

    .line 552
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 31
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-boolean v0, v0, mFlywheel:Z

    move/from16 v17, v0

    if-eqz v17, :cond_85

    move-object/from16 v0, p0

    iget-boolean v0, v0, mFinished:Z

    move/from16 v17, v0

    if-nez v17, :cond_85

    .line 459
    invoke-virtual/range {p0 .. p0}, getCurrVelocity()F

    move-result v11

    .line 461
    .local v11, "oldVel":F
    move-object/from16 v0, p0

    iget v0, v0, mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mStartX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v6, v0

    .line 462
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mStartY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v7, v0

    .line 463
    .local v7, "dy":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v7

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v8, v0

    .line 465
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 466
    .local v9, "ndx":F
    div-float v10, v7, v8

    .line 468
    .local v10, "ndy":F
    mul-float v12, v9, v11

    .line 469
    .local v12, "oldVelocityX":F
    mul-float v13, v10, v11

    .line 470
    .local v13, "oldVelocityY":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_85

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-nez v17, :cond_85

    .line 472
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p3, v0

    .line 473
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v13

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 p4, v0

    .line 477
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v10    # "ndy":F
    .end local v11    # "oldVel":F
    .end local v12    # "oldVelocityX":F
    .end local v13    # "oldVelocityY":F
    :cond_85
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mMode:I

    .line 478
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFinished:Z

    .line 480
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    .line 482
    .local v16, "velocity":F
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, mVelocity:F

    .line 483
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, getSplineFlingDuration(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mDuration:I

    .line 484
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mStartTime:J

    .line 485
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, mStartX:I

    .line 486
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, mStartY:I

    .line 488
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_19d

    const/high16 v4, 0x3f800000    # 1.0f

    .line 489
    .local v4, "coeffX":F
    :goto_da
    const/16 v17, 0x0

    cmpl-float v17, v16, v17

    if-nez v17, :cond_1a6

    const/high16 v5, 0x3f800000    # 1.0f

    .line 491
    .local v5, "coeffY":F
    :goto_e2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, getSplineFlingDistance(F)D

    move-result-wide v14

    .line 492
    .local v14, "totalDistance":D
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mDistance:I

    .line 494
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, mMinX:I

    .line 495
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, mMaxX:I

    .line 496
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mMinY:I

    .line 497
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, mMaxY:I

    .line 499
    float-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mFinalX:I

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mMaxX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mFinalX:I

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, mFinalX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mMinX:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mFinalX:I

    .line 504
    float-to-double v0, v5

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mFinalY:I

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mMaxY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mFinalY:I

    .line 507
    move-object/from16 v0, p0

    iget v0, v0, mFinalY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mMinY:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mFinalY:I

    .line 508
    return-void

    .line 488
    .end local v4    # "coeffX":F
    .end local v5    # "coeffY":F
    .end local v14    # "totalDistance":D
    :cond_19d
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v17, v16

    goto/16 :goto_da

    .line 489
    .restart local v4    # "coeffX":F
    :cond_1a6
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v5, v17, v16

    goto/16 :goto_e2
.end method

.method public final forceFinished(Z)V
    .registers 2
    .param p1, "finished"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, mFinished:Z

    .line 244
    return-void
.end method

.method public getCurrVelocity()F
    .registers 4

    .prologue
    .line 280
    iget v0, p0, mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, mCurrVelocity:F

    :goto_7
    return v0

    :cond_8
    iget v0, p0, mVelocity:F

    iget v1, p0, mDeceleration:F

    invoke-virtual {p0}, timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_7
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 270
    iget v0, p0, mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 290
    iget v0, p0, mStartX:I

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 6
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 593
    iget-boolean v0, p0, mFinished:Z

    if-nez v0, :cond_2a

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, mFinalX:I

    iget v2, p0, mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, mFinalY:I

    iget v2, p0, mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public setFinalX(I)V
    .registers 4
    .param p1, "newX"    # I

    .prologue
    .line 571
    iput p1, p0, mFinalX:I

    .line 572
    iget v0, p0, mFinalX:I

    iget v1, p0, mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, mDeltaX:F

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, mFinished:Z

    .line 574
    return-void
.end method

.method public setFinalY(I)V
    .registers 4
    .param p1, "newY"    # I

    .prologue
    .line 584
    iput p1, p0, mFinalY:I

    .line 585
    iget v0, p0, mFinalY:I

    iget v1, p0, mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, mDeltaY:F

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, mFinished:Z

    .line 587
    return-void
.end method

.method public final setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .prologue
    .line 216
    invoke-direct {p0, p1}, computeDeceleration(F)F

    move-result v0

    iput v0, p0, mDeceleration:F

    .line 217
    iput p1, p0, mFlingFriction:F

    .line 218
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 394
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, startScroll(IIIII)V

    .line 395
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 9
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 412
    iput v0, p0, mMode:I

    .line 413
    iput-boolean v0, p0, mFinished:Z

    .line 414
    iput p5, p0, mDuration:I

    .line 415
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mStartTime:J

    .line 416
    iput p1, p0, mStartX:I

    .line 417
    iput p2, p0, mStartY:I

    .line 418
    add-int v0, p1, p3

    iput v0, p0, mFinalX:I

    .line 419
    add-int v0, p2, p4

    iput v0, p0, mFinalY:I

    .line 420
    int-to-float v0, p3

    iput v0, p0, mDeltaX:F

    .line 421
    int-to-float v0, p4

    iput v0, p0, mDeltaY:F

    .line 422
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, mDurationReciprocal:F

    .line 424
    iget-object v0, p0, mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3e

    if-eqz p5, :cond_3e

    .line 425
    iget v0, p0, sBoostTimeOut:I

    if-nez v0, :cond_3f

    .line 427
    iget v0, p0, mDuration:I

    iput v0, p0, scrollBoostTimeOut:I

    .line 432
    :goto_35
    iget-object v0, p0, mPerf:Landroid/util/BoostFramework;

    iget v1, p0, scrollBoostTimeOut:I

    iget-object v2, p0, sBoostParamVal:[I

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 434
    :cond_3e
    return-void

    .line 430
    :cond_3f
    iget v0, p0, sBoostTimeOut:I

    iput v0, p0, scrollBoostTimeOut:I

    goto :goto_35
.end method

.method public timePassed()I
    .registers 5

    .prologue
    .line 560
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
