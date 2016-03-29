.class public Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# static fields
.field static px:[F

.field static px_land:[F

.field static xp:[F

.field static xp_land:[F


# instance fields
.field mBetweenAffiliationOffset:I

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mInitialScrollP:F

.field mMaxScrollP:F

.field mMinScrollP:F

.field mScrollProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mStackPeekMinScale:F

.field mStackRect:Landroid/graphics/Rect;

.field mStackVisibleRect:Landroid/graphics/Rect;

.field mTaskProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field mTaskRect:Landroid/graphics/Rect;

.field mViewRect:Landroid/graphics/Rect;

.field mWithinAffiliationOffset:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackPortraitCurveAlgorithmCount:I

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve(I)V

    .line 99
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackLandscapeCurveAlgorithmCount:I

    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurveForLandscape(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public static initializeCurve(I)V
    .locals 18
    .param p0, "count"    # I

    .prologue
    .line 423
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    if-eqz v11, :cond_1

    .line 485
    :cond_0
    return-void

    .line 424
    :cond_1
    const/16 v11, 0xfb

    new-array v11, v11, [F

    sput-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    .line 425
    const/16 v11, 0xfb

    new-array v11, v11, [F

    sput-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    .line 428
    const/16 v11, 0xfb

    new-array v4, v11, [F

    .line 429
    .local v4, "fx":[F
    const v8, 0x3b83126f    # 0.004f

    .line 430
    .local v8, "step":F
    const/4 v9, 0x0

    .line 431
    .local v9, "x":F
    const/4 v10, 0x0

    .local v10, "xStep":I
    :goto_0
    const/16 v11, 0xfa

    if-gt v10, v11, :cond_4

    .line 433
    sget-boolean v11, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v11, :cond_3

    .line 434
    if-ltz v10, :cond_2

    move/from16 v0, p0

    if-ge v10, v0, :cond_2

    .line 435
    sub-int v11, v10, p0

    neg-int v11, v11

    div-int/lit8 v12, v10, 0xf

    sub-int v12, v12, p0

    mul-int/2addr v11, v12

    int-to-double v12, v11

    move/from16 v0, p0

    int-to-double v14, v0

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    aput v11, v4, v10

    .line 431
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 437
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v4, v10

    .line 438
    add-float/2addr v9, v8

    goto :goto_1

    .line 442
    :cond_3
    invoke-static {v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->logFunc(F)F

    move-result v11

    aput v11, v4, v10

    .line 443
    add-float/2addr v9, v8

    goto :goto_1

    .line 447
    :cond_4
    const/4 v6, 0x0

    .line 448
    .local v6, "pLength":F
    const/16 v11, 0xfb

    new-array v2, v11, [F

    .line 449
    .local v2, "dx":[F
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v2, v11

    .line 450
    const/4 v10, 0x1

    :goto_2
    const/16 v11, 0xfa

    if-ge v10, v11, :cond_5

    .line 451
    aget v11, v4, v10

    add-int/lit8 v12, v10, -0x1

    aget v12, v4, v12

    sub-float/2addr v11, v12

    float-to-double v12, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v8

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    aput v11, v2, v10

    .line 452
    aget v11, v2, v10

    add-float/2addr v6, v11

    .line 450
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 455
    :cond_5
    const/4 v5, 0x0

    .line 456
    .local v5, "p":F
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 457
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    const/16 v12, 0xfa

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    .line 458
    const/4 v10, 0x1

    :goto_3
    const/16 v11, 0xfa

    if-gt v10, v11, :cond_6

    .line 459
    aget v11, v2, v10

    div-float/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v5, v11

    .line 460
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aput v5, v11, v10

    .line 458
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 464
    :cond_6
    const/4 v10, 0x0

    .line 465
    const/4 v5, 0x0

    .line 466
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 467
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/16 v12, 0xfa

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    .line 468
    const/4 v7, 0x0

    .local v7, "pStep":I
    :goto_4
    const/16 v11, 0xfa

    if-ge v7, v11, :cond_0

    .line 470
    :goto_5
    const/16 v11, 0xfa

    if-ge v10, v11, :cond_7

    .line 471
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v11, v11, v10

    cmpl-float v11, v11, v5

    if-lez v11, :cond_8

    .line 475
    :cond_7
    if-nez v10, :cond_9

    .line 476
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    const/4 v12, 0x0

    aput v12, v11, v7

    .line 483
    :goto_6
    add-float/2addr v5, v8

    .line 468
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 472
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 479
    :cond_9
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v12, v10, -0x1

    aget v11, v11, v12

    sub-float v11, v5, v11

    sget-object v12, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v12, v12, v10

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    add-int/lit8 v14, v10, -0x1

    aget v13, v13, v14

    sub-float/2addr v12, v13

    div-float v3, v11, v12

    .line 480
    .local v3, "fraction":F
    add-int/lit8 v11, v10, -0x1

    int-to-float v11, v11

    add-float/2addr v11, v3

    mul-float v9, v11, v8

    .line 481
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aput v9, v11, v7

    goto :goto_6
.end method

.method public static initializeCurveForLandscape(I)V
    .locals 18
    .param p0, "count"    # I

    .prologue
    .line 490
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    if-eqz v11, :cond_1

    .line 552
    :cond_0
    return-void

    .line 491
    :cond_1
    const/16 v11, 0xfb

    new-array v11, v11, [F

    sput-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    .line 492
    const/16 v11, 0xfb

    new-array v11, v11, [F

    sput-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    .line 495
    const/16 v11, 0xfb

    new-array v4, v11, [F

    .line 496
    .local v4, "fx_land":[F
    const v8, 0x3b83126f    # 0.004f

    .line 497
    .local v8, "step":F
    const/4 v9, 0x0

    .line 498
    .local v9, "x":F
    const/4 v10, 0x0

    .local v10, "xStep":I
    :goto_0
    const/16 v11, 0xfa

    if-gt v10, v11, :cond_4

    .line 500
    sget-boolean v11, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v11, :cond_3

    .line 501
    if-ltz v10, :cond_2

    move/from16 v0, p0

    if-ge v10, v0, :cond_2

    .line 502
    const/high16 v11, 0x3f800000    # 1.0f

    move/from16 v0, p0

    int-to-float v12, v0

    div-float/2addr v11, v12

    int-to-float v12, v10

    mul-float/2addr v11, v12

    aput v11, v4, v10

    .line 498
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 504
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v4, v10

    .line 505
    add-float/2addr v9, v8

    goto :goto_1

    .line 509
    :cond_3
    invoke-static {v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->logFunc(F)F

    move-result v11

    aput v11, v4, v10

    .line 510
    add-float/2addr v9, v8

    goto :goto_1

    .line 514
    :cond_4
    const/4 v6, 0x0

    .line 515
    .local v6, "pLength":F
    const/16 v11, 0xfb

    new-array v2, v11, [F

    .line 516
    .local v2, "dx_land":[F
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v2, v11

    .line 517
    const/4 v10, 0x1

    :goto_2
    const/16 v11, 0xfa

    if-ge v10, v11, :cond_5

    .line 518
    aget v11, v4, v10

    add-int/lit8 v12, v10, -0x1

    aget v12, v4, v12

    sub-float/2addr v11, v12

    float-to-double v12, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v8

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    aput v11, v2, v10

    .line 519
    aget v11, v2, v10

    add-float/2addr v6, v11

    .line 517
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 522
    :cond_5
    const/4 v5, 0x0

    .line 523
    .local v5, "p":F
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 524
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    const/16 v12, 0xfa

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    .line 525
    const/4 v10, 0x1

    :goto_3
    const/16 v11, 0xfa

    if-gt v10, v11, :cond_6

    .line 526
    aget v11, v2, v10

    div-float/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v5, v11

    .line 527
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    aput v5, v11, v10

    .line 525
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 531
    :cond_6
    const/4 v10, 0x0

    .line 532
    const/4 v5, 0x0

    .line 533
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 534
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    const/16 v12, 0xfa

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    .line 535
    const/4 v7, 0x0

    .local v7, "pStep":I
    :goto_4
    const/16 v11, 0xfa

    if-ge v7, v11, :cond_0

    .line 537
    :goto_5
    const/16 v11, 0xfa

    if-ge v10, v11, :cond_7

    .line 538
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    aget v11, v11, v10

    cmpl-float v11, v11, v5

    if-lez v11, :cond_8

    .line 542
    :cond_7
    if-nez v10, :cond_9

    .line 543
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    const/4 v12, 0x0

    aput v12, v11, v7

    .line 550
    :goto_6
    add-float/2addr v5, v8

    .line 535
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 539
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 546
    :cond_9
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    add-int/lit8 v12, v10, -0x1

    aget v11, v11, v12

    sub-float v11, v5, v11

    sget-object v12, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    aget v12, v12, v10

    sget-object v13, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    add-int/lit8 v14, v10, -0x1

    aget v13, v13, v14

    sub-float/2addr v12, v13

    div-float v3, v11, v12

    .line 547
    .local v3, "fraction":F
    add-int/lit8 v11, v10, -0x1

    int-to-float v11, v11

    add-float/2addr v11, v3

    mul-float v9, v11, v8

    .line 548
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    aput v9, v11, v7

    goto :goto_6
.end method

.method static logFunc(F)F
    .locals 6
    .param p0, "x"    # F

    .prologue
    .line 561
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide v2, 0x40a7700000000000L    # 3000.0

    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->reverse(F)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const v2, 0x453b8000    # 3000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method static reverse(F)F
    .locals 2
    .param p0, "x"    # F

    .prologue
    .line 557
    neg-float v0, p0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V
    .locals 22
    .param p2, "launchedWithAltTab"    # Z
    .param p3, "launchedFromHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 160
    sget-boolean v19, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v19, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 166
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 167
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 286
    :goto_0
    return-void

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 199
    .local v18, "taskHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v5

    .line 200
    .local v5, "pAtBottomOfStackRect":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v13

    .line 202
    .local v13, "pWithinAffiliateTop":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v14

    .line 203
    .local v14, "scale":F
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v15, v0

    .line 204
    .local v15, "scaleYOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v13

    .line 206
    sub-float v12, v5, v13

    .line 207
    .local v12, "pWithinAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v19

    sub-float v7, v5, v19

    .line 209
    .local v7, "pBetweenAffiliateOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v19, v19, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v19

    sub-float v11, v5, v19

    .line 211
    .local v11, "pTaskHeightOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v19

    sub-float v9, v5, v19

    .line 215
    .local v9, "pNavBarOffset":F
    const/4 v8, 0x0

    .line 222
    .local v8, "pDismissAllButtonOffset":F
    const/high16 v4, 0x3f000000    # 0.5f

    .line 223
    .local v4, "pAtBackMostCardTop":F
    move v6, v4

    .line 224
    .local v6, "pAtFrontMostCardTop":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 226
    .local v17, "taskCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackInitialCardPosition:F

    .line 229
    .local v3, "initialCardPostion":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v2, v0, :cond_6

    .line 230
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/recents/model/Task;

    .line 231
    .local v16, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v20, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-boolean v19, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v19, :cond_3

    .line 234
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    sub-float v21, v6, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    sub-float v21, v6, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_3
    add-int/lit8 v19, v17, -0x1

    move/from16 v0, v19

    if-ge v2, v0, :cond_4

    .line 243
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v19

    if-eqz v19, :cond_5

    move v10, v7

    .line 245
    .local v10, "pPeek":F
    :goto_2
    add-float/2addr v6, v10

    .line 229
    .end local v10    # "pPeek":F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v10, v12

    .line 243
    goto :goto_2

    .line 250
    .end local v16    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_6
    sget-boolean v19, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v19, :cond_7

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    add-float v21, v6, v7

    sub-float v21, v21, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mScrollProgressMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    add-int/lit8 v20, v2, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, v7

    add-float v21, v21, v6

    sub-float v21, v21, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_7
    add-float v19, v6, v8

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v11

    sub-float v20, v20, v9

    sub-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    sget-boolean v19, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    .line 263
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    .line 285
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_0

    .line 260
    :cond_8
    const/16 v19, 0x0

    goto :goto_3

    .line 268
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/RecentsConfiguration;->showRecentOnMultiwindow()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 270
    const v19, 0x3f266666    # 0.65f

    sub-float v19, v6, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    .line 281
    :cond_a
    sub-float v19, v6, v3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4
.end method

.method public computeRects(IILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 111
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 113
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 116
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 117
    .local v4, "widthPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 118
    .local v0, "heightPadding":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 121
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 122
    .local v2, "size":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 129
    .local v1, "left":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v7, v1, v2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 135
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskVisibleArea:F

    .line 139
    .local v3, "visibleTaskPct":F
    sget-boolean v5, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v5, :cond_0

    .line 140
    const v5, 0x3f666666    # 0.9f

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mWithinAffiliationOffset:I

    .line 149
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    .line 151
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 294
    new-instance v17, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;II)V

    .line 336
    :goto_0
    return-object v17

    .line 298
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 299
    .local v16, "taskHeight":I
    const/4 v8, 0x1

    .line 300
    .local v8, "numVisibleTasks":I
    const/4 v9, 0x1

    .line 301
    .local v9, "numVisibleThumbnails":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 302
    .local v11, "progress":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v10

    .line 303
    .local v10, "prevScreenY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 304
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 305
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 306
    const/16 v17, 0x0

    cmpg-float v17, v11, v17

    if-gez v17, :cond_2

    .line 336
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    new-instance v17, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;II)V

    goto :goto_0

    .line 309
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v6

    .line 310
    .local v6, "isFrontMostTaskInGroup":Z
    if-eqz v6, :cond_6

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v12

    .line 312
    .local v12, "scaleAtP":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 313
    .local v13, "scaleYOffsetAtP":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v17

    add-int v14, v17, v13

    .line 314
    .local v14, "screenY":I
    sub-int v17, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    const/4 v4, 0x1

    .line 315
    .local v4, "hasVisibleThumbnail":Z
    :goto_2
    if-eqz v4, :cond_5

    .line 316
    add-int/lit8 v9, v9, 0x1

    .line 317
    add-int/lit8 v8, v8, 0x1

    .line 318
    move v10, v14

    .line 303
    .end local v4    # "hasVisibleThumbnail":Z
    .end local v12    # "scaleAtP":F
    .end local v13    # "scaleYOffsetAtP":I
    .end local v14    # "screenY":I
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 314
    .restart local v12    # "scaleAtP":F
    .restart local v13    # "scaleYOffsetAtP":I
    .restart local v14    # "screenY":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 322
    .restart local v4    # "hasVisibleThumbnail":Z
    :cond_5
    move v7, v5

    .local v7, "j":I
    :goto_4
    if-ltz v7, :cond_1

    .line 323
    add-int/lit8 v8, v8, 0x1

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 325
    const/16 v17, 0x0

    cmpg-float v17, v11, v17

    if-ltz v17, :cond_1

    .line 322
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 331
    .end local v4    # "hasVisibleThumbnail":Z
    .end local v7    # "j":I
    .end local v12    # "scaleAtP":F
    .end local v13    # "scaleYOffsetAtP":I
    .end local v14    # "screenY":I
    :cond_6
    if-nez v6, :cond_3

    .line 333
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method curveProgressToScale(F)F
    .locals 5
    .param p1, "p"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 643
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-nez v2, :cond_1

    .line 644
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 646
    :cond_1
    cmpl-float v2, p1, v0

    if-gtz v2, :cond_0

    .line 647
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    sub-float v1, v0, v2

    .line 648
    .local v1, "scaleRange":F
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    mul-float v3, p1, v1

    add-float v0, v2, v3

    .line 650
    .local v0, "scale":F
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_2

    cmpg-float v2, p1, v4

    if-gez v2, :cond_2

    .line 651
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    mul-float v3, p1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 653
    :cond_2
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v2, :cond_0

    .line 654
    const v2, 0x3f7d70a4    # 0.99f

    mul-float/2addr v0, v2

    goto :goto_0
.end method

.method curveProgressToScreenX(F)I
    .locals 8
    .param p1, "p"    # F

    .prologue
    .line 589
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 599
    :goto_0
    return v6

    .line 590
    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v3, p1, v6

    .line 591
    .local v3, "pIndex":F
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 592
    .local v1, "pFloorIndex":I
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 593
    .local v0, "pCeilIndex":I
    const/4 v5, 0x0

    .line 594
    .local v5, "xFraction":F
    const/16 v6, 0xfa

    if-ge v1, v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 595
    int-to-float v6, v1

    sub-float v6, v3, v6

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 596
    .local v2, "pFraction":F
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v0

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    mul-float v5, v6, v2

    .line 598
    .end local v2    # "pFraction":F
    :cond_2
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v6, v6, v1

    add-float v4, v6, v5

    .line 599
    .local v4, "x":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v7, v7

    add-int/2addr v6, v7

    goto :goto_0
.end method

.method curveProgressToScreenY(F)I
    .locals 10
    .param p1, "p"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 606
    sget-boolean v7, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v7, :cond_1

    .line 607
    cmpg-float v7, p1, v8

    if-gez v7, :cond_0

    .line 608
    neg-float v7, p1

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->logFunc_overHeader(FZ)F

    move-result v0

    .line 609
    .local v0, "o":F
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-float v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 637
    .end local v0    # "o":F
    :goto_0
    return v7

    .line 610
    :cond_0
    cmpl-float v7, p1, v9

    if-lez v7, :cond_3

    .line 611
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-int v8, v8

    add-int/2addr v7, v8

    goto :goto_0

    .line 615
    :cond_1
    cmpg-float v7, p1, v8

    if-ltz v7, :cond_2

    cmpl-float v7, p1, v9

    if-lez v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-int v8, v8

    add-int/2addr v7, v8

    goto :goto_0

    .line 617
    :cond_3
    const/high16 v7, 0x437a0000    # 250.0f

    mul-float v4, p1, v7

    .line 618
    .local v4, "pIndex":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 619
    .local v2, "pFloorIndex":I
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 620
    .local v1, "pCeilIndex":I
    const/4 v6, 0x0

    .line 621
    .local v6, "xFraction":F
    const/16 v7, 0xfa

    if-ge v2, v7, :cond_4

    if-eq v1, v2, :cond_4

    .line 622
    int-to-float v7, v2

    sub-float v7, v4, v7

    sub-int v8, v1, v2

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 624
    .local v3, "pFraction":F
    sget-boolean v7, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v7, :cond_6

    .line 625
    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    mul-float v6, v7, v3

    .line 631
    .end local v3    # "pFraction":F
    :cond_4
    :goto_1
    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v7, v7, v2

    add-float v5, v7, v6

    .line 633
    .local v5, "x":F
    sget-boolean v7, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v7, :cond_5

    .line 634
    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp_land:[F

    aget v7, v7, v2

    add-float v5, v7, v6

    .line 637
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    add-int/2addr v7, v8

    goto/16 :goto_0

    .line 628
    .end local v5    # "x":F
    .restart local v3    # "pFraction":F
    :cond_6
    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v7, v7, v1

    sget-object v8, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->xp:[F

    aget v8, v8, v2

    sub-float/2addr v7, v8

    mul-float v6, v7, v3

    goto :goto_1
.end method

.method getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 10
    .param p1, "taskProgress"    # F
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 354
    sub-float v3, p1, p2

    .line 355
    .local v3, "pTaskRelative":F
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 357
    .local v2, "pBounded":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v3, v7

    if-lez v7, :cond_0

    .line 358
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 359
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 405
    :goto_0
    return-object p3

    .line 364
    :cond_0
    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_3

    .line 366
    sget-boolean v7, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v7, :cond_2

    .line 367
    move v2, v3

    .line 368
    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v7, :cond_3

    const v7, -0x40f33333    # -0.55f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_3

    .line 369
    :cond_1
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 370
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 375
    :cond_2
    if-eqz p4, :cond_3

    iget v7, p4, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-gtz v7, :cond_3

    .line 376
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 377
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result v4

    .line 383
    .local v4, "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 384
    .local v6, "scaleYOffset":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 385
    .local v1, "minZ":I
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v7, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 386
    .local v0, "maxZ":I
    iput v4, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 388
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v4

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 389
    .local v5, "scaleXOffset":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenX(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v5

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    .line 391
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    .line 394
    sget-boolean v7, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    cmpg-float v7, v2, v7

    if-gez v7, :cond_4

    .line 395
    const/4 v7, 0x0

    int-to-float v8, v1

    sub-int v9, v0, v1

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 400
    :goto_1
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 401
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    iget v9, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 402
    iget-object v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v8, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-static {v7, v8}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    .line 403
    const/4 v7, 0x1

    iput-boolean v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 404
    iput v3, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    goto/16 :goto_0

    .line 398
    :cond_4
    int-to-float v7, v1

    int-to-float v8, v1

    sub-int v9, v0, v1

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p3, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    goto :goto_1
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "prevTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 347
    .end local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_0
    return-object p3

    .restart local p3    # "transformOut":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskProgressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object p3

    goto :goto_0
.end method

.method public getUntransformedTaskViewSize()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 411
    .local v0, "tvSize":Landroid/graphics/Rect;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 412
    return-object v0
.end method

.method logFunc_overHeader(FZ)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "isLandscape"    # Z

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const v0, 0x3d3851ec    # 0.045f

    .line 570
    if-eqz p2, :cond_1

    .line 571
    cmpl-float v1, p1, v2

    if-lez v1, :cond_0

    .line 580
    :goto_0
    return v0

    .line 574
    :cond_0
    div-float v1, p1, v2

    mul-float/2addr v0, v1

    goto :goto_0

    .line 577
    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAddiionalAlphaArea:F

    goto :goto_0

    .line 580
    :cond_2
    float-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fec000000000000L    # 0.875

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackAddiionalAlphaArea:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method screenYToCurveProgress(I)F
    .locals 8
    .param p1, "screenY"    # I

    .prologue
    .line 679
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 680
    .local v1, "x":F
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    .line 700
    .end local v1    # "x":F
    :cond_0
    :goto_0
    return v1

    .line 681
    .restart local v1    # "x":F
    :cond_1
    const/high16 v6, 0x437a0000    # 250.0f

    mul-float v5, v1, v6

    .line 682
    .local v5, "xIndex":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 683
    .local v3, "xFloorIndex":I
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 684
    .local v2, "xCeilIndex":I
    const/4 v0, 0x0

    .line 685
    .local v0, "pFraction":F
    const/16 v6, 0xfa

    if-ge v3, v6, :cond_2

    if-eq v2, v3, :cond_2

    .line 686
    int-to-float v6, v3

    sub-float v6, v5, v6

    sub-int v7, v2, v3

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 688
    .local v4, "xFraction":F
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v6, :cond_3

    .line 689
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    aget v6, v6, v2

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    mul-float v0, v6, v4

    .line 696
    .end local v4    # "xFraction":F
    :cond_2
    :goto_1
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v6, :cond_4

    .line 697
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px_land:[F

    aget v6, v6, v3

    add-float v1, v6, v0

    goto :goto_0

    .line 692
    .restart local v4    # "xFraction":F
    :cond_3
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v2

    sget-object v7, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    mul-float v0, v6, v4

    goto :goto_1

    .line 700
    .end local v4    # "xFraction":F
    :cond_4
    sget-object v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->px:[F

    aget v6, v6, v3

    add-float v1, v6, v0

    goto :goto_0
.end method
