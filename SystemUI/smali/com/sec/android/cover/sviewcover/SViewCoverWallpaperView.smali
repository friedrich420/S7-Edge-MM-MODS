.class public Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWallpaperView.java"


# static fields
.field static COLOR_LIMIT_RATIO:F

.field static DEFAULT_BLENDING_ALPHA:F

.field static WHITE_IMAGE_DEFAULT_COLOR:I

.field static WHITE_IMAGE_THRESHOLD:I


# instance fields
.field private mBgImageView:Landroid/widget/ImageView;

.field private mBlendingColor:I

.field private mCurCustomWallpaperPath:Ljava/lang/String;

.field private mCurWallpaperType:I

.field private mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 35
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    .line 36
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    .line 37
    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    .line 38
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 48
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 52
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 48
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 57
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 48
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 62
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->init()V

    .line 63
    return-void
.end method

.method public static getDominentColor(Landroid/graphics/Bitmap;)I
    .locals 42
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    const/16 v39, 0x0

    .line 392
    :goto_0
    return v39

    .line 286
    :cond_0
    const-wide/16 v34, 0x0

    .line 287
    .local v34, "sumR":J
    const-wide/16 v32, 0x0

    .line 288
    .local v32, "sumG":J
    const-wide/16 v30, 0x0

    .line 289
    .local v30, "sumB":J
    const-wide/16 v26, 0x0

    .line 291
    .local v26, "sampleCount":J
    const-wide/16 v22, 0x0

    .line 292
    .local v22, "lowestR":J
    const-wide/16 v20, 0x0

    .line 293
    .local v20, "lowestG":J
    const-wide/16 v18, 0x0

    .line 295
    .local v18, "lowestB":J
    const-wide/16 v10, 0x0

    .line 296
    .local v10, "curR":J
    const-wide/16 v8, 0x0

    .line 297
    .local v8, "curG":J
    const-wide/16 v6, 0x0

    .line 299
    .local v6, "curB":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 302
    .local v28, "startTime":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v36

    .line 303
    .local v36, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 306
    .local v17, "h":I
    move/from16 v0, v36

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v25, v0

    .line 307
    .local v25, "step":I
    :goto_1
    if-gtz v25, :cond_1

    .line 308
    const/16 v25, 0x1

    .line 311
    :cond_1
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_2
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_b

    .line 312
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_3
    move/from16 v0, v38

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 313
    if-eqz v37, :cond_2

    if-nez v38, :cond_4

    .line 312
    :cond_2
    :goto_4
    add-int v38, v38, v25

    goto :goto_3

    .line 306
    .end local v25    # "step":I
    .end local v37    # "x":I
    .end local v38    # "y":I
    :cond_3
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v39, v0

    const/high16 v40, 0x42c80000    # 100.0f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v25, v0

    goto :goto_1

    .line 315
    .restart local v25    # "step":I
    .restart local v37    # "x":I
    .restart local v38    # "y":I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 316
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v10, v0

    .line 317
    add-long v34, v34, v10

    .line 318
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v8, v0

    .line 319
    add-long v32, v32, v8

    .line 320
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v39

    move/from16 v0, v39

    int-to-long v6, v0

    .line 321
    add-long v30, v30, v6

    .line 322
    const-wide/16 v40, 0x1

    add-long v26, v26, v40

    .line 324
    cmp-long v39, v22, v10

    if-gtz v39, :cond_5

    const-wide/16 v40, 0x0

    cmp-long v39, v22, v40

    if-nez v39, :cond_6

    :cond_5
    move-wide/from16 v22, v10

    .line 325
    :cond_6
    cmp-long v39, v20, v8

    if-gtz v39, :cond_7

    const-wide/16 v40, 0x0

    cmp-long v39, v20, v40

    if-nez v39, :cond_8

    :cond_7
    move-wide/from16 v20, v8

    .line 326
    :cond_8
    cmp-long v39, v18, v6

    if-gtz v39, :cond_9

    const-wide/16 v40, 0x0

    cmp-long v39, v18, v40

    if-nez v39, :cond_2

    :cond_9
    move-wide/from16 v18, v6

    goto :goto_4

    .line 311
    .end local v4    # "color":I
    :cond_a
    add-int v37, v37, v25

    goto :goto_2

    .line 330
    .end local v38    # "y":I
    :cond_b
    const/4 v13, 0x0

    .local v13, "everageR":I
    const/4 v5, 0x0

    .local v5, "everageB":I
    const/4 v12, 0x0

    .line 331
    .local v12, "everageG":I
    const/16 v16, 0x0

    .local v16, "finalR":I
    const/4 v15, 0x0

    .local v15, "finalG":I
    const/4 v14, 0x0

    .line 333
    .local v14, "finalB":I
    div-long v40, v34, v26

    move-wide/from16 v0, v40

    long-to-int v13, v0

    .line 334
    div-long v40, v32, v26

    move-wide/from16 v0, v40

    long-to-int v12, v0

    .line 335
    div-long v40, v30, v26

    move-wide/from16 v0, v40

    long-to-int v5, v0

    .line 337
    const/16 v24, 0x0

    .line 339
    .local v24, "ratio":F
    int-to-long v0, v13

    move-wide/from16 v40, v0

    cmp-long v39, v40, v22

    if-lez v39, :cond_10

    .line 340
    int-to-long v0, v13

    move-wide/from16 v40, v0

    sub-long v40, v40, v22

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v39, v0

    int-to-float v0, v13

    move/from16 v40, v0

    div-float v24, v39, v40

    .line 341
    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v39, v24, v39

    if-lez v39, :cond_c

    .line 342
    sget v24, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    .line 345
    :cond_c
    const/16 v39, 0x0

    cmpl-float v39, v24, v39

    if-lez v39, :cond_f

    .line 346
    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v24

    int-to-float v0, v13

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v16, v0

    .line 354
    :goto_5
    int-to-long v0, v12

    move-wide/from16 v40, v0

    cmp-long v39, v40, v20

    if-lez v39, :cond_12

    .line 355
    int-to-long v0, v12

    move-wide/from16 v40, v0

    sub-long v40, v40, v20

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v39, v0

    int-to-float v0, v12

    move/from16 v40, v0

    div-float v24, v39, v40

    .line 356
    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v39, v24, v39

    if-lez v39, :cond_d

    .line 357
    sget v24, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    .line 360
    :cond_d
    const/16 v39, 0x0

    cmpl-float v39, v24, v39

    if-lez v39, :cond_11

    .line 361
    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v24

    int-to-float v0, v12

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v15, v0

    .line 369
    :goto_6
    int-to-long v0, v5

    move-wide/from16 v40, v0

    cmp-long v39, v40, v18

    if-lez v39, :cond_14

    .line 370
    int-to-long v0, v5

    move-wide/from16 v40, v0

    sub-long v40, v40, v18

    move-wide/from16 v0, v40

    long-to-float v0, v0

    move/from16 v39, v0

    int-to-float v0, v5

    move/from16 v40, v0

    div-float v24, v39, v40

    .line 371
    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    cmpl-float v39, v24, v39

    if-lez v39, :cond_e

    .line 372
    sget v24, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->COLOR_LIMIT_RATIO:F

    .line 375
    :cond_e
    const/16 v39, 0x0

    cmpl-float v39, v24, v39

    if-lez v39, :cond_13

    .line 376
    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v24

    int-to-float v0, v5

    move/from16 v40, v0

    mul-float v39, v39, v40

    move/from16 v0, v39

    float-to-int v14, v0

    .line 384
    :goto_7
    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v39

    if-le v0, v1, :cond_15

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v39

    if-le v15, v0, :cond_15

    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_THRESHOLD:I

    move/from16 v0, v39

    if-le v14, v0, :cond_15

    .line 385
    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    goto/16 :goto_0

    .line 348
    :cond_f
    move/from16 v16, v13

    goto :goto_5

    .line 351
    :cond_10
    move/from16 v16, v13

    goto :goto_5

    .line 363
    :cond_11
    move v15, v12

    goto :goto_6

    .line 366
    :cond_12
    move v15, v12

    goto :goto_6

    .line 378
    :cond_13
    move v14, v5

    goto :goto_7

    .line 381
    :cond_14
    move v14, v5

    goto :goto_7

    .line 388
    :cond_15
    const/16 v39, 0xff

    move/from16 v0, v39

    move/from16 v1, v16

    invoke-static {v0, v1, v15, v14}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v39

    goto/16 :goto_0

    .line 389
    .end local v5    # "everageB":I
    .end local v12    # "everageG":I
    .end local v13    # "everageR":I
    .end local v14    # "finalB":I
    .end local v15    # "finalG":I
    .end local v16    # "finalR":I
    .end local v17    # "h":I
    .end local v24    # "ratio":F
    .end local v25    # "step":I
    .end local v36    # "w":I
    .end local v37    # "x":I
    :catch_0
    move-exception v39

    .line 392
    sget v39, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->WHITE_IMAGE_DEFAULT_COLOR:I

    goto/16 :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    .line 69
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    .line 70
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->mainbg_pattern_mainarea:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->addView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method private static isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z
    .locals 15
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 401
    const/4 v7, 0x0

    .local v7, "sumSaturation":F
    const/4 v8, 0x0

    .local v8, "sumValue":F
    const/4 v0, 0x0

    .local v0, "curSaturation":F
    const/4 v1, 0x0

    .line 402
    .local v1, "curValue":F
    const/4 v13, 0x3

    :try_start_0
    new-array v3, v13, [F

    .line 403
    .local v3, "pixelHSV":[F
    const/4 v4, 0x0

    .line 405
    .local v4, "sampleCount":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 406
    .local v10, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 408
    .local v2, "h":I
    if-le v10, v2, :cond_1

    int-to-float v13, v2

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    float-to-int v6, v13

    .line 409
    .local v6, "step":I
    :goto_0
    if-gtz v6, :cond_0

    .line 410
    const/4 v6, 0x1

    .line 412
    :cond_0
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    if-ge v11, v10, :cond_3

    .line 413
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_2
    if-ge v12, v2, :cond_2

    .line 414
    invoke-virtual {p0, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    invoke-static {v13, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 415
    const/4 v13, 0x1

    aget v13, v3, v13

    add-float/2addr v7, v13

    .line 416
    const/4 v13, 0x2

    aget v13, v3, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v8, v13

    .line 417
    add-int/lit8 v4, v4, 0x1

    .line 413
    add-int/2addr v12, v6

    goto :goto_2

    .line 408
    .end local v6    # "step":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_1
    int-to-float v13, v10

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    float-to-int v6, v13

    goto :goto_0

    .line 412
    .restart local v6    # "step":I
    .restart local v11    # "x":I
    .restart local v12    # "y":I
    :cond_2
    add-int/2addr v11, v6

    goto :goto_1

    .line 420
    .end local v12    # "y":I
    :cond_3
    int-to-float v13, v4

    div-float v5, v7, v13

    .line 421
    .local v5, "sat":F
    int-to-float v13, v4

    div-float v9, v8, v13

    .line 423
    .local v9, "val":F
    const v13, 0x3cf5c28f    # 0.03f

    cmpg-float v13, v5, v13

    if-gez v13, :cond_4

    const v13, 0x3f6147ae    # 0.88f

    cmpl-float v13, v9, v13

    if-ltz v13, :cond_4

    .line 424
    const/4 v13, 0x1

    .line 427
    .end local v2    # "h":I
    .end local v3    # "pixelHSV":[F
    .end local v4    # "sampleCount":I
    .end local v5    # "sat":F
    .end local v6    # "step":I
    .end local v9    # "val":F
    .end local v10    # "w":I
    .end local v11    # "x":I
    :goto_3
    return v13

    .line 426
    :catch_0
    move-exception v13

    .line 427
    :cond_4
    const/4 v13, 0x0

    goto :goto_3
.end method

.method private setPreLoadWallpaperImage()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v3

    add-int/lit8 v1, v3, -0xa

    .line 83
    .local v1, "index":I
    const-string v3, "SViewCoverWallpaperView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverWallpaperView wallpaper DB values :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v0

    .line 86
    .local v0, "drawbleId":I
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 91
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 92
    .local v2, "isWhite":Z
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "white_cover_wallpaper"

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    .line 94
    const/4 v3, 0x5

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 95
    return-void

    :cond_1
    move v3, v4

    .line 92
    goto :goto_0
.end method


# virtual methods
.method public setAlphaBlending()V
    .locals 14

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/16 v12, 0x6e

    .line 243
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 244
    new-instance v9, Landroid/graphics/ImageFilterSet;

    invoke-direct {v9}, Landroid/graphics/ImageFilterSet;-><init>()V

    .line 245
    .local v9, "filterSet":Landroid/graphics/ImageFilterSet;
    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v8

    check-cast v8, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 247
    .local v8, "filterAll":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    const/16 v3, 0x34

    invoke-static {v3}, Landroid/graphics/ImageFilter;->createImageFilter(I)Landroid/graphics/ImageFilter;

    move-result-object v0

    check-cast v0, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;

    .line 251
    .local v0, "filterTop":Landroid/graphics/ImageFilter$BitmapColorMaskFilter;
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v11, v3

    .line 252
    .local v11, "r":F
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v10, v3

    .line 253
    .local v10, "g":F
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v7, v3

    .line 255
    .local v7, "b":F
    div-float/2addr v11, v13

    .line 256
    div-float/2addr v10, v13

    .line 257
    div-float/2addr v7, v13

    .line 259
    sget v3, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->DEFAULT_BLENDING_ALPHA:F

    invoke-virtual {v8, v11, v10, v7, v3}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setColor(FFFF)V

    .line 262
    invoke-virtual {v0}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->resetGradient()V

    .line 263
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc8

    if-le v3, v4, :cond_0

    .line 264
    const/16 v3, 0x73

    invoke-static {v3, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    .line 275
    :goto_0
    invoke-virtual {v9, v0}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 276
    invoke-virtual {v9, v8}, Landroid/graphics/ImageFilterSet;->addFilter(Landroid/graphics/ImageFilter;)V

    .line 278
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageFilter(Landroid/graphics/ImageFilter;)Z

    .line 279
    return-void

    .line 269
    :cond_0
    const/16 v3, 0x73

    iget v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v12, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v3, v4, v6, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v12, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v12

    iget v13, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v4, v6, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/ImageFilter$BitmapColorMaskFilter;->setGradient(FFIFFI)V

    goto :goto_0
.end method

.method public setCustomWallpaperImage(Ljava/lang/String;Z)V
    .locals 18
    .param p1, "wallpaperFilePath"    # Ljava/lang/String;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v15}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperFilePathName()Ljava/lang/String;

    move-result-object p1

    .line 102
    :cond_0
    const-string v15, "SViewCoverWallpaperView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setCustomWallpaperImage : Current wallpaper type = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Path="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Force="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v15, 0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 108
    :cond_1
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 110
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 112
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v13, v15

    .line 114
    .local v13, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v16, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v12, v15

    .line 117
    .local v12, "screenHeight":I
    move-object/from16 v0, p1

    invoke-static {v0, v13, v12}, Lcom/sec/android/cover/CoverUtils;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v15

    iput v15, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 119
    const/4 v2, 0x0

    .line 123
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 124
    if-nez v2, :cond_2

    .line 167
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    :goto_0
    return-void

    .line 126
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "screenHeight":I
    .restart local v13    # "screenWidth":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 127
    .local v4, "bitmapWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 128
    .local v3, "bitmapHeight":I
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-le v4, v13, :cond_3

    if-le v3, v12, :cond_3

    .line 129
    if-lt v13, v12, :cond_4

    .line 130
    int-to-float v15, v13

    int-to-float v0, v4

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 131
    .local v10, "scaledRatio":F
    int-to-float v15, v3

    mul-float/2addr v15, v10

    float-to-int v9, v15

    .line 132
    .local v9, "scaledHeight":I
    const/4 v15, 0x1

    invoke-static {v2, v13, v9, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    .end local v9    # "scaledHeight":I
    .end local v10    # "scaledRatio":F
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v7

    .line 145
    .local v7, "isWhite":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "white_cover_wallpaper"

    if-eqz v7, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v14, v15, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 148
    .local v14, "wallpaper":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 149
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getDominentColor(Landroid/graphics/Bitmap;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 155
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    .line 158
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 159
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurCustomWallpaperPath:Ljava/lang/String;

    goto :goto_0

    .line 134
    .end local v7    # "isWhite":Z
    .end local v14    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_4
    int-to-float v15, v12

    int-to-float v0, v3

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 135
    .restart local v10    # "scaledRatio":F
    int-to-float v15, v4

    mul-float/2addr v15, v10

    float-to-int v11, v15

    .line 136
    .local v11, "scaledWidth":I
    const/4 v15, 0x1

    :try_start_1
    invoke-static {v2, v11, v12, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 139
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v10    # "scaledRatio":F
    .end local v11    # "scaledWidth":I
    :catch_0
    move-exception v5

    .line 140
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "bitmapHeight":I
    .restart local v4    # "bitmapWidth":I
    .restart local v7    # "isWhite":Z
    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 151
    .restart local v14    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const v16, 0x106000c

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const/16 v16, 0x4d

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_3

    .line 161
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapHeight":I
    .end local v4    # "bitmapWidth":I
    .end local v7    # "isWhite":Z
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "screenHeight":I
    .end local v13    # "screenWidth":I
    .end local v14    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_7
    const-string v15, "SViewCoverWallpaperView"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setCustomWallpaperImage : Custom wallpaper file not exist : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    .end local v6    # "file":Ljava/io/File;
    :cond_8
    const-string v15, "SViewCoverWallpaperView"

    const-string v16, "setCustomWallpaperImage : Wallpaer update skipped"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEmergencyModeWallpaperImage(Z)V
    .locals 4
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v3, 0x4

    .line 209
    const-string v0, "SViewCoverWallpaperView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmergencyModeWallpaperImage : Use emergency mode wallpaper - Current wallpaper type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v0, v3, :cond_1

    .line 215
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    .line 217
    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 219
    :cond_1
    return-void
.end method

.method public setKidsModeWallpaperImage(Z)V
    .locals 10
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    const-string v6, "SViewCoverWallpaperView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setKidsModeWallpaperImage : Use kids mode wallpaper - Current wallpaper type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eq p1, v4, :cond_0

    iget v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    if-eq v6, v9, :cond_3

    .line 176
    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/sec/android/sviewcover/R$drawable;->sview_cover_kids_wallpaper:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 178
    .local v1, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 180
    .local v3, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_1

    .line 181
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 184
    .restart local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 191
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 192
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getDominentColor(Landroid/graphics/Bitmap;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBlendingColor:I

    .line 198
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->isWhiteCoverWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 199
    .local v2, "isWhite":Z
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "white_cover_wallpaper"

    if-eqz v2, :cond_5

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {p0, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setVisibility(I)V

    .line 204
    .end local v2    # "isWhite":Z
    :cond_2
    iput v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mCurWallpaperType:I

    .line 206
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    return-void

    .line 185
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v3    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    const v7, 0x106000c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1

    .restart local v2    # "isWhite":Z
    :cond_5
    move v4, v5

    .line 199
    goto :goto_2
.end method

.method public setProperWallpaper(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 226
    .local v1, "isPreLoadWallpaper":Z
    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setEmergencyModeWallpaperImage(Z)V

    .line 237
    :goto_0
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setAlphaBlending()V

    .line 240
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setKidsModeWallpaperImage(Z)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->isCustomWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setCustomWallpaperImage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setPreLoadWallpaperImage()V

    .line 234
    const/4 v1, 0x1

    goto :goto_0
.end method
