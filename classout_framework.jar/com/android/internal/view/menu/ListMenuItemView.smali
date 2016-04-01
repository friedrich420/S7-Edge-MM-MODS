.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCheckedTextColorMode:Z

.field private mIsDeviceDefaultLight:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    sget-object v3, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 73
    .local v2, "outValue":Landroid/util/TypedValue;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 74
    .local v1, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bd

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600bf

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_33

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_33

    .line 77
    iput-boolean v5, p0, mIsDeviceDefaultLight:Z

    .line 79
    :cond_33
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v3, -0x1

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, mTextAppearance:I

    .line 82
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, mPreserveIconSpacing:Z

    .line 84
    iput-object p1, p0, mTextAppearanceContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_c

    .line 315
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 317
    :cond_c
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .registers 4

    .prologue
    .line 295
    invoke-direct {p0}, getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 296
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, mCheckBox:Landroid/widget/CheckBox;

    .line 299
    iget-boolean v1, p0, mIsDeviceDefaultLight:Z

    if-eqz v1, :cond_1a

    .line 300
    iget-object v1, p0, mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :cond_1a
    iget-object v1, p0, mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    .line 303
    return-void
.end method

.method private insertIconView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 281
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090089

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, mIconView:Landroid/widget/ImageView;

    .line 283
    iget-object v1, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, addView(Landroid/view/View;I)V

    .line 284
    return-void
.end method

