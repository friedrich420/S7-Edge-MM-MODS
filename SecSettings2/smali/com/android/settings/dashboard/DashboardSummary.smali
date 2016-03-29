.class public Lcom/android/settings/dashboard/DashboardSummary;
.super Lcom/android/settings/InstrumentedFragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private bEasymode:Z

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mDashboard:Landroid/view/ViewGroup;

.field private mFavoriteDashboard:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainContainerView:[Landroid/view/ViewGroup;

.field private tilesCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    .line 75
    iput v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    .line 83
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;

    .line 103
    new-instance v0, Lcom/android/settings/dashboard/DashboardSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method private rebuildFavoriteContainer(Landroid/content/Context;)V
    .locals 30
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 315
    .local v26, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 317
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 319
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getFavoriteCategories(Z)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v20

    .line 324
    .local v20, "favorites":Lcom/android/settings/dashboard/DashboardCategory;
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04008b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 332
    .local v12, "categoryView":Landroid/view/View;
    :goto_1
    const v2, 0x7f0d016b

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 334
    .local v11, "categoryLayout":Landroid/widget/RelativeLayout;
    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    :cond_1
    const v2, 0x7f0d0166

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 336
    .local v10, "categoryLabel":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .end local v10    # "categoryLabel":Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f0d016c

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 340
    .local v19, "editFavoriteButton":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v23, 0x1

    .line 341
    .local v23, "isEnabledShowBtnBg":Z
    :goto_2
    if-eqz v23, :cond_3

    .line 342
    const v2, 0x7f020356

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 345
    :cond_3
    new-instance v2, Lcom/android/settings/dashboard/DashboardSummary$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardSummary$4;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e1380

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e0909

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 355
    .local v18, "editButtonDescription":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    if-eqz v2, :cond_a

    .line 358
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    :goto_3
    const v2, 0x7f0d0168

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 365
    .local v9, "categoryContent":Landroid/view/ViewGroup;
    const v2, 0x7f0d0164

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 367
    .local v13, "categorydivider":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    .line 369
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    .line 370
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    :cond_4
    move-object/from16 v2, p1

    .line 371
    check-cast v2, Lcom/android/settings/SettingsActivity;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->setFavoriteCount(I)V

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigQuickSettings"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HIDE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 374
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_4
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_c

    .line 383
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 385
    .local v5, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v28, Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;-><init>(Landroid/content/Context;)V

    .line 386
    .local v28, "tileView":Lcom/android/settings/dashboard/DashboardFavoriteTileView;
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/dashboard/DashboardSummary;->updateFavoriteTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 389
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v25

    .line 392
    .local v25, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    div-int v29, v25, v2

    .line 393
    .local v29, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0181

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 396
    .local v21, "height":I
    div-int/lit8 v14, v29, 0x2

    .line 397
    .local v14, "centerX":I
    div-int/lit8 v15, v21, 0x2

    .line 399
    .local v15, "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0182

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 401
    .local v24, "padding":I
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 402
    .local v8, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v8, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_6

    .line 404
    sub-int v2, v14, v24

    sub-int v3, v15, v24

    add-int v6, v14, v24

    add-int v7, v15, v24

    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 408
    :cond_6
    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 409
    sget-wide v2, Lcom/android/settings/Utils;->focusedFavoriteId:J

    iget-wide v6, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 410
    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->requestFocus()Z

    .line 382
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 328
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v8    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "categoryContent":Landroid/view/ViewGroup;
    .end local v11    # "categoryLayout":Landroid/widget/RelativeLayout;
    .end local v12    # "categoryView":Landroid/view/View;
    .end local v13    # "categorydivider":Landroid/view/View;
    .end local v14    # "centerX":I
    .end local v15    # "centerY":I
    .end local v18    # "editButtonDescription":Ljava/lang/String;
    .end local v19    # "editFavoriteButton":Landroid/widget/TextView;
    .end local v21    # "height":I
    .end local v22    # "i":I
    .end local v23    # "isEnabledShowBtnBg":Z
    .end local v24    # "padding":I
    .end local v25    # "screenWidth":I
    .end local v28    # "tileView":Lcom/android/settings/dashboard/DashboardFavoriteTileView;
    .end local v29    # "width":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "categoryView":Landroid/view/View;
    goto/16 :goto_1

    .line 340
    .restart local v11    # "categoryLayout":Landroid/widget/RelativeLayout;
    .restart local v19    # "editFavoriteButton":Landroid/widget/TextView;
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 360
    .restart local v18    # "editButtonDescription":Ljava/lang/String;
    .restart local v23    # "isEnabledShowBtnBg":Z
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 378
    .restart local v9    # "categoryContent":Landroid/view/ViewGroup;
    .restart local v13    # "categorydivider":Landroid/view/View;
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 415
    .restart local v22    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v26

    .line 418
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private rebuildMainContainer(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 423
    .local v20, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 425
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 427
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    const-string v6, "main_mode"

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 430
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 431
    .local v14, "count":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    .line 432
    new-array v2, v14, [Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    .line 434
    const/16 v18, 0x0

    .local v18, "n":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_8

    .line 435
    move/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/dashboard/DashboardCategory;

    .line 439
    .local v10, "category":Lcom/android/settings/dashboard/DashboardCategory;
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040086

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 447
    .local v12, "categoryView":Landroid/view/View;
    :goto_1
    const v2, 0x7f0d0166

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 448
    .local v11, "categoryLabel":Landroid/widget/TextView;
    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 449
    :cond_0
    invoke-virtual {v10, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    const v2, 0x7f0d0168

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v18

    .line 463
    const v2, 0x7f0d0164

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 464
    .local v13, "categorydivider":Landroid/view/View;
    if-nez v18, :cond_2

    .line 465
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_2
    invoke-virtual {v10}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v23

    .line 468
    .local v23, "tilesCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v0, v23

    if-ge v15, v0, :cond_7

    .line 469
    invoke-virtual {v10, v15}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 471
    .local v5, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v22, Lcom/android/settings/dashboard/DashboardTileView;

    iget-wide v2, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v2

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;I)V

    .line 472
    .local v22, "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    iget-wide v2, v10, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v8, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 475
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 477
    const-string v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    .line 479
    .local v19, "orientation":I
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_3

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v18

    check-cast v2, Lcom/android/settings/dashboard/DashboardContainerView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/settings/dashboard/DashboardContainerView;->SetNumColumns(I)V

    .line 483
    .end local v19    # "orientation":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v18

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 484
    sget-wide v2, Lcom/android/settings/Utils;->focusedTileId:J

    iget-wide v6, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 485
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/dashboard/DashboardTileView;->requestFocus()Z

    .line 468
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 443
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v11    # "categoryLabel":Landroid/widget/TextView;
    .end local v12    # "categoryView":Landroid/view/View;
    .end local v13    # "categorydivider":Landroid/view/View;
    .end local v15    # "i":I
    .end local v22    # "tileView":Lcom/android/settings/dashboard/DashboardTileView;
    .end local v23    # "tilesCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040085

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "categoryView":Landroid/view/View;
    goto/16 :goto_1

    .line 451
    .restart local v11    # "categoryLabel":Landroid/widget/TextView;
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 452
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 453
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 454
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->tilesCount:I

    if-nez v2, :cond_1

    if-nez v18, :cond_1

    .line 455
    const-string v2, "DashboardSummary"

    const-string v3, "add_quick_settings_container shown case so remove first category"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 490
    .restart local v13    # "categorydivider":Landroid/view/View;
    .restart local v15    # "i":I
    .restart local v23    # "tilesCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 434
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 493
    .end local v10    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v11    # "categoryLabel":Landroid/widget/TextView;
    .end local v12    # "categoryView":Landroid/view/View;
    .end local v13    # "categorydivider":Landroid/view/View;
    .end local v15    # "i":I
    .end local v23    # "tilesCount":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v20

    .line 494
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "DashboardSummary"

    const-string v1, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildMainContainer(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummary$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$3;-><init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendRebuildUI()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 303
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    :cond_0
    return-void
.end method

.method private updateFavoriteTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    .line 264
    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 268
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 270
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 271
    .local v3, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 273
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 275
    .end local v3    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    iget-wide v6, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->getFavoriteTileBackgroundId(II)I

    move-result v4

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 289
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    iget-wide v6, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v5, v6

    invoke-static {p1, v4, v5}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;II)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 291
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 300
    .local v2, "summary":Ljava/lang/CharSequence;
    return-void

    .line 276
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 280
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_2

    .line 281
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 276
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "categoryid"    # I

    .prologue
    const/4 v7, 0x0

    .line 223
    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 229
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 230
    .local v3, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 232
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 234
    .end local v3    # "tintColor":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-wide v4, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v4, v4

    invoke-static {p6, v4}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v4

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 250
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 259
    .local v2, "summary":Ljava/lang/CharSequence;
    return-void

    .line 235
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v4, :cond_2

    .line 240
    iget v4, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual {p4, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 235
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x23

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "decorView":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->twSetDrawDuringWindowsAnimating(Z)V

    .line 168
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    .line 177
    const-string v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const/4 v1, 0x1

    .line 179
    .local v1, "value":I
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 180
    const/4 v1, 0x2

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardSummary;->mMainContainerView:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/settings/dashboard/DashboardContainerView;

    invoke-virtual {v2, v1}, Lcom/android/settings/dashboard/DashboardContainerView;->SetNumColumns(I)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "i":I
    .end local v1    # "value":I
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->setHasOptionsMenu(Z)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0d65

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 195
    const v1, 0x7f040083

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0d0161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    .line 197
    const v1, 0x7f0d0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    .line 201
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardSummary;->bEasymode:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method public redrawDashboard()V
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildMainContainer(Landroid/content/Context;)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 507
    return-void
.end method

.method public redrawFavorite()V
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildFavoriteContainer(Landroid/content/Context;)V

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->refreshQuickSettingsView()V

    .line 501
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary;->mFavoriteDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 502
    return-void
.end method
