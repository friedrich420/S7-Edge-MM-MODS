.class public Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "HeadsUpAppearInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->getAppearPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 28
    return-void
.end method

.method private static getAppearPath()Landroid/graphics/Path;
    .locals 14

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 32
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    const/high16 v7, 0x437a0000    # 250.0f

    .line 34
    .local v7, "x1":F
    const/high16 v8, 0x43160000    # 150.0f

    .line 35
    .local v8, "x2":F
    const/high16 v9, 0x42c80000    # 100.0f

    .line 36
    .local v9, "x3":F
    const/high16 v11, 0x42b40000    # 90.0f

    .line 37
    .local v11, "y1":F
    const/high16 v12, 0x429c0000    # 78.0f

    .line 38
    .local v12, "y2":F
    const/high16 v13, 0x42a00000    # 80.0f

    .line 39
    .local v13, "y3":F
    add-float v1, v7, v8

    add-float v10, v1, v9

    .line 40
    .local v10, "xTot":F
    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v1, v7

    div-float/2addr v1, v10

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v7

    div-float/2addr v3, v10

    div-float v4, v11, v13

    div-float v5, v7, v10

    div-float v6, v11, v13

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 43
    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    div-float/2addr v1, v10

    div-float v2, v11, v13

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v8

    add-float/2addr v3, v7

    div-float/2addr v3, v10

    div-float v4, v12, v13

    add-float v5, v7, v8

    div-float/2addr v5, v10

    div-float v6, v12, v13

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 46
    add-float v1, v7, v8

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    div-float/2addr v1, v10

    div-float v2, v12, v13

    add-float v3, v7, v8

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    div-float/2addr v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 49
    return-object v0
.end method
