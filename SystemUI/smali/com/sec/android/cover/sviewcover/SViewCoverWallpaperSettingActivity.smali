.class public Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;
.super Lcom/sec/android/cover/sviewcover/SViewCoverActivity;
.source "SViewCoverWallpaperSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private CUSTOM_INDEX:I

.field private GALLERY_INDEX:I

.field private WALLPAPER_THUMBNAIL_IMAGE_ID:[I

.field private mPopupLayout:Landroid/view/ViewGroup;

.field private mSelectIndex:I

.field private mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mPopupLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method private drawBackGround()V
    .locals 4

    .prologue
    .line 303
    sget v2, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_root_pattern:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    .local v0, "mRootBackGroundView":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 306
    sget-object v2, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "mRootBackGroundView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    if-ne v2, v3, :cond_2

    .line 311
    const v2, 0x106000c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    const/16 v2, 0x4d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 313
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getUserWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 314
    :cond_2
    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    if-eq v2, v3, :cond_0

    .line 317
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v1

    .line 319
    .local v1, "selectedResource":I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private drawFoucsRect(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 325
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    array-length v2, v3

    .line 326
    .local v2, "length":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 333
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 335
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 336
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 332
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 340
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 342
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 343
    sget v3, Lcom/sec/android/sviewcover/R$drawable;->image_border:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 67
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    array-length v6, v8

    .line 70
    .local v6, "length":I
    const/4 v3, 0x0

    .local v3, "iIdx":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$string;->s_view_wallpaper_selected_tts:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "label":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v8, v8, v3

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 75
    .local v4, "imageView":Landroid/widget/ImageView;
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setCustomThumnailImage()V

    .line 83
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_set_button:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 84
    .local v7, "setButton":Landroid/widget/Button;
    if-eqz v7, :cond_2

    .line 85
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_2
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_cancel_button:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 89
    .local v1, "cancelButton":Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_3
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_color_wallpaper_back_button:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, "backButton":Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "wallpaper_initialize"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 100
    .local v2, "hideCancelButton":Z
    if-ne v2, v13, :cond_8

    .line 101
    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {v1, v14}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v8

    if-nez v8, :cond_6

    .line 106
    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_6
    invoke-virtual {p0, v13}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->needToRemainACtivity(Z)V

    .line 110
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-eqz v8, :cond_7

    .line 111
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndexbySkincolor()I

    move-result v8

    iput v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 112
    sget-object v8, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start set wallpaper by skin - wallpaper index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-direct {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawFoucsRect(I)V

    .line 114
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawBackGround()V

    .line 122
    :cond_7
    :goto_1
    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_picker_background:I

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mPopupLayout:Landroid/view/ViewGroup;

    .line 123
    return-void

    .line 117
    :cond_8
    invoke-virtual {p0, v12}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->needToRemainACtivity(Z)V

    .line 118
    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v8}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    invoke-direct {p0, v8}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawFoucsRect(I)V

    .line 119
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setBackGroundImage()V

    goto :goto_1
.end method

.method private isSetupWizardFinished()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setBackGroundImage()V
    .locals 5

    .prologue
    .line 135
    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_root_pattern:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, "rootBackGroundView":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v3

    .line 137
    .local v3, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    const/4 v1, 0x0

    .line 139
    .local v1, "wallpaper":I
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndex()I

    move-result v1

    .line 142
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 143
    const v4, 0x106000c

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const/16 v4, 0x4d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getWallpaperDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 148
    .local v2, "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    .end local v2    # "wallpaperDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private setCustomThumnailImage()V
    .locals 3

    .prologue
    .line 126
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getUserWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    .local v1, "userWallpaperDrawable":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/sec/android/sviewcover/R$id;->wallpaper_thumnail_custom_image:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 129
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_0
    return-void
.end method

.method private setNewWallaperImage()V
    .locals 4

    .prologue
    .line 278
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-eqz v1, :cond_2

    .line 279
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    if-ne v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setWallaper(II)V

    .line 282
    :cond_0
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    if-ne v1, v2, :cond_1

    .line 300
    :goto_0
    return-void

    .line 285
    :cond_1
    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    if-eq v1, v2, :cond_2

    .line 286
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->setWallaper(II)V

    .line 290
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 291
    .local v0, "handlerTimer":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity$1;-><init>(Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showOpenTogalleryPopup()V
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    .line 275
    return-void
.end method


# virtual methods
.method protected coverCloseEvent()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverCloseEvent()V

    .line 157
    return-void
.end method

.method protected coverOpenEvent()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x10000000

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v5

    .line 163
    .local v5, "isCoverPopupShowing":Z
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->isSetupWizardFinished()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->hasWindowFocus()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v5, :cond_2

    .line 164
    :cond_0
    if-eqz v5, :cond_3

    .line 165
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperFilePathName()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "filePath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 169
    .local v8, "wallpaperUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.GET_CONTENT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "image/*"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v9, "com.sec.android.gallery3d"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v9, "crop"

    const-string v10, "true"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v9, "output"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 175
    const-string v9, "aspectX"

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string v9, "aspectY"

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    :cond_1
    const-string v9, "scale"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    const-string v9, "set_sview"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    :try_start_0
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "wallpaperUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->coverOpenEvent()V

    .line 229
    return-void

    .line 183
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v8    # "wallpaperUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    sget-object v9, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v10, "ActivityNotFoundException !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "wallpaperUri":Landroid/net/Uri;
    :cond_3
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 187
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 189
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/high16 v9, 0x10000

    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 191
    .local v7, "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 192
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_4

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_4

    .line 196
    const-string v9, "com.sec.android.app.wallpaperchooser"

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 197
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v9, "type"

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    :try_start_1
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    sget-object v9, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v10, "ActivityNotFoundException !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 212
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 213
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.SViewColor"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    :goto_1
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    :try_start_2
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 222
    :catch_2
    move-exception v0

    .line 223
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    sget-object v9, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v10, "ActivityNotFoundException !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    :cond_6
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.SViewColor2014"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected getUserWallpaper(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "isThumbnail"    # Z

    .prologue
    .line 349
    invoke-static {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    .line 350
    .local v0, "wallpaperManager":Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    invoke-virtual {v0, p1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCustomWallpaperDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 240
    .local v2, "viewId":I
    sget v3, Lcom/sec/android/sviewcover/R$id;->wallpaper_thumnail_gallery:I

    if-ne v2, v3, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->showOpenTogalleryPopup()V

    .line 242
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 267
    :goto_0
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawFoucsRect(I)V

    .line 269
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->drawBackGround()V

    .line 270
    return-void

    .line 243
    :cond_0
    sget v3, Lcom/sec/android/sviewcover/R$id;->wallpaper_thumnail_custom:I

    if-ne v2, v3, :cond_1

    .line 244
    iget v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    iput v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    goto :goto_0

    .line 245
    :cond_1
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_set_button:I

    if-ne v2, v3, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setNewWallaperImage()V

    goto :goto_0

    .line 247
    :cond_2
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_cover_wallpaper_cancel_button:I

    if-ne v2, v3, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->finish()V

    goto :goto_0

    .line 249
    :cond_3
    sget v3, Lcom/sec/android/sviewcover/R$id;->s_view_color_wallpaper_back_button:I

    if-ne v2, v3, :cond_5

    .line 250
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setNewWallaperImage()V

    goto :goto_0

    .line 253
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->finish()V

    goto :goto_0

    .line 256
    :cond_5
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    array-length v1, v3

    .line 257
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "iIdx":I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 258
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_7

    .line 259
    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mSelectIndex:I

    .line 264
    :cond_6
    sget-object v3, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v4, "not found thumbnail image id"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/sec/android/cover/sviewcover/SViewCoverActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "Intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_wallpaper_activity:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$array;->s_view_cover_default_wallpaper_thumbnail_id_list:I

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->WALLPAPER_THUMBNAIL_IMAGE_ID:[I

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$integer;->sview_cover_wallpaper_custom_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->CUSTOM_INDEX:I

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$integer;->sview_cover_wallpaper_gallery_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->GALLERY_INDEX:I

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->mWallpaperManager:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    .line 63
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperSettingActivity;->initLayout()V

    goto :goto_0
.end method
