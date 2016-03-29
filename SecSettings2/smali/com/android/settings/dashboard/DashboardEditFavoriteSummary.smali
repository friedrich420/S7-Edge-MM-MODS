.class public Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;
.super Landroid/app/Fragment;
.source "DashboardEditFavoriteSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;
    }
.end annotation


# static fields
.field private static mDashboard:Landroid/view/ViewGroup;

.field private static mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBottomText:Landroid/widget/TextView;

.field private mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private select:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 91
    new-instance v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mHandler:Landroid/os/Handler;

    .line 294
    return-void
.end method

.method public static UpdateSelectionMenu()V
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->updateSelectionMenu()V

    .line 397
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->select:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mBottomText:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getCheckedTileCount()I
    .locals 9

    .prologue
    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, "cnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 376
    sget-object v7, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 378
    .local v1, "categoryView":Landroid/view/View;
    const v7, 0x7f0d0168

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 381
    .local v0, "categoryContent":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 382
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;

    .line 384
    .local v6, "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;

    .line 386
    .local v5, "tempholder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    iget-boolean v7, v5, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 387
    add-int/lit8 v2, v2, 0x1

    .line 381
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 375
    .end local v5    # "tempholder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    .end local v6    # "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "categoryContent":Landroid/view/ViewGroup;
    .end local v1    # "categoryView":Landroid/view/View;
    .end local v4    # "j":I
    :cond_2
    return v2
.end method

