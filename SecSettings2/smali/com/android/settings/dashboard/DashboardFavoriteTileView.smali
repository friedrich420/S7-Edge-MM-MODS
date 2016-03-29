.class public Lcom/android/settings/dashboard/DashboardFavoriteTileView;
.super Landroid/widget/LinearLayout;
.source "DashboardFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mTile:Lcom/android/settings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;

.field private sharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const v0, 0x7f0f01c1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mColSpan:I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardFavoriteTileView;)Lcom/android/settings/dashboard/DashboardTile;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardFavoriteTileView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mImageView:Landroid/widget/ImageView;

    .line 82
    const v1, 0x7f0d0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mDivider:Landroid/view/View;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f0200b1

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->setBackgroundResource(I)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->setFocusable(Z)V

    .line 96
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const-wide/32 v2, 0x7f0d069b

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    sput-wide v0, Lcom/android/settings/Utils;->focusedFavoriteId:J

    .line 130
    sput-wide v4, Lcom/android/settings/Utils;->focusedTileId:J

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 156
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    sput-wide v4, Lcom/android/settings/Utils;->focusedFavoriteId:J

    goto :goto_0

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->showOnlineHelpDialog()V

    goto :goto_1

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    .line 112
    return-void
.end method

.method public showOnlineHelpDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mContext:Landroid/content/Context;

    .line 196
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040227

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, "dialogLayout":Landroid/view/View;
    const v5, 0x7f0d050b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 199
    .local v0, "checkboxView":Landroid/widget/CheckBox;
    const v5, 0x7f0d00e2

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 200
    .local v4, "messageView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e162e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/Utils;->getResIdForUserManual()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->sharedPreference:Landroid/content/SharedPreferences;

    .line 202
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->sharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 203
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->sharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "onlinehelp_show_dialog"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 204
    .local v2, "doNotShow":Z
    if-nez v2, :cond_0

    .line 205
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e162d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e0f72

    new-instance v7, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;

    invoke-direct {v7, p0, v0, v3}, Lcom/android/settings/dashboard/DashboardFavoriteTileView$3;-><init>(Lcom/android/settings/dashboard/DashboardFavoriteTileView;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e01ba

    new-instance v7, Lcom/android/settings/dashboard/DashboardFavoriteTileView$2;

    invoke-direct {v7, p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView$2;-><init>(Lcom/android/settings/dashboard/DashboardFavoriteTileView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/dashboard/DashboardFavoriteTileView$1;

    invoke-direct {v6, p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView$1;-><init>(Lcom/android/settings/dashboard/DashboardFavoriteTileView;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFavoriteTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v6, v6, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