.method private insertRadioButton()V
    .registers 4

    .prologue
    .line 287
    invoke-direct {p0}, getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 288
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, mRadioButton:Landroid/widget/RadioButton;

    .line 291
    iget-object v1, p0, mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    .line 292
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .registers 9
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    const/4 v3, 0x0

    .line 113
    iput-object p1, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 114
    iput p2, p0, mMenuType:I

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "ts":I
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-boolean v2, p0, mIsDeviceDefaultLight:Z

    if-eqz v2, :cond_89

    iget-object v2, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, mTitleView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_89

    const/4 v2, 0x1

    :goto_1f
    iput-boolean v2, p0, mIsCheckedTextColorMode:Z

    .line 120
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8b

    move v2, v3

    :goto_28
    invoke-virtual {p0, v2}, setVisibility(I)V

    .line 122
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v2

    invoke-virtual {p0, v2}, setCheckable(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v4

    invoke-virtual {p0, v2, v4}, setShortcut(ZC)V

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, setEnabled(Z)V

    .line 128
    const v2, 0x1020016

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, mTitleView:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    iget v2, p0, mTextAppearance:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7c

    .line 132
    iget-object v2, p0, mTextAppearanceContext:Landroid/content/Context;

    iget v4, p0, mTextAppearance:I

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    .local v0, "appearance":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    .end local v0    # "appearance":Landroid/content/res/TypedArray;
    :cond_7c
    if-eqz v1, :cond_88

    .line 138
    iget-object v2, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 140
    :cond_88
    return-void

    :cond_89
    move v2, v3

    .line 117
    goto :goto_1f

    .line 120
    :cond_8b
    const/16 v2, 0x8

    goto :goto_28
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 101
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    const v0, 0x1020016

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mTitleView:Landroid/widget/TextView;

    .line 104
    iget v0, p0, mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 105
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 109
    :cond_21
    const v0, 0x10203e7

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mShortcutView:Landroid/widget/TextView;

    .line 110
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 324
    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_13

    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 327
    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 268
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_20

    iget-boolean v2, p0, mPreserveIconSpacing:Z

    if-eqz v2, :cond_20

    .line 270
    invoke-virtual {p0}, getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 271
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 272
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_20

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_20

    .line 273
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 276
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 277
    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 8
    .param p1, "checkable"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 160
    if-nez p1, :cond_e

    iget-object v3, p0, mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_e

    iget-object v3, p0, mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_e

    .line 205
    :cond_d
    :goto_d
    return-void

    .line 169
    :cond_e
    iget-object v3, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 170
    iget-object v3, p0, mRadioButton:Landroid/widget/RadioButton;

    if-nez v3, :cond_1d

    .line 171
    invoke-direct {p0}, insertRadioButton()V

    .line 173
    :cond_1d
    iget-object v0, p0, mRadioButton:Landroid/widget/RadioButton;

    .line 174
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, mCheckBox:Landroid/widget/CheckBox;

    .line 183
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_21
    if-eqz p1, :cond_6d

    .line 184
    iget-object v3, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 186
    if-eqz p1, :cond_6b

    .line 187
    .local v1, "newVisibility":I
    :goto_2e
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_37

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 192
    :cond_37
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_42

    .line 193
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 196
    :cond_42
    iget-boolean v3, p0, mIsCheckedTextColorMode:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 197
    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    check-cast v3, Landroid/widget/CheckedTextView;

    iget-object v5, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 198
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_d

    .line 176
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "newVisibility":I
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_5f
    iget-object v3, p0, mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_66

    .line 177
    invoke-direct {p0}, insertCheckBox()V

    .line 179
    :cond_66
    iget-object v0, p0, mCheckBox:Landroid/widget/CheckBox;

    .line 180
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_21

    :cond_6b
    move v1, v4

    .line 186
    goto :goto_2e

    .line 201
    :cond_6d
    iget-object v3, p0, mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_76

    iget-object v3, p0, mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 202
    :cond_76
    iget-object v3, p0, mRadioButton:Landroid/widget/RadioButton;

    if-eqz v3, :cond_7f

    iget-object v3, p0, mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 203
    :cond_7f
    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/widget/CheckedTextView;

    if-eqz v3, :cond_d

    iget-object v3, p0, mTitleView:Landroid/widget/TextView;

    check-cast v3, Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_d
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .prologue
    .line 210
    iget-object v1, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 211
    iget-object v1, p0, mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_f

    .line 212
    invoke-direct {p0}, insertRadioButton()V

    .line 214
    :cond_f
    iget-object v0, p0, mRadioButton:Landroid/widget/RadioButton;

    .line 222
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_11
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 223
    iget-boolean v1, p0, mIsCheckedTextColorMode:Z

    if-eqz v1, :cond_27

    iget-object v1, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 224
    iget-object v1, p0, mTitleView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v1, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 226
    :cond_27
    return-void

    .line 216
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_28
    iget-object v1, p0, mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2f

    .line 217
    invoke-direct {p0}, insertCheckBox()V

    .line 219
    :cond_2f
    iget-object v0, p0, mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_11
.end method

.method public setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, mForceShowIcon:Z

    iput-boolean p1, p0, mPreserveIconSpacing:Z

    .line 144
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v2, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, p0, mForceShowIcon:Z

    if-eqz v2, :cond_15

    :cond_d
    const/4 v0, 0x1

    .line 243
    .local v0, "showIcon":Z
    :goto_e
    if-nez v0, :cond_17

    iget-boolean v2, p0, mPreserveIconSpacing:Z

    if-nez v2, :cond_17

    .line 264
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_14
    :goto_14
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_15
    move v0, v1

    .line 242
    goto :goto_e

    .line 247
    .restart local v0    # "showIcon":Z
    :cond_17
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_21

    if-nez p1, :cond_21

    iget-boolean v2, p0, mPreserveIconSpacing:Z

    if-eqz v2, :cond_14

    .line 251
    :cond_21
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_28

    .line 252
    invoke-direct {p0}, insertIconView()V

    .line 255
    :cond_28
    if-nez p1, :cond_2e

    iget-boolean v2, p0, mPreserveIconSpacing:Z

    if-eqz v2, :cond_45

    .line 256
    :cond_2e
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_43

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_32
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_14

    .line 259
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 256
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_43
    const/4 p1, 0x0

    goto :goto_32

    .line 262
    :cond_45
    iget-object v1, p0, mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14
.end method

.method public setShortcut(ZC)V
    .registers 6
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 229
    if-eqz p1, :cond_26

    iget-object v1, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x0

    .line 232
    .local v0, "newVisibility":I
    :goto_b
    if-nez v0, :cond_18

    .line 233
    iget-object v1, p0, mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_18
    iget-object v1, p0, mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_25

    .line 237
    iget-object v1, p0, mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :cond_25
    return-void

    .line 229
    .end local v0    # "newVisibility":I
    :cond_26
    const/16 v0, 0x8

    goto :goto_b
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 147
    if-eqz p1, :cond_18

    .line 148
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_17
    :goto_17
    return-void

    .line 151
    :cond_18
    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_17

    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_17
.end method

.method public showsIcon()Z
    .registers 2

    .prologue
    .line 310
    iget-boolean v0, p0, mForceShowIcon:Z

    return v0
.end method
