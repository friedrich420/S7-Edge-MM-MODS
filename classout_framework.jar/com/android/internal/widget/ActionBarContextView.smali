.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mChangedTheme:Z

.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mMaxFontScale:F

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    const v4, 0x3f99999a    # 1.2f

    iput v4, p0, mMaxFontScale:F

    .line 99
    sget-object v4, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, mTitleStyleRes:I

    .line 105
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, mSubtitleStyleRes:I

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, mContentHeight:I

    .line 111
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    const/4 v4, 0x5

    const v5, 0x109001f

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, mCloseItemLayout:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "current_sec_active_themepackage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "packageName":Ljava/lang/String;
    sget-boolean v4, mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_60

    if-eqz v1, :cond_60

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0x230

    if-ne v4, v5, :cond_60

    :goto_5d
    iput-boolean v2, p0, mChangedTheme:Z

    .line 124
    return-void

    :cond_60
    move v2, v3

    .line 122
    goto :goto_5d
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarContextView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 58
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initTitle()V
    .registers 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 219
    iget-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_54

    .line 220
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 221
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109001a

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 222
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    .line 223
    iget-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020354

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, mTitleView:Landroid/widget/TextView;

    .line 224
    iget-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x1020355

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, mSubtitleView:Landroid/widget/TextView;

    .line 225
    iget v3, p0, mTitleStyleRes:I

    if-eqz v3, :cond_49

    .line 226
    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    iget v7, p0, mTitleStyleRes:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 228
    :cond_49
    iget v3, p0, mSubtitleStyleRes:I

    if-eqz v3, :cond_54

    .line 229
    iget-object v3, p0, mSubtitleView:Landroid/widget/TextView;

    iget v7, p0, mSubtitleStyleRes:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 233
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_54
    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v3, p0, mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_94

    move v1, v4

    .line 237
    .local v1, "hasTitle":Z
    :goto_6b
    iget-object v3, p0, mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_96

    move v0, v4

    .line 238
    .local v0, "hasSubtitle":Z
    :goto_74
    iget-object v4, p0, mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_98

    move v3, v5

    :goto_79
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_82

    if-eqz v0, :cond_83

    :cond_82
    move v6, v5

    :cond_83
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_93

    .line 241
    iget-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, addView(Landroid/view/View;)V

    .line 243
    :cond_93
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_94
    move v1, v5

    .line 236
    goto :goto_6b

    .restart local v1    # "hasTitle":Z
    :cond_96
    move v0, v5

    .line 237
    goto :goto_74

    .restart local v0    # "hasSubtitle":Z
    :cond_98
    move v3, v6

    .line 238
    goto :goto_79
.end method


