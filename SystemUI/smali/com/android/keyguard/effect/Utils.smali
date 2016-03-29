.class public Lcom/android/keyguard/effect/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_CSC_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/csc_contents/lockscreen_default_wallpaper.png"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.jpg"

.field public static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "//system/wallpaper/lockscreen_default_wallpaper.png"

.field public static final KEY_CURRENT_WALLPAPER_FILE_PATH:Ljava/lang/String; = "keyguard_current_wallpaper_file_path"

.field public static final KEY_CURRENT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_current_wallpaper_res_id"

.field public static final KEY_CURRENT_WALLPAPER_TYPE:Ljava/lang/String; = "keyguard_current_wallpaper_type"

.field public static final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String; = "keyguard_default_wallpaper_res_id"

.field public static final LAYERED_WALLPAPER_SUFFIX:Ljava/lang/String; = "_layered"

.field public static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

.field private static final RIL_SYSTEM_PROPERTY_FOR_COLOR_CODE:Ljava/lang/String; = "ril.product_code"

.field public static final SHARED_WALLPAPER_TYPE_FILE:I = 0x1

.field public static final SHARED_WALLPAPER_TYPE_NONE:I = 0x0

.field public static final SHARED_WALLPAPER_TYPE_RESOURCE:I = 0x2

.field private static final SUPPORT_CMF_COLOR_CODE:Z = false

.field private static final SUPPORT_LAYERED_WALLPAPER:Z

.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewUtils"

.field public static final WALLPAPER_TYPE_FILE:I = 0x1

.field public static final WALLPAPER_TYPE_LIVE:I = 0x0

.field public static final WALLPAPER_TYPE_LIVE_YAHOO:I = 0x2

.field public static final WALLPAPER_TYPE_OPENTHEME:I = 0x4

.field public static final WALLPAPER_TYPE_SAVEMODE:I = 0x3

.field private static mColorCodePollingThread:Ljava/lang/Thread;

.field private static mWallpaperPath:Ljava/lang/String;

.field private static mWallpaperResId:I

