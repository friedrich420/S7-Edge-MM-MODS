.class public Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardEditFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    }
.end annotation


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTile:Lcom/android/settings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mColSpan:I

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040089

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mImageView:Landroid/widget/ImageView;

    .line 68
    const v1, 0x7f0d0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0d013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mDivider:Landroid/view/View;

    .line 71
    const v1, 0x7f0d0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setFontSizeIfNeeded(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0, p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0200b6

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setBackgroundResource(I)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->setFocusable(Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method getColumnSpan()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTile()Lcom/android/settings/dashboard/DashboardTile;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 130
    invoke-static {}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getCheckedTileCount()I

    move-result v0

    .line 132
    .local v0, "cnt":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;

    .line 134
    .local v1, "holder":Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iput-boolean v7, v1, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    .line 136
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    :goto_0
    invoke-static {}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->UpdateSelectionMenu()V

    .line 153
    :goto_1
    return-void

    .line 139
    :cond_0
    if-ge v0, v6, :cond_1

    .line 140
    iput-boolean v5, v1, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView$DashboardEditFavoriteTileViewHolder;->isChecked:Z

    .line 141
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0dd2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void

    .line 104
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setFontSizeIfNeeded(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "fontIndex":I
    const/4 v3, 0x6

    if-le v0, v3, :cond_0

    .line 120
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 121
    .local v1, "fontScale":F
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    .line 123
    .local v2, "fontsize":F
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    mul-float v5, v2, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    .end local v1    # "fontScale":F
    .end local v2    # "fontsize":F
    :cond_0
    return-void
.end method

.method public setTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    .line 97
    return-void
.end method