# virtual methods
.method public closeMode()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, mClose:Landroid/view/View;

    if-nez v0, :cond_7

    .line 343
    invoke-virtual {p0}, killMode()V

    .line 347
    :cond_7
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 386
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 391
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 369
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 371
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .registers 10
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 246
    iget-object v4, p0, mClose:Landroid/view/View;

    if-nez v4, :cond_77

    .line 247
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 248
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, mCloseItemLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, mClose:Landroid/view/View;

    .line 249
    iget-object v4, p0, mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, addView(Landroid/view/View;)V

    .line 254
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1a
    :goto_1a
    iget-object v4, p0, mClose:Landroid/view/View;

    const v5, 0x1020356

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, "closeButton":Landroid/view/View;
    new-instance v4, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    new-instance v4, Lcom/android/internal/widget/ActionBarContextView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ActionBarContextView$2;-><init>(Lcom/android/internal/widget/ActionBarContextView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 311
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuBuilder;

    .line 312
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v4, :cond_42

    .line 313
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 315
    :cond_42
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 316
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, v7}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 318
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 320
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, mSplitActionBar:Z

    if-nez v4, :cond_85

    .line 321
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 322
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    iput-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    .line 323
    iget-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v4, v2}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    :goto_76
    return-void

    .line 250
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_77
    iget-object v4, p0, mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1a

    .line 251
    iget-object v4, p0, mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, addView(Landroid/view/View;)V

    goto :goto_1a

    .line 327
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_85
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v7}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 330
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 332
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 333
    iget v4, p0, mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 335
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuView;

    iput-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    .line 336
    iget-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    iget-object v5, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v4, p0, mSplitView:Landroid/view/ViewGroup;

    iget-object v5, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_76
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 377
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 379
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isTitleOptional()Z
    .registers 2

    .prologue
    .line 600
    iget-boolean v0, p0, mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-virtual {p0}, removeAllViews()V

    .line 351
    iget-object v0, p0, mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    .line 352
    iget-object v0, p0, mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 354
    :cond_f
    iput-object v2, p0, mCustomView:Landroid/view/View;

    .line 355
    iput-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    .line 356
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    sget-boolean v1, mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_1e

    .line 131
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->ActionMode:[I

    const v4, 0x1010394

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1e
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 144
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 146
    :cond_11
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    .line 583
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 584
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 590
    :goto_26
    return-void

    .line 588
    :cond_27
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_26
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 544
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v5

    .line 545
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_8c

    sub-int v0, p4, p2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 546
    .local v2, "x":I
    :goto_e
    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    .line 547
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 549
    .local v4, "contentHeight":I
    iget-object v0, p0, mClose:Landroid/view/View;

    if-eqz v0, :cond_4d

    iget-object v0, p0, mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4d

    .line 550
    iget-object v0, p0, mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 551
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_92

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 552
    .local v14, "startMargin":I
    :goto_39
    if-eqz v5, :cond_95

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 553
    .local v12, "endMargin":I
    :goto_3d
    invoke-static {v2, v14, v5}, next(IIZ)I

    move-result v2

    .line 554
    iget-object v1, p0, mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 555
    invoke-static {v2, v12, v5}, next(IIZ)I

    move-result v2

    .line 559
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_4d
    iget-object v0, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_67

    iget-object v0, p0, mCustomView:Landroid/view/View;

    if-nez v0, :cond_67

    iget-object v0, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_67

    .line 560
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 563
    :cond_67
    iget-object v0, p0, mCustomView:Landroid/view/View;

    if-eqz v0, :cond_73

    .line 564
    iget-object v1, p0, mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 567
    :cond_73
    if-eqz v5, :cond_98

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    .line 569
    :goto_79
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_8b

    .line 570
    iget-object v7, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-nez v5, :cond_a1

    const/4 v11, 0x1

    :goto_82
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 572
    :cond_8b
    return-void

    .line 545
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_8c
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    goto/16 :goto_e

    .line 551
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_92
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_39

    .line 552
    .restart local v14    # "startMargin":I
    :cond_95
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3d

    .line 567
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_98
    sub-int v0, p4, p2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_79

    .line 570
    :cond_a1
    const/4 v11, 0x0

    goto :goto_82
.end method

.method protected onMeasure(II)V
    .registers 34
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 396
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 397
    .local v27, "widthMode":I
    const/high16 v28, 0x40000000    # 2.0f

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_34

    .line 398
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " can only be used "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 402
    :cond_34
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 403
    .local v14, "heightMode":I
    if-nez v14, :cond_62

    .line 404
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " can only be used "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 408
    :cond_62
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 410
    .local v6, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v28, v0

    if-lez v28, :cond_313

    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v17, v0

    .line 413
    .local v17, "maxHeight":I
    :goto_74
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v29

    add-int v26, v28, v29

    .line 414
    .local v26, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v28

    sub-int v28, v6, v28

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v29

    sub-int v4, v28, v29

    .line 415
    .local v4, "availableWidth":I
    sub-int v13, v17, v26

    .line 416
    .local v13, "height":I
    const/high16 v28, -0x80000000

    move/from16 v0, v28

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 418
    .local v5, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_dc

    move-object/from16 v0, p0

    iget-object v0, v0, mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_dc

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, mClose:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 421
    .local v16, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    sub-int v4, v4, v28

    .line 424
    .end local v16    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_106

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, measureChildView(Landroid/view/View;III)I

    move-result v4

    .line 429
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    if-eqz v28, :cond_280

    move-object/from16 v0, p0

    iget-object v0, v0, mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    if-nez v28, :cond_280

    .line 431
    sget-boolean v28, mIsThemeDeviceDefaultFamily:Z

    if-eqz v28, :cond_17e

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_17e

    .line 433
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, mTitleStyleRes:I

    move/from16 v29, v0

    sget-object v30, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 435
    .local v3, "appearance":Landroid/content/res/TypedArray;
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v25

    .line 436
    .local v25, "value":Landroid/util/TypedValue;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 438
    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v20

    .line 439
    .local v20, "textSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitle:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_319

    .line 440
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, v28

    iget v12, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 442
    .local v12, "fontScale":F
    move-object/from16 v0, p0

    iget v0, v0, mMaxFontScale:F

    move/from16 v28, v0

    cmpl-float v28, v12, v28

    if-lez v28, :cond_171

    .line 443
    move-object/from16 v0, p0

    iget v12, v0, mMaxFontScale:F

    .line 445
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    mul-float v30, v20, v12

    invoke-virtual/range {v28 .. v30}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 454
    .end local v3    # "appearance":Landroid/content/res/TypedArray;
    .end local v12    # "fontScale":F
    .end local v20    # "textSize":F
    .end local v25    # "value":Landroid/util/TypedValue;
    :cond_17e
    :goto_17e
    sget-boolean v28, mIsThemeDeviceDefaultFamily:Z

    if-eqz v28, :cond_18a

    move-object/from16 v0, p0

    iget-object v0, v0, mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1a4

    :cond_18a
    move-object/from16 v0, p0

    iget-object v0, v0, mClose:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23e

    move-object/from16 v0, p0

    iget-object v0, v0, mClose:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23e

    .line 455
    :cond_1a4
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_1f1

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 457
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v28

    if-nez v28, :cond_32c

    .line 458
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050134

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 462
    :goto_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23e

    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getVisibility()I

    move-result v28

    if-nez v28, :cond_23e

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 466
    .restart local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v28

    if-nez v28, :cond_348

    .line 467
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050134

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 471
    :goto_231
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_23e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mTitleOptional:Z

    move/from16 v28, v0

    if-eqz v28, :cond_36c

    .line 476
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v23

    .line 478
    .local v23, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v22

    .line 480
    .local v22, "titleWidth":I
    move/from16 v0, v22

    if-gt v0, v4, :cond_364

    const/16 v21, 0x1

    .line 481
    .local v21, "titleFits":Z
    :goto_26b
    if-eqz v21, :cond_26f

    .line 482
    sub-int v4, v4, v22

    .line 484
    :cond_26f
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    if-eqz v21, :cond_368

    const/16 v28, 0x0

    :goto_279
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 490
    .end local v21    # "titleFits":Z
    .end local v22    # "titleWidth":I
    .end local v23    # "titleWidthSpec":I
    :cond_280
    :goto_280
    move-object/from16 v0, p0

    iget-object v0, v0, mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2eb

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 492
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_380

    const/high16 v11, 0x40000000    # 2.0f

    .line 494
    .local v11, "customWidthMode":I
    :goto_2a2
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    if-ltz v28, :cond_384

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 496
    .local v10, "customWidth":I
    :goto_2b6
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_387

    const/high16 v9, 0x40000000    # 2.0f

    .line 498
    .local v9, "customHeightMode":I
    :goto_2c6
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    if-ltz v28, :cond_38b

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 500
    .local v8, "customHeight":I
    :goto_2da
    move-object/from16 v0, p0

    iget-object v0, v0, mCustomView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->measure(II)V

    .line 504
    .end local v8    # "customHeight":I
    .end local v9    # "customHeightMode":I
    .end local v10    # "customWidth":I
    .end local v11    # "customWidthMode":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2eb
    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v28, v0

    if-gtz v28, :cond_3a1

    .line 505
    const/16 v18, 0x0

    .line 506
    .local v18, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v7

    .line 507
    .local v7, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2fa
    if-ge v15, v7, :cond_38e

    .line 508
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 509
    .local v24, "v":Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v28

    add-int v19, v28, v26

    .line 510
    .local v19, "paddedViewHeight":I
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_310

    .line 511
    move/from16 v18, v19

    .line 507
    :cond_310
    add-int/lit8 v15, v15, 0x1

    goto :goto_2fa

    .line 410
    .end local v4    # "availableWidth":I
    .end local v5    # "childSpecHeight":I
    .end local v7    # "count":I
    .end local v13    # "height":I
    .end local v15    # "i":I
    .end local v17    # "maxHeight":I
    .end local v18    # "measuredHeight":I
    .end local v19    # "paddedViewHeight":I
    .end local v24    # "v":Landroid/view/View;
    .end local v26    # "verticalPadding":I
    :cond_313
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    goto/16 :goto_74

    .line 448
    .restart local v3    # "appearance":Landroid/content/res/TypedArray;
    .restart local v4    # "availableWidth":I
    .restart local v5    # "childSpecHeight":I
    .restart local v13    # "height":I
    .restart local v17    # "maxHeight":I
    .restart local v20    # "textSize":F
    .restart local v25    # "value":Landroid/util/TypedValue;
    .restart local v26    # "verticalPadding":I
    :cond_319
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleView:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_17e

    .line 460
    .end local v3    # "appearance":Landroid/content/res/TypedArray;
    .end local v20    # "textSize":F
    .end local v25    # "value":Landroid/util/TypedValue;
    .local v16, "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_32c
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050134

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1e4

    .line 469
    :cond_348
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050134

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_231

    .line 480
    .end local v16    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v22    # "titleWidth":I
    .restart local v23    # "titleWidthSpec":I
    :cond_364
    const/16 v21, 0x0

    goto/16 :goto_26b

    .line 484
    .restart local v21    # "titleFits":Z
    :cond_368
    const/16 v28, 0x8

    goto/16 :goto_279

    .line 486
    .end local v21    # "titleFits":Z
    .end local v22    # "titleWidth":I
    .end local v23    # "titleWidthSpec":I
    :cond_36c
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v4, v5, v2}, measureChildView(Landroid/view/View;III)I

    move-result v4

    goto/16 :goto_280

    .line 492
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_380
    const/high16 v11, -0x80000000

    goto/16 :goto_2a2

    .restart local v11    # "customWidthMode":I
    :cond_384
    move v10, v4

    .line 494
    goto/16 :goto_2b6

    .line 496
    .restart local v10    # "customWidth":I
    :cond_387
    const/high16 v9, -0x80000000

    goto/16 :goto_2c6

    .restart local v9    # "customHeightMode":I
    :cond_38b
    move v8, v13

    .line 498
    goto/16 :goto_2da

    .line 514
    .end local v9    # "customHeightMode":I
    .end local v10    # "customWidth":I
    .end local v11    # "customWidthMode":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v7    # "count":I
    .restart local v15    # "i":I
    .restart local v18    # "measuredHeight":I
    :cond_38e
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, setMeasuredDimension(II)V

    .line 520
    .end local v7    # "count":I
    .end local v15    # "i":I
    .end local v18    # "measuredHeight":I
    :goto_395
    move-object/from16 v0, p0

    iget-boolean v0, v0, mChangedTheme:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3a0

    .line 521
    invoke-virtual/range {p0 .. p0}, twUpdateBackgroundBounds()V

    .line 524
    :cond_3a0
    return-void

    .line 516
    :cond_3a1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, setMeasuredDimension(II)V

    goto :goto_395
