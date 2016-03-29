.class public Lcom/android/keyguard/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "SecLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/SecLockPatternView$PatternUpdatorCallback;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mDiameterFactor:F

.field private mIsUsedThemePattern:Z

.field private mPatternCallback:Lcom/android/keyguard/SecLockPatternView$PatternUpdatorCallback;

.field private final mStrokeAlpha:I

.field private final offsetForCircleLineInvalidateRect:I

.field private sx:F

.field private sy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-string v5, "SecLockPatternView"

    iput-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->TAG:Ljava/lang/String;

    .line 42
    const v5, 0x3dcccccd    # 0.1f

    iput v5, p0, Lcom/android/keyguard/SecLockPatternView;->mDiameterFactor:F

    .line 43
    const/16 v5, 0x1c

    iput v5, p0, Lcom/android/keyguard/SecLockPatternView;->mStrokeAlpha:I

    .line 52
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 58
    const/16 v5, 0x14

    iput v5, p0, Lcom/android/keyguard/SecLockPatternView;->offsetForCircleLineInvalidateRect:I

    .line 59
    iput v8, p0, Lcom/android/keyguard/SecLockPatternView;->sx:F

    .line 60
    iput v8, p0, Lcom/android/keyguard/SecLockPatternView;->sy:F

    .line 61
    iput-boolean v7, p0, Lcom/android/keyguard/SecLockPatternView;->mIsUsedThemePattern:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_pattern_normal_image:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_pattern_success_image:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/keyguard/R$bool;->theme_use_pattern_failed_image:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/SecLockPatternView;->mIsUsedThemePattern:Z

    .line 79
    iget-boolean v5, p0, Lcom/android/keyguard/SecLockPatternView;->mIsUsedThemePattern:Z

    if-nez v5, :cond_2

    .line 80
    iget-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->TAG:Ljava/lang/String;

    const-string v6, "do not use SecLockPatternView"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void

    :cond_1
    move v5, v7

    .line 75
    goto :goto_0

    .line 84
    :cond_2
    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 85
    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 86
    sget v5, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v5}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 89
    const/4 v5, 0x3

    new-array v2, v5, [Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v5, v2, v7

    iget-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v5, v2, v6

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v6, v2, v5

    .line 93
    .local v2, "bitmaps":[Landroid/graphics/Bitmap;
    move-object v0, v2

    .local v0, "arr$":[Landroid/graphics/Bitmap;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 94
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    if-nez v1, :cond_3

    move v5, v7

    :goto_2
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 95
    iget v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    if-nez v1, :cond_4

    move v5, v7

    :goto_3
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto :goto_3
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z
    .param p5, "i"    # I
    .param p6, "j"    # I

    .prologue
    .line 184
    if-eqz p4, :cond_0

    iget-boolean v7, p0, Lcom/android/keyguard/SecLockPatternView;->mInStealthMode:Z

    if-eqz v7, :cond_2

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 201
    .local v3, "outerCircle":Landroid/graphics/Bitmap;
    :goto_0
    iget v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    .line 202
    .local v6, "width":I
    iget v0, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    .line 204
    .local v0, "height":I
    iget v5, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    .line 205
    .local v5, "squareWidth":F
    iget v4, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    .line 207
    .local v4, "squareHeight":F
    int-to-float v7, v6

    sub-float v7, v5, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v1, v7

    .line 208
    .local v1, "offsetX":I
    int-to-float v7, v0

    sub-float v7, v4, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 210
    .local v2, "offsetY":I
    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SecLockPatternView;->sx:F

    .line 211
    iget v7, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SecLockPatternView;->sy:F

    .line 213
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v8, p2, v1

    int-to-float v8, v8

    add-int v9, p3, v2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 214
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 215
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->sx:F

    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->sy:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 216
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 218
    if-eqz v3, :cond_1

    .line 219
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/keyguard/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 220
    :cond_1
    return-void

    .line 187
    .end local v0    # "height":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    .end local v4    # "squareHeight":F
    .end local v5    # "squareWidth":F
    .end local v6    # "width":I
    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 190
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v7, v8, :cond_4

    .line 192
    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 193
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v7, v8, :cond_6

    .line 196
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 198
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown display mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private getLineRadius()F
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/keyguard/SecLockPatternView;->mDiameterFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 355
    .local v1, "orgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->theme_keyguard_pattern_dot_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 357
    .local v0, "dot_size":I
    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 0
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 102
    return-void
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/SecLockPatternView;->mIsUsedThemePattern:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 107
    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v19

    .line 113
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 114
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 115
    const/4 v12, 0x0

    .line 116
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_9

    .line 117
    if-ge v11, v7, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 118
    .local v23, "x":F
    :goto_2
    if-ge v11, v7, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 119
    .local v24, "y":F
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/SecLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 120
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 121
    .local v18, "patternSize":I
    if-eqz v8, :cond_2

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 122
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->notifyPatternStarted()V

    .line 126
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 127
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 128
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_3

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_4

    .line 129
    :cond_3
    const/4 v12, 0x1

    .line 132
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    if-lez v18, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 134
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 135
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 136
    .local v14, "lastCellCenterX":F
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 139
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v16, v25, v26

    .line 140
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v20, v25, v26

    .line 141
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    sub-float v21, v25, v26

    .line 142
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v25, v25, v19

    const/high16 v26, 0x41a00000    # 20.0f

    add-float v3, v25, v26

    .line 145
    .local v3, "bottom":F
    if-eqz v8, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    .line 147
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    .line 148
    .local v6, "height":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 149
    .local v9, "hitCellCenterX":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 151
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 152
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 153
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 154
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 158
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .line 116
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 117
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_2

    .line 118
    .restart local v23    # "x":F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_3

    .line 162
    .end local v23    # "x":F
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    .line 166
    if-eqz v12, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SecLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/SecLockPatternView$PatternUpdatorCallback;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/SecLockPatternView$PatternUpdatorCallback;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/keyguard/SecLockPatternView$PatternUpdatorCallback;->invalidateParentView()V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/SecLockPatternView;->mIsUsedThemePattern:Z

    if-nez v4, :cond_1

    .line 225
    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->onDraw(Landroid/graphics/Canvas;)V

    .line 351
    :cond_0
    return-void

    .line 227
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 228
    .local v32, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 229
    .local v16, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v19, v0

    .line 231
    .local v19, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_4

    .line 236
    add-int/lit8 v4, v16, 0x1

    mul-int/lit16 v0, v4, 0x2bc

    move/from16 v29, v0

    .line 237
    .local v29, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/keyguard/SecLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    rem-int v35, v4, v29

    .line 239
    .local v35, "spotInCycle":I
    move/from16 v0, v35

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v28, v0

    .line 241
    .local v28, "numCircles":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->clearPatternDrawLookup()V

    .line 242
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v28

    if-ge v9, v0, :cond_2

    .line 243
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 244
    .local v12, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v19, v4

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 242
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 249
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_2
    if-lez v28, :cond_9

    move/from16 v0, v28

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    const/16 v26, 0x1

    .line 252
    .local v26, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v26, :cond_3

    .line 253
    move/from16 v0, v35

    rem-int/lit16 v4, v0, 0x2bc

    int-to-float v4, v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float v33, v4, v5

    .line 257
    .local v33, "percentageOfNextCircle":F
    add-int/lit8 v4, v28, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 258
    .local v17, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    .line 259
    .local v13, "centerX":F
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 261
    .local v14, "centerY":F
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 262
    .local v27, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v4

    sub-float/2addr v4, v13

    mul-float v21, v33, v4

    .line 264
    .local v21, "dx":F
    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v4

    sub-float/2addr v4, v14

    mul-float v22, v33, v4

    .line 266
    .local v22, "dy":F
    add-float v4, v13, v21

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    .line 267
    add-float v4, v14, v22

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    .line 270
    .end local v13    # "centerX":F
    .end local v14    # "centerY":F
    .end local v17    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v21    # "dx":F
    .end local v22    # "dy":F
    .end local v27    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v33    # "percentageOfNextCircle":F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->invalidate()V

    .line 273
    .end local v9    # "i":I
    .end local v26    # "needToUpdateInProgressPoint":Z
    .end local v28    # "numCircles":I
    .end local v29    # "oneCycle":I
    .end local v35    # "spotInCycle":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareWidth:F

    move/from16 v37, v0

    .line 274
    .local v37, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mSquareHeight:F

    move/from16 v36, v0

    .line 276
    .local v36, "squareHeight":F
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getLineRadius()F

    move-result v34

    .line 277
    .local v34, "radius":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 278
    const/16 v15, 0x80

    .line 279
    .local v15, "color":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SecLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    .line 282
    .local v18, "currentPath":Landroid/graphics/Path;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 287
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInStealthMode:Z

    if-nez v4, :cond_a

    const/16 v20, 0x1

    .line 288
    .local v20, "drawPath":Z
    :goto_2
    if-eqz v20, :cond_5

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->theme_use_pattern_line_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_pattern_line_color:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    :cond_5
    if-eqz v20, :cond_8

    .line 294
    const/4 v11, 0x0

    .line 295
    .local v11, "anyCircles":Z
    const/16 v23, 0x0

    .line 296
    .local v23, "lastX":F
    const/16 v24, 0x0

    .line 297
    .local v24, "lastY":F
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 298
    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 303
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v19, v4

    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v4, v4, v5

    if-nez v4, :cond_b

    .line 326
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternInProgress:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_8

    :cond_7
    if-eqz v11, :cond_8

    .line 328
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 329
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 330
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/SecLockPatternView;->mInProgressY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 339
    .end local v9    # "i":I
    .end local v11    # "anyCircles":Z
    .end local v23    # "lastX":F
    .end local v24    # "lastY":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPaddingTop:I

    move/from16 v31, v0

    .line 340
    .local v31, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SecLockPatternView;->mPaddingLeft:I

    move/from16 v30, v0

    .line 342
    .local v30, "paddingLeft":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    const/4 v4, 0x3

    if-ge v9, v4, :cond_0

    .line 343
    move/from16 v0, v31

    int-to-float v4, v0

    int-to-float v5, v9

    mul-float v5, v5, v36

    add-float v39, v4, v5

    .line 345
    .local v39, "topY":F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    const/4 v4, 0x3

    if-ge v10, v4, :cond_e

    .line 346
    move/from16 v0, v30

    int-to-float v4, v0

    int-to-float v5, v10

    mul-float v5, v5, v37

    add-float v25, v4, v5

    .line 347
    .local v25, "leftX":F
    move/from16 v0, v25

    float-to-int v6, v0

    move/from16 v0, v39

    float-to-int v7, v0

    aget-object v4, v19, v9

    aget-boolean v8, v4, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    .line 345
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 249
    .end local v10    # "j":I
    .end local v15    # "color":I
    .end local v18    # "currentPath":Landroid/graphics/Path;
    .end local v20    # "drawPath":Z
    .end local v25    # "leftX":F
    .end local v30    # "paddingLeft":I
    .end local v31    # "paddingTop":I
    .end local v34    # "radius":F
    .end local v36    # "squareHeight":F
    .end local v37    # "squareWidth":F
    .end local v39    # "topY":F
    .restart local v28    # "numCircles":I
    .restart local v29    # "oneCycle":I
    .restart local v35    # "spotInCycle":I
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 287
    .end local v9    # "i":I
    .end local v28    # "numCircles":I
    .end local v29    # "oneCycle":I
    .end local v35    # "spotInCycle":I
    .restart local v15    # "color":I
    .restart local v18    # "currentPath":Landroid/graphics/Path;
    .restart local v34    # "radius":F
    .restart local v36    # "squareHeight":F
    .restart local v37    # "squareWidth":F
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 306
    .restart local v9    # "i":I
    .restart local v11    # "anyCircles":Z
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v20    # "drawPath":Z
    .restart local v23    # "lastX":F
    .restart local v24    # "lastY":F
    :cond_b
    const/4 v11, 0x1

    .line 308
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v13

    .line 309
    .restart local v13    # "centerX":F
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/SecLockPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 310
    .restart local v14    # "centerY":F
    if-eqz v9, :cond_c

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v4, v5

    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v38, v4, v5

    .line 312
    .local v38, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 313
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 314
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_d

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_d

    .line 315
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 319
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 321
    .end local v38    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_c
    move/from16 v23, v13

    .line 322
    move/from16 v24, v14

    .line 297
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 317
    .restart local v38    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6

    .line 342
    .end local v11    # "anyCircles":Z
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13    # "centerX":F
    .end local v14    # "centerY":F
    .end local v23    # "lastX":F
    .end local v24    # "lastY":F
    .end local v38    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .restart local v10    # "j":I
    .restart local v30    # "paddingLeft":I
    .restart local v31    # "paddingTop":I
    .restart local v39    # "topY":F
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method
