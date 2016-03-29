.class public Lcom/android/settings/dashboard/DashboardTileView;
.super Landroid/widget/RelativeLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBadgeCountView:Landroid/widget/TextView;

.field private mColSpan:I

.field private mDisplaySystemUpdateMenu:Z

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mTile:Lcom/android/settings/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;

.field private sharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileId"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "tileId"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "tileId"    # I

    .prologue
    .line 78
    const v4, 0x7f0f01c3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "tileId"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mColSpan:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDisplaySystemUpdateMenu:Z

    .line 82
    invoke-direct {p0, p1, p5}, Lcom/android/settings/dashboard/DashboardTileView;->init(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/DashboardTileView;)Lcom/android/settings/dashboard/DashboardTile;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardTileView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileId"    # I

    .prologue
    const v8, 0x7f0d0163

    const v7, 0x7f040084

    const/4 v4, 0x1

    const v6, 0x7f040090

    .line 89
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SPR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDisplaySystemUpdateMenu:Z

    .line 95
    const v3, 0x7f0d069f

    if-ne p2, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDisplaySystemUpdateMenu:Z

    if-nez v3, :cond_3

    .line 96
    invoke-static {p1}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    .line 97
    .local v0, "badgeCount":I
    if-lez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mBadgeCountView:Landroid/widget/TextView;

    .line 100
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mBadgeCountView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .end local v0    # "badgeCount":I
    :goto_1
    const v3, 0x7f0d0056

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 120
    const v3, 0x7f0d0057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 122
    const v3, 0x7f0d0164

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardTileView;->setFontSizeIfNeeded(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0, p0}, Lcom/android/settings/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v3, 0x7f0200b6

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 127
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 128
    return-void

    .line 90
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 102
    .restart local v0    # "badgeCount":I
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 104
    .end local v0    # "badgeCount":I
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    const v3, 0x7f0d069e

    if-ne p2, v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDisplaySystemUpdateMenu:Z

    if-eqz v3, :cond_5

    .line 105
    invoke-static {p1}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    .line 106
    .restart local v0    # "badgeCount":I
    if-lez v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 108
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mBadgeCountView:Landroid/widget/TextView;

    .line 109
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mBadgeCountView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 115
    .end local v0    # "badgeCount":I
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTile()Lcom/android/settings/dashboard/DashboardTile;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f05001e

    const v6, 0x7f05001d

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/32 v8, 0x7f0d069b

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    sput-wide v0, Lcom/android/settings/Utils;->focusedTileId:J

    .line 166
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/Utils;->focusedFavoriteId:J

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f0d0697

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "SBAT"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 208
    :cond_2
    :goto_1
    return-void

    .line 168
    :cond_3
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/Utils;->focusedTileId:J

    goto :goto_0

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->showOnlineHelpDialog()V

    goto :goto_1

    .line 184
    :cond_5
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "HQST"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-wide v0, v0, Lcom/android/settings/dashboard/DashboardTile;->id:J

    const-wide/32 v2, 0x7f0d0697

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "SBAT"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 197
    .local v7, "numUserHandles":I
    if-le v7, v5, :cond_8

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    invoke-static {v0, v1}, Lcom/android/settings/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/Object;)V

    goto :goto_1

    .line 199
    :cond_8
    if-ne v7, v5, :cond_9

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v6, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 203
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v6, v10}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setFontSizeIfNeeded(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "fontIndex":I
    const/4 v3, 0x6

    if-le v0, v3, :cond_0

    .line 215
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 216
    .local v1, "fontScale":F
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v3, v4

    .line 218
    .local v2, "fontsize":F
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    mul-float v5, v2, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    .end local v1    # "fontScale":F
    .end local v2    # "fontsize":F
    :cond_0
    return-void
.end method

.method public setTile(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    .line 144
    return-void
.end method

.method public showOnlineHelpDialog()V
    .locals 14

    .prologue
    const v13, 0x7f05001e

    const v12, 0x7f05001d

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mContext:Landroid/content/Context;

    .line 225
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040227

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "dialogLayout":Landroid/view/View;
    const v6, 0x7f0d050b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 228
    .local v0, "checkboxView":Landroid/widget/CheckBox;
    const v6, 0x7f0d00e2

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 229
    .local v4, "messageView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e162e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e1383

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->sharedPreference:Landroid/content/SharedPreferences;

    .line 231
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->sharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 232
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->sharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "onlinehelp_show_dialog"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 233
    .local v2, "doNotShow":Z
    if-nez v2, :cond_0

    .line 234
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardTileView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e162d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e0f72

    new-instance v8, Lcom/android/settings/dashboard/DashboardTileView$3;

    invoke-direct {v8, p0, v0, v3}, Lcom/android/settings/dashboard/DashboardTileView$3;-><init>(Lcom/android/settings/dashboard/DashboardTileView;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e01ba

    new-instance v8, Lcom/android/settings/dashboard/DashboardTileView$2;

    invoke-direct {v8, p0}, Lcom/android/settings/dashboard/DashboardTileView$2;-><init>(Lcom/android/settings/dashboard/DashboardTileView;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/dashboard/DashboardTileView$1;

    invoke-direct {v7, p0}, Lcom/android/settings/dashboard/DashboardTileView$1;-><init>(Lcom/android/settings/dashboard/DashboardTileView;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 266
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v6, v6, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 256
    .local v5, "numUserHandles":I
    if-le v5, v11, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    invoke-static {v6, v7}, Lcom/android/settings/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_1
    if-ne v5, v11, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v6, v6, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v12, v13}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/dashboard/DashboardTileView;->mTile:Lcom/android/settings/dashboard/DashboardTile;

    iget-object v7, v7, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v12, v13}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method