.end method

.method public setContentHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 182
    iput p1, p0, mContentHeight:I

    .line 183
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, mCustomView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, removeView(Landroid/view/View;)V

    .line 189
    :cond_9
    iput-object p1, p0, mCustomView:Landroid/view/View;

    .line 190
    if-eqz p1, :cond_19

    iget-object v0, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19

    .line 191
    iget-object v0, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, removeView(Landroid/view/View;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, mTitleLayout:Landroid/widget/LinearLayout;

    .line 194
    :cond_19
    if-eqz p1, :cond_1e

    .line 195
    invoke-virtual {p0, p1}, addView(Landroid/view/View;)V

    .line 197
    :cond_1e
    invoke-virtual {p0}, requestLayout()V

    .line 198
    return-void
.end method

.method public setSplitToolbar(Z)V
    .registers 8
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 150
    iget-boolean v2, p0, mSplitActionBar:Z

    if-eq v2, p1, :cond_38

    .line 151
    iget-object v2, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_35

    .line 153
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 155
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_39

    .line 156
    iget-object v2, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    .line 157
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 159
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_30

    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_30
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 179
    :cond_38
    return-void

    .line 163
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_39
    iget-object v2, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 166
    iget-object v2, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 168
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    iget v2, p0, mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    iget-object v2, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    .line 171
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    iget-object v3, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 173
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_7b

    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_7b
    iget-object v2, p0, mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_35
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    iput-object p1, p0, mSubtitle:Ljava/lang/CharSequence;

    .line 207
    invoke-direct {p0}, initTitle()V

    .line 208
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 201
    iput-object p1, p0, mTitle:Ljava/lang/CharSequence;

    .line 202
    invoke-direct {p0}, initTitle()V

    .line 203
    return-void
.end method

.method public setTitleOptional(Z)V
    .registers 3
    .param p1, "titleOptional"    # Z

    .prologue
    .line 593
    iget-boolean v0, p0, mTitleOptional:Z

    if-eq p1, v0, :cond_7

    .line 594
    invoke-virtual {p0}, requestLayout()V

    .line 596
    :cond_7
    iput-boolean p1, p0, mTitleOptional:Z

    .line 597
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 361
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 363
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected twUpdateBackgroundBounds()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 529
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 530
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    .line 540
    :goto_7
    return-void

    .line 534
    :cond_8
    iget-boolean v2, p0, mChangedTheme:Z

    if-eqz v2, :cond_34

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_34

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, getWidth()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 535
    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 536
    .local v1, "height":I
    invoke-virtual {p0}, getRight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7

    .line 538
    .end local v1    # "height":I
    :cond_34
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->twUpdateBackgroundBounds()V

    goto :goto_7
.end method