.method private getKnoxFeatureDisabledString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "knox_feature_disabled_toast"

    const-string v4, "string"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "resourceId":I
    const-string v1, ""

    .line 125
    .local v1, "text":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_0
    return-object v1
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    const-string v2, "DashboardEditFavoriteSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 181
    .local v26, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 183
    .local v4, "res":Landroid/content/res/Resources;
    const/16 v20, 0x0

    .line 185
    .local v20, "favoriteTileCount":I
    sget-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 187
    new-instance v2, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v2}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    .line 188
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v25, "tempCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->loadFavorites(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 192
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 193
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardCategory;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v20

    :cond_1
    move-object/from16 v2, p1

    .line 197
    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, 0x1

    const-string v6, "edit_mode"

    invoke-virtual {v2, v3, v6}, Lcom/android/settings/SettingsActivity;->getDashboardCategories(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 200
    .local v11, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    .line 202
    .local v17, "count":I
    const/16 v24, 0x0

    .local v24, "n":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 203
    move/from16 v0, v24

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/dashboard/DashboardCategory;

    .line 205
    .local v12, "category":Lcom/android/settings/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040088

    sget-object v6, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 208
    .local v15, "categoryView":Landroid/view/View;
    const v2, 0x7f0d0166

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 209
    .local v14, "categoryLabel":Landroid/widget/TextView;
    const-string v2, "galaxy_7"

    const-string v3, "galaxy_7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 210
    :cond_2
    invoke-virtual {v12, v4}, Lcom/android/settings/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_2
    const v2, 0x7f0d0168

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 219
    .local v13, "categoryContent":Landroid/view/ViewGroup;
    const v2, 0x7f0d0164

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 220
    .local v16, "categorydivider":Landroid/view/View;
    if-nez v24, :cond_3

    .line 221
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_3
    invoke-virtual {v12}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v30

    .line 224
    .local v30, "tilesCount":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    .line 225
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v5

    .line 227
    .local v5, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v29, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;-><init>(Landroid/content/Context;)V

    .line 228
    .local v29, "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    new-instance v21, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;

    invoke-direct/range {v21 .. v21}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;-><init>()V

    .line 229
    .local v21, "holder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-boolean v2, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    .line 230
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setTag(Ljava/lang/Object;)V

    .line 232
    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    iget-wide v2, v12, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 235
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mFavorite:Lcom/android/settings/dashboard/DashboardCategory;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v10

    .line 238
    .local v10, "Favoritetile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v2, v5, Lcom/android/settings/dashboard/DashboardTile;->id:J

    iget-wide v6, v10, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 240
    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;

    .line 241
    .local v28, "tempholder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 242
    const/4 v2, 0x1

    move-object/from16 v0, v28

    iput-boolean v2, v0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    .line 243
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setTag(Ljava/lang/Object;)V

    .line 235
    .end local v28    # "tempholder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 212
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v10    # "Favoritetile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v13    # "categoryContent":Landroid/view/ViewGroup;
    .end local v16    # "categorydivider":Landroid/view/View;
    .end local v21    # "holder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    .end local v22    # "i":I
    .end local v23    # "j":I
    .end local v29    # "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    .end local v30    # "tilesCount":I
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 247
    .restart local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .restart local v13    # "categoryContent":Landroid/view/ViewGroup;
    .restart local v16    # "categorydivider":Landroid/view/View;
    .restart local v21    # "holder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    .restart local v22    # "i":I
    .restart local v23    # "j":I
    .restart local v29    # "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    .restart local v30    # "tilesCount":I
    :cond_6
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setTile(Lcom/android/settings/dashboard/DashboardTile;)V

    .line 249
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 224
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 253
    .end local v5    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v21    # "holder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    .end local v23    # "j":I
    .end local v29    # "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    :cond_7
    sget-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 256
    .end local v12    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v13    # "categoryContent":Landroid/view/ViewGroup;
    .end local v14    # "categoryLabel":Landroid/widget/TextView;
    .end local v15    # "categoryView":Landroid/view/View;
    .end local v16    # "categorydivider":Landroid/view/View;
    .end local v22    # "i":I
    .end local v30    # "tilesCount":I
    :cond_8
    invoke-static {}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->UpdateSelectionMenu()V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v18, v2, v26

    .line 259
    .local v18, "delta":J
    const-string v2, "DashboardEditFavoriteSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

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

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 290
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;
    .param p7, "categoryid"    # I

    .prologue
    const/4 v2, 0x0

    .line 265
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_1

    .line 266
    iget v1, p3, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    :goto_0
    iget-wide v2, p3, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v1, v2

    invoke-static {p7, v1}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p3, p2}, Lcom/android/settings/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 279
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz p6, :cond_0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 268
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 284
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public SaveFavoriteTile()V
    .locals 11

    .prologue
    .line 400
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v8, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 401
    sget-object v8, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 403
    .local v2, "categoryView":Landroid/view/View;
    const v8, 0x7f0d0168

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 406
    .local v0, "categoryContent":Landroid/view/ViewGroup;
    const v8, 0x7f0d0166

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 408
    .local v1, "categoryLabel":Landroid/widget/TextView;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 409
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;

    .line 410
    .local v7, "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;

    .line 412
    .local v3, "holder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 413
    iget-boolean v8, v3, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    if-nez v8, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->removeFavorite(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v10

    iget v10, v10, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->localeTranslate(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, "menuTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.android.settings"

    const-string v10, "DQST"

    invoke-static {v8, v9, v10, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v8, "DashboardEditFavoriteSummary"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not favorite!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v6    # "menuTitle":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 420
    :cond_1
    iget-boolean v8, v3, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    if-eqz v8, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->saveFavorite(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getTile()Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v10

    iget v10, v10, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->localeTranslate(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v6

    .line 423
    .restart local v6    # "menuTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "com.android.settings"

    const-string v10, "AQST"

    invoke-static {v8, v9, v10, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v8, "DashboardEditFavoriteSummary"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is favorite!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 400
    .end local v3    # "holder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    .end local v6    # "menuTitle":Ljava/lang/String;
    .end local v7    # "tileView":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 429
    .end local v0    # "categoryContent":Landroid/view/ViewGroup;
    .end local v1    # "categoryLabel":Landroid/widget/TextView;
    .end local v2    # "categoryView":Landroid/view/View;
    .end local v5    # "j":I
    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 152
    const v1, 0x7f040087

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0d0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sput-object v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 155
    const v1, 0x7f0d016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mBottomText:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 159
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mBottomLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    new-instance v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;)V

    sput-object v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mActionMode:Landroid/view/ActionMode;

    .line 165
    sget-object v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->mDashboardEditFavoriteActionModeCallBack:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$DashboardEditFavoriteActionModeCallBack;->updateSelectionMenu()V

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->sendRebuildUI()V

    .line 171
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->registerAssistant()V

    .line 139
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getKnoxFeatureDisabledString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 110
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 111
    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_1

    .line 117
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->unregisterAssistant()V

    .line 119
    :cond_1
    return-void
.end method
