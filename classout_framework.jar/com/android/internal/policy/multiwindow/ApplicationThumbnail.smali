.class public Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;
.super Ljava/lang/Object;
.source "ApplicationThumbnail.java"


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "ApplicationThumbnail"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsUseDefaultTheme:Z

.field protected mMinimizeBg:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeIcon:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

.field protected mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

.field private mMinimizedAppLable:Ljava/lang/CharSequence;

.field private mMinimizedIconSize:I

.field private mThemeBackground:Landroid/graphics/Bitmap;

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

.field private mThemeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .registers 10
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v5, p0, mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 50
    iput-object v5, p0, mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object v5, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object v5, p0, mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v5, p0, mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v5, p0, mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v5, p0, mThemeBackground:Landroid/graphics/Bitmap;

    .line 61
    const/4 v5, 0x1

    iput-boolean v5, p0, mIsUseDefaultTheme:Z

    .line 63
    const/4 v5, 0x0

    iput v5, p0, mMinimizedIconSize:I

    .line 134
    iput-object p1, p0, mActivity:Landroid/app/Activity;

    .line 136
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 137
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 138
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_93

    if-eqz v3, :cond_93

    .line 140
    :try_start_2e
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 141
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 142
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 145
    sget-boolean v5, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v5, :cond_97

    .line 146
    const v5, 0x10502aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, mMinimizedIconSize:I

    .line 148
    const v5, 0x10805cd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, mMinimizedIconSize:I

    iget v7, p0, mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 149
    const v5, 0x10805ce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, mMinimizedIconSize:I

    iget v7, p0, mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 150
    const v5, 0x10805cf

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, mMinimizedIconSize:I

    iget v7, p0, mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;
    :try_end_93
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_93} :catch_ac

    .line 160
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_93
    :goto_93
    invoke-direct {p0}, intializeTheme()V

    .line 161
    return-void

    .line 152
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_97
    const v5, 0x10805cd

    const/4 v6, 0x0

    :try_start_9b
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 153
    const v5, 0x10805ce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;
    :try_end_ab
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9b .. :try_end_ab} :catch_ac

    goto :goto_93

    .line 155
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_ac
    move-exception v2

    .line 156
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_93
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V
    .registers 11
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v5, p0, mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 50
    iput-object v5, p0, mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    iput-object v5, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 52
    iput-object v5, p0, mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v5, p0, mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v5, p0, mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v5, p0, mThemeBackground:Landroid/graphics/Bitmap;

    .line 61
    const/4 v5, 0x1

    iput-boolean v5, p0, mIsUseDefaultTheme:Z

    .line 63
    iput v6, p0, mMinimizedIconSize:I

    .line 285
    iput-object p1, p0, mActivity:Landroid/app/Activity;

    .line 287
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 288
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 289
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_8e

    if-eqz v3, :cond_8e

    .line 291
    if-eqz p2, :cond_8f

    .end local p2    # "c":Landroid/content/ComponentName;
    :goto_30
    const/4 v5, 0x0

    :try_start_31
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 292
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 293
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    .line 294
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, mMinimizedAppLable:Ljava/lang/CharSequence;

    .line 296
    sget-boolean v5, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v5, :cond_96

    .line 297
    const v5, 0x10502aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, mMinimizedIconSize:I

    .line 299
    const v5, 0x10805cd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, mMinimizedIconSize:I

    iget v7, p0, mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 300
    const v5, 0x10805ce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, mMinimizedIconSize:I

    iget v7, p0, mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 301
    const v5, 0x10805cf

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, p0, mMinimizedIconSize:I

    iget v7, p0, mMinimizedIconSize:I

    invoke-direct {p0, v5, v6, v7}, getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    .line 310
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_8e
    :goto_8e
    return-void

    .line 291
    .restart local p2    # "c":Landroid/content/ComponentName;
    :cond_8f
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_30

    .line 303
    .end local p2    # "c":Landroid/content/ComponentName;
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_96
    const v5, 0x10805cd

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 304
    const v5, 0x10805ce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;
    :try_end_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_aa} :catch_ab

    goto :goto_8e

    .line 306
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_ab
    move-exception v2

    .line 307
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_8e
.end method

