.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$1;,
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mChangedTheme:Z

.field private mDefaultTextSize:F

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mMaxFontScale:F

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    iput v7, p0, mSelectedTab:I

    .line 66
    iput-boolean v5, p0, mDrawBottomStrips:Z

    .line 69
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, mBounds:Landroid/graphics/Rect;

    .line 72
    iput v7, p0, mImposedTabsHeight:I

    .line 82
    const v4, 0x3f99999a    # 1.2f

    iput v4, p0, mMaxFontScale:F

    .line 100
    sget-object v4, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, setStripEnabled(Z)V

    .line 104
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-direct {p0}, initTabWidget()V

    .line 112
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v7, 0x11600bd

    invoke-virtual {v4, v7, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 114
    iget v4, v1, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_a3

    move v4, v5

    :goto_4f
    iput-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "current_sec_active_themepackage"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "themeName":Ljava/lang/String;
    iget-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_a5

    if-eqz v3, :cond_a5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x230

    if-ne v4, v7, :cond_a5

    :goto_6f
    iput-boolean v5, p0, mChangedTheme:Z

    .line 121
    iget-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_a2

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v5, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    const/16 v4, 0x8f

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 125
    .local v2, "tabTextAppearnceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v4}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    iput v4, p0, mDefaultTextSize:F

    .line 135
    .end local v2    # "tabTextAppearnceId":I
    :cond_a2
    return-void

    .end local v3    # "themeName":Ljava/lang/String;
    :cond_a3
    move v4, v6

    .line 114
    goto :goto_4f

    .restart local v3    # "themeName":Ljava/lang/String;
    :cond_a5
    move v5, v6

    .line 117
    goto :goto_6f
.end method

.method static synthetic access$100(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .registers 2
    .param p0, "x0"    # Landroid/widget/TabWidget;

    .prologue
    .line 57
    iget-object v0, p0, mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 211
    invoke-virtual {p0, v3}, setChildrenDrawingOrderEnabled(Z)V

    .line 213
    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 217
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_30

    .line 219
    iget-object v1, p0, mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1c

    .line 220
    const v1, 0x1080809

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 223
    :cond_1c
    iget-object v1, p0, mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_29

    .line 224
    const v1, 0x108080b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 241
    :cond_29
    :goto_29
    invoke-virtual {p0, v3}, setFocusable(Z)V

    .line 242
    invoke-virtual {p0, p0}, setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 243
    return-void

    .line 229
    :cond_30
    iget-object v1, p0, mLeftStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3d

    .line 230
    const v1, 0x1080808

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 233
    :cond_3d
    iget-object v1, p0, mRightStrip:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_29

    .line 234
    const v1, 0x108080a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_29
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_16

    .line 578
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 581
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 582
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_16
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 587
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 589
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 593
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 595
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 408
    iget v0, p0, mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 409
    invoke-virtual {p0}, getTabCount()I

    move-result v0

    if-lez v0, :cond_16

    iget v0, p0, mSelectedTab:I

    invoke-virtual {p0, v0}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_16

    .line 411
    invoke-virtual {p0}, invalidate()V

    .line 414
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 419
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 422
    invoke-virtual {p0}, getTabCount()I

    move-result v5

    if-nez v5, :cond_b

    .line 453
    :cond_a
    :goto_a
    return-void

    .line 426
    :cond_b
    iget-boolean v5, p0, mDrawBottomStrips:Z

    if-eqz v5, :cond_a

    .line 431
    iget v5, p0, mSelectedTab:I

    invoke-virtual {p0, v5}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 433
    .local v4, "selectedChild":Landroid/view/View;
    iget-object v1, p0, mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 434
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 436
    .local v3, "rightStrip":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 437
    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 439
    iget-boolean v5, p0, mStripMoved:Z

    if-eqz v5, :cond_6f

    .line 440
    iget-object v0, p0, mBounds:Landroid/graphics/Rect;

    .line 441
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 442
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 443
    invoke-virtual {p0}, getHeight()I

    move-result v2

    .line 444
    .local v2, "myHeight":I
    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, getWidth()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    iput-boolean v10, p0, mStripMoved:Z

    .line 451
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "myHeight":I
    :cond_6f
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 452
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 502
    invoke-virtual {p0, p1}, onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 504
    iget v1, p0, mSelectedTab:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 505
    iget v1, p0, mSelectedTab:I

    invoke-virtual {p0, v1}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1b

    .line 507
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 510
    .end local v0    # "tabView":Landroid/view/View;
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public focusCurrentTab(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 553
    iget v0, p0, mSelectedTab:I

    .line 556
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, setCurrentTab(I)V

    .line 559
    if-eq v0, p1, :cond_e

    .line 560
    invoke-virtual {p0, p1}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 562
    :cond_e
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 515
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 195
    iget v0, p0, mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 205
    .end local p2    # "i":I
    :cond_5
    :goto_5
    return p2

    .line 200
    .restart local p2    # "i":I
    :cond_6
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_d

    .line 201
    iget p2, p0, mSelectedTab:I

    goto :goto_5

    .line 202
    :cond_d
    iget v0, p0, mSelectedTab:I

    if-lt p2, v0, :cond_5

    .line 203
    add-int/lit8 p2, p2, 0x1

    goto :goto_5
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 315
    invoke-virtual {p0, p1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 323
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .registers 2

    .prologue
    .line 403
    iget-boolean v0, p0, mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 249
    invoke-virtual {p0}, isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, mImposedTabsHeight:I

    if-ltz v0, :cond_1b

    .line 250
    iget-object v0, p0, mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 252
    iget v0, p0, mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 256
    :cond_1b
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 258
    return-void
.end method

.method measureHorizontal(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 262
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    if-nez v10, :cond_a

    .line 263
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 306
    :goto_9
    return-void

    .line 268
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 269
    .local v9, "width":I
    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 271
    .local v8, "unspecifiedWidth":I
    const/4 v10, -0x1

    iput v10, p0, mImposedTabsHeight:I

    .line 272
    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 274
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v10

    sub-int v5, v10, v9

    .line 275
    .local v5, "extraWidth":I
    if-lez v5, :cond_7f

    .line 276
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 278
    .local v3, "count":I
    const/4 v1, 0x0

    .line 279
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_27
    if-ge v6, v3, :cond_3b

    .line 280
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_38

    .line 279
    :goto_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 282
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 285
    .end local v0    # "child":Landroid/view/View;
    :cond_3b
    if-lez v1, :cond_7f

    .line 286
    iget-object v10, p0, mImposedTabWidths:[I

    if-eqz v10, :cond_46

    iget-object v10, p0, mImposedTabWidths:[I

    array-length v10, v10

    if-eq v10, v3, :cond_4a

    .line 287
    :cond_46
    new-array v10, v3, [I

    iput-object v10, p0, mImposedTabWidths:[I

    .line 289
    :cond_4a
    const/4 v6, 0x0

    :goto_4b
    if-ge v6, v3, :cond_7f

    .line 290
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5c

    .line 289
    :goto_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 292
    :cond_5c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 293
    .local v2, "childWidth":I
    div-int v4, v5, v1

    .line 294
    .local v4, "delta":I
    const/4 v10, 0x0

    sub-int v11, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 295
    .local v7, "newWidth":I
    iget-object v10, p0, mImposedTabWidths:[I

    aput v7, v10, v6

    .line 297
    sub-int v10, v2, v7

    sub-int/2addr v5, v10

    .line 298
    add-int/lit8 v1, v1, -0x1

    .line 299
    iget v10, p0, mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, mImposedTabsHeight:I

    goto :goto_59

    .line 305
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "childWidth":I
    .end local v3    # "count":I
    .end local v4    # "delta":I
    .end local v6    # "i":I
    .end local v7    # "newWidth":I
    :cond_7f
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_9
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 612
    if-ne p1, p0, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual {p0}, getTabCount()I

    move-result v2

    if-lez v2, :cond_19

    iget v2, p0, mSelectedTab:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 613
    iget v2, p0, mSelectedTab:I

    invoke-virtual {p0, v2}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 633
    :cond_18
    :goto_18
    return-void

    .line 617
    :cond_19
    if-eqz p2, :cond_18

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "i":I
    invoke-virtual {p0}, getTabCount()I

    move-result v1

    .line 620
    .local v1, "numTabs":I
    :goto_20
    if-ge v0, v1, :cond_18

    .line 621
    invoke-virtual {p0, v0}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_3d

    .line 622
    invoke-virtual {p0, v0}, setCurrentTab(I)V

    .line 623
    iget-object v2, p0, mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/widget/TabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 624
    invoke-virtual {p0}, isShown()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 626
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, sendAccessibilityEvent(I)V

    goto :goto_18

    .line 630
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 522
    invoke-virtual {p0}, getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 523
    iget v0, p0, mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 524
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 160
    iget-boolean v6, p0, mChangedTheme:Z

    if-eqz v6, :cond_a

    .line 161
    invoke-virtual {p0}, twUpdateBackgroundBounds()V

    .line 166
    :cond_a
    iget-boolean v6, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v6, :cond_4b

    .line 167
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 168
    .local v2, "fontScale":F
    iget v6, p0, mMaxFontScale:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_24

    .line 169
    iget v2, p0, mMaxFontScale:F

    .line 172
    :cond_24
    invoke-virtual {p0}, getTabCount()I

    move-result v1

    .line 173
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    if-ge v3, v1, :cond_4b

    .line 174
    invoke-virtual {p0, v3}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_48

    .line 176
    const v6, 0x1020016

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 177
    .local v5, "vTextView":Landroid/view/View;
    if-eqz v5, :cond_48

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_48

    move-object v4, v5

    .line 178
    check-cast v4, Landroid/widget/TextView;

    .line 179
    .local v4, "textView":Landroid/widget/TextView;
    const/4 v6, 0x1

    iget v7, p0, mDefaultTextSize:F

    mul-float/2addr v7, v2

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 173
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "vTextView":Landroid/view/View;
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 185
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "fontScale":F
    .end local v3    # "i":I
    :cond_4b
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, mStripMoved:Z

    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 191
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 599
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 600
    const/4 v0, -0x1

    iput v0, p0, mSelectedTab:I

    .line 601
    return-void
.end method

.method public sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, isFocused()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 532
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 536
    :goto_11
    return-void

    .line 535
    :cond_12
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_11
.end method

.method public setCurrentTab(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 483
    if-ltz p1, :cond_d

    invoke-virtual {p0}, getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_d

    iget v0, p0, mSelectedTab:I

    if-ne p1, v0, :cond_e

    .line 497
    :cond_d
    :goto_d
    return-void

    .line 487
    :cond_e
    iget v0, p0, mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 488
    iget v0, p0, mSelectedTab:I

    invoke-virtual {p0, v0}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 490
    :cond_1d
    iput p1, p0, mSelectedTab:I

    .line 491
    iget v0, p0, mSelectedTab:I

    invoke-virtual {p0, v0}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 492
    iput-boolean v2, p0, mStripMoved:Z

    .line 494
    invoke-virtual {p0}, isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 495
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, sendAccessibilityEvent(I)V

    goto :goto_d
.end method

.method public setDividerDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 341
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 568
    invoke-virtual {p0}, getTabCount()I

    move-result v1

    .line 569
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 570
    invoke-virtual {p0, v2}, getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 571
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 569
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 573
    .end local v0    # "child":Landroid/view/View;
    :cond_14
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 362
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 350
    iput-object p1, p0, mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-virtual {p0}, requestLayout()V

    .line 352
    invoke-virtual {p0}, invalidate()V

    .line 353
    return-void
.end method

.method public setRightStripDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 383
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 371
    iput-object p1, p0, mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 372
    invoke-virtual {p0}, requestLayout()V

    .line 373
    invoke-virtual {p0}, invalidate()V

    .line 374
    return-void
.end method

.method public setStripEnabled(Z)V
    .registers 2
    .param p1, "stripEnabled"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, mDrawBottomStrips:Z

    .line 395
    invoke-virtual {p0}, invalidate()V

    .line 396
    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .prologue
    .line 607
    iput-object p1, p0, mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 608
    return-void
.end method

.method protected twUpdateBackgroundBounds()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    .line 152
    :goto_7
    return-void

    .line 145
    :cond_8
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 146
    .local v2, "target":Landroid/view/View;
    iget-boolean v3, p0, mChangedTheme:Z

    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3c

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 147
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 148
    .local v1, "height":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_7

    .line 150
    .end local v1    # "height":I
    :cond_3c
    invoke-super {p0}, Landroid/widget/LinearLayout;->twUpdateBackgroundBounds()V

    goto :goto_7
.end method