.field private static mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/effect/Utils;->mWallpaperPath:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/effect/Utils;->mWallpaperResId:I

    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I

    .line 78
    sget-boolean v0, Lcom/android/keyguard/util/KeyguardProperties;->SUPPORT_LAYERED_WALLPAPER:Z

    sput-boolean v0, Lcom/android/keyguard/effect/Utils;->SUPPORT_LAYERED_WALLPAPER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 459
    if-nez p0, :cond_0

    .line 486
    .end local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object p1

    .line 463
    .restart local p1    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 466
    .local v3, "pBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    const/4 v3, 0x0

    .line 468
    invoke-static {p0, p1}, Lcom/android/keyguard/effect/Utils;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 473
    .end local v3    # "pBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/effect/Utils;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 474
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 476
    .local v2, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 477
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 480
    .restart local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_2
    :goto_1
    invoke-static {p0, v2}, Lcom/android/keyguard/effect/Utils;->writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;I)[Z
    .locals 18
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "statusbarHeight"    # I

    .prologue
    .line 490
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v6, v0, [Z

    fill-array-data v6, :array_0

    .line 493
    .local v6, "ret":[Z
    if-nez p0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-object v6

    .line 498
    :cond_1
    const/4 v10, 0x0

    .local v10, "sumSaturation":F
    const/4 v11, 0x0

    .local v11, "sumValue":F
    const/4 v1, 0x0

    .local v1, "curSaturation":F
    const/4 v2, 0x0

    .line 499
    .local v2, "curValue":F
    const/16 v16, 0x3

    :try_start_0
    move/from16 v0, v16

    new-array v5, v0, [F

    .line 500
    .local v5, "pixelHSV":[F
    const/4 v7, 0x0

    .line 502
    .local v7, "sampleCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 503
    .local v13, "w":I
    move/from16 v3, p1

    .line 505
    .local v3, "h":I
    if-le v13, v3, :cond_3

    int-to-float v0, v3

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v9, v0

    .line 506
    .local v9, "step":I
    :goto_1
    if-gtz v9, :cond_2

    .line 507
    const/4 v9, 0x1

    .line 509
    :cond_2
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_2
    if-ge v14, v13, :cond_5

    .line 510
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_3
    if-ge v15, v3, :cond_4

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v0, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 512
    const/16 v16, 0x1

    aget v16, v5, v16

    add-float v10, v10, v16

    .line 513
    const/16 v16, 0x2

    aget v16, v5, v16

    add-float v11, v11, v16

    .line 514
    add-int/lit8 v7, v7, 0x1

    .line 510
    add-int/2addr v15, v9

    goto :goto_3

    .line 505
    .end local v9    # "step":I
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_3
    int-to-float v0, v13

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v9, v0

    goto :goto_1

    .line 509
    .restart local v9    # "step":I
    .restart local v14    # "x":I
    .restart local v15    # "y":I
    :cond_4
    add-int/2addr v14, v9

    goto :goto_2

    .line 517
    .end local v15    # "y":I
    :cond_5
    int-to-float v0, v7

    move/from16 v16, v0

    div-float v8, v10, v16

    .line 518
    .local v8, "sat":F
    int-to-float v0, v7

    move/from16 v16, v0

    div-float v12, v11, v16

    .line 520
    .local v12, "val":F
    const v16, 0x3e4ccccd    # 0.2f

    cmpg-float v16, v8, v16

    if-gez v16, :cond_6

    const v16, 0x3f733333    # 0.95f

    cmpl-float v16, v12, v16

    if-ltz v16, :cond_6

    .line 521
    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v6, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    .end local v3    # "h":I
    .end local v5    # "pixelHSV":[F
    .end local v7    # "sampleCount":I
    .end local v8    # "sat":F
    .end local v9    # "step":I
    .end local v12    # "val":F
    .end local v13    # "w":I
    .end local v14    # "x":I
    :cond_6
    :goto_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 529
    const/16 v16, 0x3

    :try_start_1
    move/from16 v0, v16

    new-array v5, v0, [F

    .line 530
    .restart local v5    # "pixelHSV":[F
    const/4 v7, 0x0

    .line 532
    .restart local v7    # "sampleCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 533
    .restart local v13    # "w":I
    move/from16 v4, p1

    .line 534
    .local v4, "m":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 536
    .restart local v3    # "h":I
    sub-int v16, v3, v4

    move/from16 v0, v16

    if-le v13, v0, :cond_8

    sub-int v16, v3, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v9, v0

    .line 537
    .restart local v9    # "step":I
    :goto_5
    if-gtz v9, :cond_7

    .line 538
    const/4 v9, 0x1

    .line 540
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "x":I
    :goto_6
    if-ge v14, v13, :cond_a

    .line 541
    move v15, v4

    .restart local v15    # "y":I
    :goto_7
    if-ge v15, v3, :cond_9

    .line 542
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v0, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 543
    const/16 v16, 0x1

    aget v16, v5, v16

    add-float v10, v10, v16

    .line 544
    const/16 v16, 0x2

    aget v16, v5, v16

    add-float v11, v11, v16

    .line 545
    add-int/lit8 v7, v7, 0x1

    .line 541
    add-int/2addr v15, v9

    goto :goto_7

    .line 536
    .end local v9    # "step":I
    .end local v14    # "x":I
    .end local v15    # "y":I
    :cond_8
    int-to-float v0, v13

    move/from16 v16, v0

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v9, v0

    goto :goto_5

    .line 540
    .restart local v9    # "step":I
    .restart local v14    # "x":I
    .restart local v15    # "y":I
    :cond_9
    add-int/2addr v14, v9

    goto :goto_6

    .line 548
    .end local v15    # "y":I
    :cond_a
    int-to-float v0, v7

    move/from16 v16, v0

    div-float v8, v10, v16

    .line 549
    .restart local v8    # "sat":F
    int-to-float v0, v7

    move/from16 v16, v0

    div-float v12, v11, v16

    .line 551
    .restart local v12    # "val":F
    const v16, 0x3e99999a    # 0.3f

    cmpg-float v16, v8, v16

    if-gez v16, :cond_0

    const v16, 0x3f6147ae    # 0.88f

    cmpl-float v16, v12, v16

    if-ltz v16, :cond_0

    .line 552
    const/16 v16, 0x1

    const/16 v17, 0x1

    aput-boolean v17, v6, v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 554
    .end local v3    # "h":I
    .end local v4    # "m":I
    .end local v5    # "pixelHSV":[F
    .end local v7    # "sampleCount":I
    .end local v8    # "sat":F
    .end local v9    # "step":I
    .end local v12    # "val":F
    .end local v13    # "w":I
    .end local v14    # "x":I
    :catch_0
    move-exception v16

    goto/16 :goto_0

    .line 523
    :catch_1
    move-exception v16

    goto :goto_4

    .line 490
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected static createEffectInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/keyguard/effect/KeyguardEffectViewBase;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nameOfClass"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "createdEffect":Lcom/android/keyguard/effect/KeyguardEffectViewBase;
    if-eqz p1, :cond_0

    .line 227
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-object v0, v3

    check-cast v0, Lcom/android/keyguard/effect/KeyguardEffectViewBase;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 252
    :cond_0
    :goto_0
    return-object v1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ClassNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x0

    .line 250
    goto :goto_0

    .line 232
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NoSuchMethodException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, 0x0

    .line 250
    goto :goto_0

    .line 235
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SecurityException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    .line 250
    goto :goto_0

    .line 238
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InstantiationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    .line 250
    goto :goto_0

    .line 241
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalAccessException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    .line 250
    goto/16 :goto_0

    .line 244
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    .line 250
    goto/16 :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " InvocationTargetException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getColorCodeFromFeature(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const-string v0, "zk"

    return-object v0
.end method

.method public static getCurrentWallpaper(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 303
    if-nez p0, :cond_0

    .line 304
    const/4 v10, 0x0

    .line 363
    :goto_0
    return-object v10

    .line 306
    :cond_0
    const/4 v9, 0x1

    .line 307
    .local v9, "wallpaperType":I
    const/4 v8, 0x0

    .line 308
    .local v8, "wallpaperPath":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isMDMWallpaperEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 309
    const-string v8, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    .line 310
    const/4 v9, 0x1

    .line 323
    :goto_1
    if-nez v8, :cond_1

    .line 324
    const-string v8, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    .line 326
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v2, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 330
    .local v6, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 332
    :try_start_0
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v7, v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v7, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    invoke-static {p0, v7}, Lcom/android/keyguard/effect/Utils;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v10

    goto :goto_0

    .line 312
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getLockscreenWallpaperType()I

    move-result v9

    .line 313
    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lockscreen_wallpaper_path"

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lockscreen_wallpaper"

    const/4 v12, 0x1

    const/4 v13, -0x2

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 318
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->setLiveWeatherSettingValue(Z)V

    .line 320
    :cond_3
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getLockScreenWallPaperPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 334
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v1

    .line 335
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    invoke-static {p0}, Lcom/android/keyguard/effect/Utils;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    goto :goto_0

    .line 337
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    if-eqz p1, :cond_6

    .line 340
    invoke-static {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getFd(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 341
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->valid()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 342
    const-string v10, "KeyguardEffectViewUtils"

    const-string v11, "file descriptor ok"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 344
    .local v3, "is":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 346
    .local v5, "wallpaperBitmap":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 352
    :goto_3
    :try_start_3
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v7, v10, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 353
    .end local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_4
    invoke-static {p0, v7}, Lcom/android/keyguard/effect/Utils;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v10

    goto/16 :goto_0

    .line 347
    .end local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_1
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 354
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 355
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_4
    invoke-static {p0}, Lcom/android/keyguard/effect/Utils;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    goto/16 :goto_0

    .line 358
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "is":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v5    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :cond_5
    const-string v10, "KeyguardEffectViewUtils"

    const-string v11, "file descriptor error"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {p0}, Lcom/android/keyguard/effect/Utils;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    goto/16 :goto_0

    .line 363
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_6
    invoke-static {p0}, Lcom/android/keyguard/effect/Utils;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    goto/16 :goto_0

    .line 354
    .end local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "is":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v1

    move-object v6, v7

    .end local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_4

    .line 334
    .end local v3    # "is":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_2
.end method

.method public static getDefaultColorCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/android/keyguard/effect/Utils;->getColorCodeFromFeature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    if-nez p0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    .line 563
    :cond_0
    sget v0, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    sput v0, Lcom/android/keyguard/effect/Utils;->mWallpaperResId:I

    .line 564
    const/4 v0, 0x2

    sput v0, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I

    .line 566
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/effect/Utils;->mWallpaperResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    if-nez p0, :cond_0

    .line 368
    const/16 v17, 0x0

    .line 455
    :goto_0
    return-object v17

    .line 371
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v4, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v5, "fileMultiCSC":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v7, "filePng":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v6, "fileMultiCSCPng":Ljava/io/File;
    const/4 v10, 0x0

    .line 377
    .local v10, "is":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 379
    .local v15, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 380
    .local v2, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 382
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 384
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v10    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    :try_start_1
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 387
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/effect/Utils;->mWallpaperPath:Ljava/lang/String;

    .line 388
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v10, v11

    .line 424
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    if-nez v10, :cond_2

    .line 425
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/effect/Utils;->getDefaultInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v10

    .line 428
    :cond_2
    if-eqz v10, :cond_4

    .line 429
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 430
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    const-string v17, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 431
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 433
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 434
    .local v8, "imageHeight":I
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 435
    .local v9, "imageWidth":I
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    div-int v17, v9, v17

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    div-int v18, v8, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 438
    .local v13, "scaleFactor":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    .line 439
    const/4 v13, 0x1

    .line 441
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 442
    iput v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 443
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 445
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v10, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 446
    .local v14, "wallpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    .end local v15    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 449
    .restart local v15    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 455
    .end local v8    # "imageHeight":I
    .end local v9    # "imageWidth":I
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "scaleFactor":I
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/keyguard/effect/Utils;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v17

    goto/16 :goto_0

    .line 389
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const/4 v10, 0x0

    .line 391
    goto :goto_1

    .line 392
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 394
    :try_start_3
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 395
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_4
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 397
    const-string v17, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/effect/Utils;->mWallpaperPath:Ljava/lang/String;

    .line 398
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v10, v11

    .line 401
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 399
    :catch_1
    move-exception v3

    .line 400
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v10, 0x0

    .line 401
    goto/16 :goto_1

    .line 402
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 404
    :try_start_5
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 405
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_6
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 407
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.png"

    sput-object v17, Lcom/android/keyguard/effect/Utils;->mWallpaperPath:Ljava/lang/String;

    .line 408
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v10, v11

    .line 411
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 409
    :catch_2
    move-exception v3

    .line 410
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    const/4 v10, 0x0

    .line 411
    goto/16 :goto_1

    .line 412
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 414
    :try_start_7
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 415
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :try_start_8
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 417
    const-string v17, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    sput-object v17, Lcom/android/keyguard/effect/Utils;->mWallpaperPath:Ljava/lang/String;

    .line 418
    const/16 v17, 0x1

    sput v17, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    move-object v10, v11

    .line 421
    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 419
    :catch_3
    move-exception v3

    .line 420
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 450
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "imageHeight":I
    .restart local v9    # "imageWidth":I
    .restart local v12    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v13    # "scaleFactor":I
    .restart local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :catch_4
    move-exception v3

    .line 451
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 419
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "imageHeight":I
    .end local v9    # "imageWidth":I
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v13    # "scaleFactor":I
    .end local v14    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 409
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 399
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 389
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private static getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getEffectClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "nameOfEffect"    # Ljava/lang/String;

    .prologue
    .line 215
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.keyguard.effect.KeyguardEffectView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getEffectName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "wallpaperType"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "nameOfEffect":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 101
    :pswitch_0
    const-string v0, "Wallpaper"

    .line 102
    sget-boolean v1, Lcom/android/keyguard/effect/Utils;->SUPPORT_LAYERED_WALLPAPER:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p1}, Lcom/android/keyguard/effect/Utils;->isLayeredWallpaperSet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v0, "Layered"

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :pswitch_1
    const/4 v0, 0x0

    .line 92
    goto :goto_0

    .line 94
    :pswitch_2
    const-string v0, "SavingMode"

    .line 95
    goto :goto_0

    .line 97
    :pswitch_3
    const-string v0, "OpenTheme"

    .line 98
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getLayeredWallpaperColorCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getLockScreenWallPaperPath()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "wallpaperPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    const-string v2, "_layered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, "suffixIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 137
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 142
    .end local v0    # "suffixIndex":I
    :goto_0
    return-object v2

    .line 139
    .restart local v0    # "suffixIndex":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 142
    .end local v0    # "suffixIndex":I
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/effect/Utils;->getDefaultColorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getWallpaperByResId(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 256
    if-nez p0, :cond_0

    .line 299
    :goto_0
    return-object v10

    .line 260
    :cond_0
    const/4 v4, 0x0

    .line 261
    .local v4, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 263
    .local v8, "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 264
    .local v0, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v13, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 266
    if-nez v4, :cond_1

    .line 267
    sput p1, Lcom/android/keyguard/effect/Utils;->mWallpaperResId:I

    .line 268
    const/4 v11, 0x2

    sput v11, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/effect/Utils;->mWallpaperResId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 272
    :cond_1
    if-eqz v4, :cond_3

    .line 273
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 274
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    const-string v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 275
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 277
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 278
    .local v2, "imageHeight":I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 279
    .local v3, "imageWidth":I
    iget v11, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v11, v3, v11

    iget v12, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int v12, v2, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 282
    .local v6, "scaleFactor":I
    if-ge v6, v13, :cond_2

    .line 283
    const/4 v6, 0x1

    .line 285
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 286
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 287
    iput-boolean v13, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 289
    invoke-static {v4, v10, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 290
    .local v7, "wallpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v8, v10, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 293
    .restart local v8    # "wallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v2    # "imageHeight":I
    .end local v3    # "imageWidth":I
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "scaleFactor":I
    .end local v7    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "wm":Landroid/view/WindowManager;
    :cond_3
    :goto_1
    invoke-static {p0, v8}, Lcom/android/keyguard/effect/Utils;->checkWallpaperDrawableAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    goto :goto_0

    .line 294
    .restart local v2    # "imageHeight":I
    .restart local v3    # "imageWidth":I
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "scaleFactor":I
    .restart local v7    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static isLayeredWallpaperSet(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-static {p0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getLockScreenWallPaperPath()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "wallpaperPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "fileName":Ljava/lang/String;
    const-string v3, "_layered"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const/4 v2, 0x1

    .line 127
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 123
    :cond_1
    const-string v3, "KeyguardEffectViewUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyguardProperties.enableOperatorWallpaper() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->enableOperatorWallpaper()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->enableOperatorWallpaper()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    sget-boolean v2, Lcom/android/keyguard/effect/Utils;->SUPPORT_LAYERED_WALLPAPER:Z

    goto :goto_0
.end method

.method public static writeKeyguardCurrentWallpaperInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 577
    if-nez p0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 580
    :cond_0
    const-string v0, "KeyguardEffectViewUtils"

    const-string v1, "set current wallpaper info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_type"

    sget v2, Lcom/android/keyguard/effect/Utils;->mWallpaperType:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_file_path"

    sget-object v2, Lcom/android/keyguard/effect/Utils;->mWallpaperPath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_current_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/effect/Utils;->mWallpaperResId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public static writeKeyguardDefaultWallpaperResId(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 590
    if-nez p0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 593
    :cond_0
    const-string v0, "KeyguardEffectViewUtils"

    const-string v1, "set resource id"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_default_wallpaper_res_id"

    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_default_wallpaper:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private static writeWallpaperInfoAndReturn(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaperDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 573
    return-object p1
.end method