.method private clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .registers 18
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramPath"    # Landroid/graphics/Path;

    .prologue
    .line 447
    if-nez p1, :cond_4

    .line 448
    const/4 v2, 0x0

    .line 485
    :goto_3
    return-object v2

    .line 450
    :cond_4
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 451
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 454
    :cond_e
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 455
    .local v8, "rectF":Landroid/graphics/RectF;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 458
    .local v10, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 459
    .local v4, "height":I
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 460
    .local v6, "pathBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 461
    .local v7, "pathCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 463
    sget-object v11, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 464
    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 466
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 467
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 468
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 469
    const/16 v11, 0x32

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0xff

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 471
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 472
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 473
    const/high16 v11, 0x40a00000    # 5.0f

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 476
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    sget-object v11, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 478
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 480
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v12

    float-to-int v12, v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 481
    .local v2, "finalBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 482
    .local v3, "finalCanvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 483
    .local v9, "srcRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 484
    .local v1, "dstRect":Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-virtual {v3, v6, v9, v1, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public static create(Landroid/app/Activity;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;
    .registers 2
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0}, <init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Landroid/content/ComponentName;)Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;
    .registers 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 81
    new-instance v0, Lcom/android/internal/policy/multiwindow/ApplicationThumbnail;

    invoke-direct {v0, p0, p1}, <init>(Landroid/app/Activity;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 439
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 440
    .local v0, "height":I
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 441
    .local v1, "path":Landroid/graphics/Path;
    iget-object v4, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 442
    .local v2, "radius":I
    int-to-float v4, v3

    div-float/2addr v4, v6

    int-to-float v5, v0

    div-float/2addr v5, v6

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 443
    invoke-direct {p0, p1, v1}, clipImagePath(Landroid/graphics/Bitmap;Landroid/graphics/Path;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 362
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .local v0, "normal":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private getCircleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 352
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 353
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {p0, v5}, getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 354
    .local v1, "focus":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v6}, getMinimizedBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 355
    .local v2, "normal":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 356
    .local v3, "pressedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-array v4, v5, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 357
    new-array v4, v6, [I

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 358
    return-object v0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 434
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v7, 0x1

    .line 387
    iget-object v6, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 389
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 391
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :try_start_8
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_d} :catch_2e

    move-result-object v5

    .line 396
    .local v5, "resources":Landroid/content/res/Resources;
    :goto_e
    if-eqz v5, :cond_3e

    .line 397
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    .line 398
    .local v2, "iconId":I
    if-eqz v2, :cond_3e

    .line 399
    invoke-direct {p0, v5, v2}, getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_3e

    .line 402
    invoke-virtual {p1, v4, v7, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 404
    .local v3, "liveIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_31

    .line 407
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_2d

    const-string v6, "ApplicationThumbnail"

    const-string v7, "getFullResIcon() return liveIcon"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v2    # "iconId":I
    .end local v3    # "liveIcon":Landroid/graphics/drawable/Drawable;
    :cond_2d
    :goto_2d
    return-object v3

    .line 392
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catch_2e
    move-exception v1

    .line 393
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .restart local v5    # "resources":Landroid/content/res/Resources;
    goto :goto_e

    .line 411
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "iconId":I
    .restart local v3    # "liveIcon":Landroid/graphics/drawable/Drawable;
    :cond_31
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_3c

    const-string v6, "ApplicationThumbnail"

    const-string v7, "getFullResIcon() return lager density icon"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move-object v3, v0

    .line 412
    goto :goto_2d

    .line 417
    .end local v2    # "iconId":I
    .end local v3    # "liveIcon":Landroid/graphics/drawable/Drawable;
    :cond_3e
    invoke-direct {p0}, getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2d
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 422
    iget-object v4, p0, mActivity:Landroid/app/Activity;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 423
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    .line 425
    .local v3, "mIconDpi":I
    :try_start_e
    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_11} :catch_15

    move-result-object v1

    .line 430
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    if-eqz v1, :cond_18

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_14
    return-object v1

    .line 426
    :catch_15
    move-exception v2

    .line 427
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 430
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_18
    invoke-direct {p0}, getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_14
.end method

.method private getScaledDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 164
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v3, p2, :cond_f

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v3, p3, :cond_29

    .line 165
    :cond_f
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2a

    .line 166
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 168
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p1, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 177
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_29
    :goto_29
    return-object p1

    .line 170
    .restart local p1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2a
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 171
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_29
.end method

.method private getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 368
    iget-object v5, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 369
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10502bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 370
    .local v3, "originPixelSize":I
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v5, v3, :cond_1a

    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v5, :cond_2e

    .line 371
    :cond_1a
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2f

    .line 372
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    invoke-static {v0, v3, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 374
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 383
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :cond_2e
    :goto_2e
    return-object p1

    .line 376
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2f
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 378
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_2e
.end method

.method private intializeTheme()V
    .registers 5

    .prologue
    .line 181
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string/jumbo v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mThemeType:Ljava/lang/String;

    .line 183
    iget-object v1, p0, mThemeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4a

    iget-object v1, p0, mThemeType:Ljava/lang/String;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 184
    new-instance v1, Lcom/samsung/android/theme/SThemeManager;

    iget-object v2, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 186
    iget-object v1, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "themePackageName":Ljava/lang/String;
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 189
    :cond_47
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsUseDefaultTheme:Z

    .line 193
    .end local v0    # "themePackageName":Ljava/lang/String;
    :cond_4a
    :goto_4a
    return-void

    .line 191
    .restart local v0    # "themePackageName":Ljava/lang/String;
    :cond_4b
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsUseDefaultTheme:Z

    goto :goto_4a
.end method


# virtual methods
.method public final getBitmapIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, getCircleBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, getCircleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getLabel()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, mMinimizedAppLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getMinimizedBitmap(Z)Landroid/graphics/Bitmap;
    .registers 14
    .param p1, "bFocused"    # Z

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 313
    iget-object v8, p0, mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v8}, getBitmapClippedCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 314
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 315
    .local v2, "bgDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 317
    .local v5, "outLineDrawable":Landroid/graphics/drawable/Drawable;
    sget-boolean v8, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v8, :cond_72

    .line 318
    iget-object v2, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    .line 319
    if-eqz p1, :cond_6f

    iget-object v5, p0, mMinimizeLineFocus:Landroid/graphics/drawable/Drawable;

    .line 324
    :goto_1b
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 325
    .local v1, "baseWidth":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 326
    .local v0, "baseHeight":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 327
    .local v6, "output":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 328
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 329
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 331
    invoke-virtual {v2, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 335
    if-eqz v3, :cond_5b

    .line 336
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v8, v1, v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v4, v3, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 340
    :cond_5b
    sget-boolean v8, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v8, :cond_68

    .line 341
    invoke-virtual {v5, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 342
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 345
    :cond_68
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 346
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 348
    return-object v6

    .line 319
    .end local v0    # "baseHeight":I
    .end local v1    # "baseWidth":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "output":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_6f
    iget-object v5, p0, mMinimizeLineNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_1b

    .line 321
    :cond_72
    if-eqz p1, :cond_77

    iget-object v2, p0, mMinimizeBgFocus:Landroid/graphics/drawable/Drawable;

    :goto_76
    goto :goto_1b

    :cond_77
    iget-object v2, p0, mMinimizeBg:Landroid/graphics/drawable/Drawable;

    goto :goto_76
.end method

.method public isUsedTheme()Z
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, mThemeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, mThemeType:Ljava/lang/String;

    const-string/jumbo v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, mIsUseDefaultTheme:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public loadIconForResolveTheme()Landroid/graphics/drawable/Drawable;
    .registers 24

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 202
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 203
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    const/16 v17, 0x0

    .line 204
    .local v17, "sInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v15, :cond_37

    .line 206
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_1cc

    move-result-object v17

    .line 212
    :cond_37
    :goto_37
    if-eqz v3, :cond_16d

    move-object v7, v3

    .line 216
    .local v7, "cinfo":Landroid/content/pm/ComponentInfo;
    :goto_3a
    const/16 v16, 0x0

    .line 217
    .local v16, "resources":Landroid/content/res/Resources;
    if-eqz v15, :cond_48

    .line 219
    :try_start_3e
    iget-object v0, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_47} :catch_171

    move-result-object v16

    .line 225
    :cond_48
    :goto_48
    const/4 v8, 0x0

    .line 227
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_59

    .line 229
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v0, v0, mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v19, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_58
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_58} :catch_176

    move-result-object v8

    .line 235
    :cond_59
    :goto_59
    if-nez v8, :cond_16c

    if-eqz v15, :cond_16c

    .line 236
    iget v0, v3, Landroid/content/pm/ActivityInfo;->icon:I

    move/from16 v19, v0

    if-eqz v19, :cond_1a5

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_67
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 239
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_7f

    if-eqz v16, :cond_7f

    .line 240
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v12

    .line 241
    .local v12, "iconId":I
    if-eqz v12, :cond_7f

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 246
    .end local v12    # "iconId":I
    :cond_7f
    if-eqz v11, :cond_16c

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-nez v19, :cond_a4

    .line 249
    :try_start_89
    move-object/from16 v0, p0

    iget-object v0, v0, mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "theme_app_3rd_party_icon"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 250
    .local v5, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_a4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mThemeBackground:Landroid/graphics/Bitmap;
    :try_end_a4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_89 .. :try_end_a4} :catch_1ab

    .line 256
    :cond_a4
    :goto_a4
    move-object/from16 v0, p0

    iget-object v0, v0, mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16c

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    .line 258
    .local v18, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 260
    .local v10, "height":I
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 261
    .local v14, "p":Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 262
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 263
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 265
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 266
    .local v4, "b":Landroid/graphics/Bitmap;
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 267
    .local v13, "in_bit":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, mThemeBackground:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 270
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v10

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 271
    const/high16 v19, 0x3f400000    # 0.75f

    const/high16 v20, 0x3f400000    # 0.75f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 272
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v13, v0, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    neg-int v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 276
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 281
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "height":I
    .end local v13    # "in_bit":Landroid/graphics/Bitmap;
    .end local v14    # "p":Landroid/graphics/Paint;
    .end local v18    # "width":I
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    :cond_16c
    return-object v8

    .end local v7    # "cinfo":Landroid/content/pm/ComponentInfo;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v16    # "resources":Landroid/content/res/Resources;
    :cond_16d
    move-object/from16 v7, v17

    .line 212
    goto/16 :goto_3a

    .line 220
    .restart local v7    # "cinfo":Landroid/content/pm/ComponentInfo;
    .restart local v16    # "resources":Landroid/content/res/Resources;
    :catch_171
    move-exception v9

    .line 221
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v16, 0x0

    goto/16 :goto_48

    .line 230
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    :catch_176
    move-exception v9

    .line 231
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v19, DEBUG:Z

    if-eqz v19, :cond_59

    const-string v19, "ApplicationThumbnail"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "loadAppIconBitmap( "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ) failed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 236
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1a5
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_67

    .line 251
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_1ab
    move-exception v9

    .line 252
    .restart local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v19, DEBUG:Z

    if-eqz v19, :cond_a4

    const-string v19, ""

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "3rd_party_icon_menu  failed! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a4

    .line 208
    .end local v7    # "cinfo":Landroid/content/pm/ComponentInfo;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "resources":Landroid/content/res/Resources;
    :catch_1cc
    move-exception v19

    goto/16 :goto_37
.end method

.method public final setCustomMinimizeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    if-nez p1, :cond_25

    .line 119
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 120
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1f

    .line 122
    :try_start_a
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 123
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mMinimizeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_1f} :catch_20

    .line 131
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1f
    :goto_1f
    return-void

    .line 124
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_20
    move-exception v1

    .line 125
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1f

    .line 129
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_25
    invoke-direct {p0, p1}, getScaledMinimizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mMinimizeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1f
.end method
