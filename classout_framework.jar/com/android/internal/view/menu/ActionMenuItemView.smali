.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;,
        Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"

.field private static final TEMP_TOAST_HEIGHT:I = 0x28


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllowTextWithIcon:Z

.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultTextSize:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mHandler:Landroid/os/Handler;

.field private mHasSPenFeature:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsMultiWindow:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxFontScale:F

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 87
    iput-boolean v6, p0, mHasSPenFeature:Z

    .line 89
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, mHandler:Landroid/os/Handler;

    .line 92
    const/4 v7, 0x0

    iput v7, p0, mDefaultTextSize:F

    .line 93
    const v7, 0x3f99999a    # 1.2f

    iput v7, p0, mMaxFontScale:F

    .line 101
    iput-boolean v6, p0, mIsMultiWindow:Z

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 119
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x112006b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, mAllowTextWithIcon:Z

    .line 121
    sget-object v7, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, mMinWidth:I

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 128
    .local v2, "density":F
    const/high16 v7, 0x42000000    # 32.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, mMaxIconSize:I

    .line 130
    invoke-virtual {p0, p0}, setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0, p0}, setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 133
    const/4 v7, -0x1

    iput v7, p0, mSavedPaddingLeft:I

    .line 136
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 137
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bd

    invoke-virtual {v7, v8, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 138
    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_b3

    :goto_60
    iput-boolean v5, p0, mIsThemeDeviceDefaultFamily:Z

    .line 141
    iget-boolean v5, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_94

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v5, v9, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    const/16 v5, 0xbb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 145
    .local v1, "actionMeneTextAppearnceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    if-eqz v3, :cond_94

    .line 152
    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    iput v5, p0, mDefaultTextSize:F

    .line 156
    .end local v1    # "actionMeneTextAppearnceId":I
    :cond_94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, mHasSPenFeature:Z

    .line 158
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mArchivedBackground:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-boolean v5, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_b5

    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_b5

    .line 161
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, mActivity:Landroid/app/Activity;

    .line 166
    :goto_b2
    return-void

    .restart local p1    # "context":Landroid/content/Context;
    :cond_b3
    move v5, v6

    .line 138
    goto :goto_60

    .line 163
    :cond_b5
    iput-object v9, p0, mActivity:Landroid/app/Activity;

    goto :goto_b2
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 63
    iget-object v0, p0, mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 63
    iget-object v0, p0, mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 63
    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/ActionMenuItemView;

    .prologue
    .line 63
    iget-object v0, p0, mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method private changeButtonBackground()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    iget-boolean v2, p0, mIsThemeDeviceDefaultFamily:Z

    if-nez v2, :cond_7

    .line 180
    :goto_6
    return-void

    .line 174
    :cond_7
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_27

    .line 175
    .local v0, "show":Z
    :goto_18
    if-eqz v0, :cond_29

    invoke-virtual {p0}, hasText()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 176
    const v1, 0x108088e

    invoke-virtual {p0, v1}, setBackgroundResource(I)V

    goto :goto_6

    .end local v0    # "show":Z
    :cond_27
    move v0, v1

    .line 174
    goto :goto_18

    .line 178
    .restart local v0    # "show":Z
    :cond_29
    iget-object v1, p0, mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method private updateTextButtonVisibility()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 286
    iget-object v4, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    move v1, v2

    .line 289
    .local v1, "visible":Z
    :goto_b
    iget-object v4, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_23

    iget-object v4, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v4

    if-eqz v4, :cond_66

    iget-boolean v4, p0, mAllowTextWithIcon:Z

    if-nez v4, :cond_1f

    iget-boolean v4, p0, mExpandedFormat:Z

    if-eqz v4, :cond_66

    :cond_1f
    iget-boolean v4, p0, mIsMultiWindow:Z

    if-nez v4, :cond_66

    :cond_23
    move v4, v2

    :goto_24
    and-int/2addr v1, v4

    .line 299
    iget-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_4c

    iget v4, p0, mDefaultTextSize:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4c

    .line 300
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 302
    .local v0, "fontScale":F
    iget v4, p0, mMaxFontScale:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_46

    .line 303
    iget v0, p0, mMaxFontScale:F

    .line 305
    :cond_46
    iget v4, p0, mDefaultTextSize:F

    mul-float/2addr v4, v0

    invoke-virtual {p0, v2, v4}, setTextSize(IF)V

    .line 309
    .end local v0    # "fontScale":F
    :cond_4c
    if-eqz v1, :cond_68

    iget-object v4, p0, mTitle:Ljava/lang/CharSequence;

    :goto_50
    invoke-virtual {p0, v4}, setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {p0}, getHoverUIFeatureLevel()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5e

    iget-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_63

    .line 312
    :cond_5e
    if-eqz v1, :cond_6a

    .line 313
    invoke-virtual {p0, v3}, setHoverPopupType(I)V

    .line 319
    :cond_63
    :goto_63
    return-void

    .end local v1    # "visible":Z
    :cond_64
    move v1, v3

    .line 286
    goto :goto_b

    .restart local v1    # "visible":Z
    :cond_66
    move v4, v3

    .line 289
    goto :goto_24

    .line 309
    :cond_68
    const/4 v4, 0x0

    goto :goto_50

    .line 315
    :cond_6a
    invoke-virtual {p0, v2}, setHoverPopupType(I)V

    goto :goto_63
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 381
    invoke-virtual {p0}, getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v0

    if-nez v0, :cond_b

    .line 383
    invoke-virtual {p0, p1}, onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 385
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 366
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 344
    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .registers 4
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 209
    iput-object p1, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setTitle(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, setId(I)V

    .line 215
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p0, v0}, setVisibility(I)V

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, setEnabled(Z)V

    .line 218
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    if-nez v0, :cond_3d

    .line 219
    iget-object v0, p0, mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-nez v0, :cond_3d

    .line 220
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    .line 223
    :cond_3d
    return-void

    .line 215
    :cond_3e
    const/16 v0, 0x8

    goto :goto_1e
.end method

.method public needsDividerAfter()Z
    .registers 2

    .prologue
    .line 408
    invoke-virtual {p0}, hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .registers 2

    .prologue
    .line 404
    invoke-virtual {p0}, hasText()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_11

    .line 237
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/view/menu/ActionMenuItemView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$1;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    :cond_10
    :goto_10
    return-void

    .line 250
    :cond_11
    iget-object v0, p0, mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_10

    .line 251
    iget-object v0, p0, mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    goto :goto_10
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 187
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102d8

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x25

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, setMinHeight(I)V

    .line 189
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mAllowTextWithIcon:Z

    .line 194
    invoke-direct {p0}, updateTextButtonVisibility()V

    .line 195
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 360
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 361
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 413
    invoke-virtual/range {p0 .. p0}, hasText()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 415
    const/16 v20, 0x0

    .line 511
    :goto_8
    return v20

    .line 445
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [I

    .line 446
    .local v13, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 447
    .local v3, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getLocationOnScreen([I)V

    .line 448
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v4

    .line 451
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050017

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 452
    .local v15, "statusBarHeight":I
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v17

    .line 453
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v7

    .line 454
    .local v7, "height":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    .local v14, "screenWidth":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 456
    .local v12, "screenHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 457
    .local v5, "density":F
    const/16 v20, 0x0

    aget v20, v13, v20

    div-int/lit8 v21, v17, 0x2

    add-int v11, v20, v21

    .line 460
    .local v11, "referenceX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v20

    if-nez v20, :cond_101

    .line 461
    sub-int v11, v14, v11

    .line 462
    const/4 v8, 0x5

    .line 467
    .local v8, "horizontalGravity":I
    :goto_6a
    const/high16 v20, 0x40a00000    # 5.0f

    mul-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    sub-int v11, v11, v20

    .line 470
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsThemeDeviceDefaultFamily:Z

    move/from16 v20, v0

    if-eqz v20, :cond_104

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 476
    .local v2, "cheatSheet":Landroid/widget/Toast;
    :goto_8b
    const/4 v10, 0x0

    .line 477
    .local v10, "offsetY":I
    const/16 v20, 0x1

    aget v20, v13, v20

    add-int v20, v20, v7

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    if-ne v7, v0, :cond_114

    .line 478
    :cond_a4
    const/16 v20, 0x1

    aget v20, v13, v20

    sub-int v10, v20, v15

    .line 479
    or-int/lit8 v20, v8, 0x30

    add-int v21, v7, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v11, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 486
    :goto_b5
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    .line 487
    .local v9, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v9, :cond_fa

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v20

    if-eqz v20, :cond_fa

    .line 488
    const/high16 v20, 0x42200000    # 40.0f

    mul-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 489
    .local v16, "tempToastHeight":I
    const/4 v6, 0x0

    .line 490
    .local v6, "gravity":I
    const/16 v18, 0x0

    .line 491
    .local v18, "xOffset":I
    const/16 v19, 0x0

    .line 493
    .local v19, "yOffset":I
    const/16 v20, 0x1

    aget v20, v13, v20

    add-int v20, v20, v7

    add-int v20, v20, v16

    move/from16 v0, v20

    if-ge v0, v12, :cond_126

    .line 495
    const/16 v6, 0x35

    .line 496
    const/16 v20, 0x0

    aget v20, v13, v20

    sub-int v20, v14, v20

    div-int/lit8 v21, v17, 0x2

    sub-int v18, v20, v21

    .line 497
    const/16 v20, 0x1

    aget v20, v13, v20

    add-int v19, v20, v7

    .line 507
    :goto_f3
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v6, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 510
    .end local v6    # "gravity":I
    .end local v16    # "tempToastHeight":I
    .end local v18    # "xOffset":I
    .end local v19    # "yOffset":I
    :cond_fa
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 511
    const/16 v20, 0x1

    goto/16 :goto_8

    .line 465
    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    .end local v8    # "horizontalGravity":I
    .end local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v10    # "offsetY":I
    :cond_101
    const/4 v8, 0x3

    .restart local v8    # "horizontalGravity":I
    goto/16 :goto_6a

    .line 473
    :cond_104
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .restart local v2    # "cheatSheet":Landroid/widget/Toast;
    goto/16 :goto_8b

    .line 481
    .restart local v10    # "offsetY":I
    :cond_114
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v10, v12, v20

    .line 482
    or-int/lit8 v20, v8, 0x50

    add-int v21, v7, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v11, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_b5

    .line 501
    .restart local v6    # "gravity":I
    .restart local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v16    # "tempToastHeight":I
    .restart local v18    # "xOffset":I
    .restart local v19    # "yOffset":I
    :cond_126
    const/16 v6, 0x55

    .line 502
    const/16 v20, 0x0

    aget v20, v13, v20

    sub-int v20, v14, v20

    div-int/lit8 v21, v17, 0x2

    sub-int v18, v20, v21

    .line 503
    move/from16 v19, v7

    goto :goto_f3
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 518
    iget-boolean v2, p0, mIsMultiWindow:Z

    .line 520
    .local v2, "oldIsMultiWindow":Z
    const/4 v1, 0x0

    .line 521
    .local v1, "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v9, p0, mContext:Landroid/content/Context;

    instance-of v9, v9, Landroid/app/Activity;

    if-eqz v9, :cond_96

    .line 522
    iget-object v9, p0, mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 527
    :cond_11
    :goto_11
    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a4

    const/4 v9, 0x1

    :goto_1b
    iput-boolean v9, p0, mIsMultiWindow:Z

    .line 529
    iget-boolean v9, p0, mIsMultiWindow:Z

    if-eq v9, v2, :cond_24

    .line 530
    invoke-direct {p0}, updateTextButtonVisibility()V

    .line 535
    :cond_24
    invoke-virtual {p0}, hasText()Z

    move-result v5

    .line 536
    .local v5, "textVisible":Z
    if-eqz v5, :cond_3f

    iget v9, p0, mSavedPaddingLeft:I

    if-ltz v9, :cond_3f

    .line 537
    iget v9, p0, mSavedPaddingLeft:I

    invoke-virtual {p0}, getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, getPaddingRight()I

    move-result v11

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v12

    invoke-super {p0, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 541
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 543
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 544
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 545
    .local v8, "widthSize":I
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v3

    .line 546
    .local v3, "oldMeasuredWidth":I
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_a7

    iget v9, p0, mMinWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 549
    .local v4, "targetWidth":I
    :goto_58
    const/high16 v9, 0x40000000    # 2.0f

    if-eq v7, v9, :cond_6b

    iget v9, p0, mMinWidth:I

    if-lez v9, :cond_6b

    if-ge v3, v4, :cond_6b

    .line 551
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-super {p0, v9, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 555
    :cond_6b
    if-nez v5, :cond_92

    iget-object v9, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_92

    .line 558
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v6

    .line 559
    .local v6, "w":I
    iget-object v9, p0, mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 560
    .local v0, "dw":I
    sub-int v9, v6, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, getPaddingRight()I

    move-result v11

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v12

    invoke-super {p0, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 564
    .end local v0    # "dw":I
    .end local v6    # "w":I
    :cond_92
    invoke-direct {p0}, changeButtonBackground()V

    .line 566
    return-void

    .line 523
    .end local v3    # "oldMeasuredWidth":I
    .end local v4    # "targetWidth":I
    .end local v5    # "textVisible":Z
    .end local v7    # "widthMode":I
    .end local v8    # "widthSize":I
    :cond_96
    iget-object v9, p0, mContext:Landroid/content/Context;

    instance-of v9, v9, Landroid/content/ContextWrapper;

    if-eqz v9, :cond_11

    .line 524
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    goto/16 :goto_11

    .line 527
    :cond_a4
    const/4 v9, 0x0

    goto/16 :goto_1b

    .line 546
    .restart local v3    # "oldMeasuredWidth":I
    .restart local v5    # "textVisible":Z
    .restart local v7    # "widthMode":I
    .restart local v8    # "widthSize":I
    :cond_a7
    iget v4, p0, mMinWidth:I

    goto :goto_58
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 373
    invoke-virtual {p0}, getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 374
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 375
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_15
    return v0

    :cond_16
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2
    .param p1, "checkable"    # Z

    .prologue
    .line 270
    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 274
    return-void
.end method

.method public setExpandedFormat(Z)V
    .registers 3
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 277
    iget-boolean v0, p0, mExpandedFormat:Z

    if-eq v0, p1, :cond_f

    .line 278
    iput-boolean p1, p0, mExpandedFormat:Z

    .line 279
    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_f

    .line 280
    iget-object v0, p0, mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 283
    :cond_f
    return-void
.end method

.method public setHovered(Z)V
    .registers 3
    .param p1, "hovered"    # Z

    .prologue
    .line 391
    invoke-virtual {p0}, hasText()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 397
    :goto_6
    return-void

    .line 396
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/TextView;->setHovered(Z)V

    goto :goto_6
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 322
    iput-object p1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 323
    if-eqz p1, :cond_2f

    .line 324
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 325
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 326
    .local v0, "height":I
    iget v3, p0, mMaxIconSize:I

    if-le v2, v3, :cond_1d

    .line 327
    iget v3, p0, mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 328
    .local v1, "scale":F
    iget v2, p0, mMaxIconSize:I

    .line 329
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 331
    .end local v1    # "scale":F
    :cond_1d
    iget v3, p0, mMaxIconSize:I

    if-le v0, v3, :cond_2c

    .line 332
    iget v3, p0, mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 333
    .restart local v1    # "scale":F
    iget v0, p0, mMaxIconSize:I

    .line 334
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 336
    .end local v1    # "scale":F
    :cond_2c
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2f
    invoke-virtual {p0, p1, v5, v5, v5}, setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-direct {p0}, updateTextButtonVisibility()V

    .line 341
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2
    .param p1, "invoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 257
    iput-object p1, p0, mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 258
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 199
    iput p1, p0, mSavedPaddingLeft:I

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 201
    return-void
.end method

.method public setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .registers 2
    .param p1, "popupCallback"    # Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    .prologue
    .line 261
    iput-object p1, p0, mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    .line 262
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 349
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 352
    iput-object p1, p0, mTitle:Ljava/lang/CharSequence;

    .line 354
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, setContentDescription(Ljava/lang/CharSequence;)V

    .line 355
    invoke-direct {p0}, updateTextButtonVisibility()V

    .line 356
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method
