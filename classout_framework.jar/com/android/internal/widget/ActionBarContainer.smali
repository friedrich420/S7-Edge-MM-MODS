.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarContainer$1;,
        Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;
    }
.end annotation


# static fields
.field protected static mIsThemeDeviceDefaultFamily:Z


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private mActionContextView:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mIgnoreConfigurationUpdate:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTabOnTop:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;

.field private mWasChangedTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean v5, p0, mIsTabOnTop:Z

    .line 75
    new-instance v3, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/internal/widget/ActionBarContainer$ActionBarBackgroundDrawable;-><init>(Lcom/android/internal/widget/ActionBarContainer;Lcom/android/internal/widget/ActionBarContainer$1;)V

    invoke-virtual {p0, v3}, setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 82
    const/4 v3, 0x4

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, mHeight:I

    .line 84
    invoke-virtual {p0}, getId()I

    move-result v3

    const v6, 0x1020472

    if-ne v3, v6, :cond_40

    .line 85
    iput-boolean v4, p0, mIsSplit:Z

    .line 86
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 89
    :cond_40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    iget-boolean v3, p0, mIsSplit:Z

    if-eqz v3, :cond_88

    iget-object v3, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_86

    move v3, v4

    :goto_4c
    invoke-virtual {p0, v3}, setWillNotDraw(Z)V

    .line 95
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 96
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x11600bd

    invoke-virtual {v3, v6, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_94

    move v3, v4

    :goto_63
    sput-boolean v3, mIsThemeDeviceDefaultFamily:Z

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "packageName":Ljava/lang/String;
    sget-boolean v3, mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_96

    if-eqz v2, :cond_96

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x230

    if-ne v3, v6, :cond_96

    :goto_83
    iput-boolean v4, p0, mWasChangedTheme:Z

    .line 102
    return-void

    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_86
    move v3, v5

    .line 91
    goto :goto_4c

    :cond_88
    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_92

    iget-object v3, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_92

    move v3, v4

    goto :goto_4c

    :cond_92
    move v3, v5

    goto :goto_4c

    .restart local v1    # "outValue":Landroid/util/TypedValue;
    :cond_94
    move v3, v5

    .line 97
    goto :goto_63

    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_96
    move v4, v5

    .line 100
    goto :goto_83
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarContainer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-boolean v0, p0, mIsSplit:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarContainer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-boolean v0, p0, mIsStacked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarContainer;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, mActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-static {p0}, isCollapsed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private static isCollapsed(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 336
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 231
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 232
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 234
    :cond_18
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 235
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 237
    :cond_2d
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 238
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 240
    :cond_42
    return-void
.end method

.method public getContainerHeight()I
    .registers 2

    .prologue
    .line 518
    iget v0, p0, mHeight:I

    return v0
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, mTabContainer:Landroid/view/View;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 245
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 246
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 248
    :cond_c
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 249
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 251
    :cond_15
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 252
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 254
    :cond_1e
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-boolean v2, mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_82

    iget-boolean v2, p0, mIgnoreConfigurationUpdate:Z

    if-nez v2, :cond_82

    .line 111
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v2, p0, mActionBarView:Landroid/view/View;

    if-eqz v2, :cond_7a

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7a

    .line 115
    iget-object v2, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 116
    .local v1, "height":I
    iget-boolean v2, p0, mWasChangedTheme:Z

    if-eqz v2, :cond_63

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_63

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 117
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, setElevation(F)V

    .line 118
    iget-object v2, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 120
    :cond_63
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    .end local v1    # "height":I
    :cond_7a
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    :cond_82
    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, mHeight:I

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 137
    const v0, 0x1020470

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mActionBarView:Landroid/view/View;

    .line 138
    const v0, 0x1020471

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mActionContextView:Landroid/view/View;

    .line 139
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 289
    iget-boolean v0, p0, mIsTransitioning:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onLayout(ZIIII)V
    .registers 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 377
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 379
    move-object/from16 v0, p0

    iget-object v10, v0, mTabContainer:Landroid/view/View;

    .line 380
    .local v10, "tabContainer":Landroid/view/View;
    if-eqz v10, :cond_46

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_46

    const/4 v5, 0x1

    .line 382
    .local v5, "hasTabs":Z
    :goto_12
    if-eqz v10, :cond_62

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_62

    .line 383
    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v3

    .line 384
    .local v3, "containerHeight":I
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 385
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 387
    .local v11, "tabHeight":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, mIsTabOnTop:Z

    if-eqz v12, :cond_87

    .line 389
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v4

    .line 390
    .local v4, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35
    if-ge v7, v4, :cond_56

    .line 391
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 393
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, mTabContainer:Landroid/view/View;

    if-ne v2, v12, :cond_48

    .line 390
    :cond_43
    :goto_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 380
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v5    # "hasTabs":Z
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    :cond_46
    const/4 v5, 0x0

    goto :goto_12

    .line 395
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "containerHeight":I
    .restart local v4    # "count":I
    .restart local v5    # "hasTabs":Z
    .restart local v7    # "i":I
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "tabHeight":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v12, v0, mActionBarView:Landroid/view/View;

    invoke-static {v12}, isCollapsed(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_43

    .line 396
    invoke-virtual {v2, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_43

    .line 399
    .end local v2    # "child":Landroid/view/View;
    :cond_56
    move-object/from16 v0, p0

    iget-object v12, v0, mTabContainer:Landroid/view/View;

    const/4 v13, 0x0

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v12, v0, v13, v1, v11}, Landroid/view/View;->layout(IIII)V

    .line 407
    .end local v3    # "containerHeight":I
    .end local v4    # "count":I
    .end local v7    # "i":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    :cond_62
    :goto_62
    const/4 v9, 0x0

    .line 408
    .local v9, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget-boolean v12, v0, mIsSplit:Z

    if-eqz v12, :cond_98

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_81

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    const/4 v9, 0x1

    .line 446
    :cond_81
    :goto_81
    if-eqz v9, :cond_86

    .line 447
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 449
    :cond_86
    return-void

    .line 401
    .end local v9    # "needsInvalidate":Z
    .restart local v3    # "containerHeight":I
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "tabHeight":I
    :cond_87
    sub-int v12, v3, v11

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v3, v13

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v10, v0, v12, v1, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_62

    .line 414
    .end local v3    # "containerHeight":I
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "tabHeight":I
    .restart local v9    # "needsInvalidate":Z
    :cond_98
    move-object/from16 v0, p0

    iget-object v12, v0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_114

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_13a

    .line 417
    move-object/from16 v0, p0

    iget-object v12, v0, mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 418
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, mWasChangedTheme:Z

    if-eqz v12, :cond_f4

    move-object/from16 v0, p0

    iget-object v12, v0, mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_f4

    move-object/from16 v0, p0

    iget-object v12, v0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_f4

    .line 419
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, setElevation(F)V

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, mActionBarView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v6, v12

    .line 422
    :cond_f4
    move-object/from16 v0, p0

    iget-object v12, v0, mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, mActionBarView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, mActionBarView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, mActionBarView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 436
    .end local v6    # "height":I
    :goto_113
    const/4 v9, 0x1

    .line 438
    :cond_114
    move-object/from16 v0, p0

    iput-boolean v5, v0, mIsStacked:Z

    .line 439
    if-eqz v5, :cond_81

    move-object/from16 v0, p0

    iget-object v12, v0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_81

    .line 440
    move-object/from16 v0, p0

    iget-object v12, v0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 442
    const/4 v9, 0x1

    goto/16 :goto_81

    .line 429
    :cond_13a
    move-object/from16 v0, p0

    iget-object v12, v0, mActionContextView:Landroid/view/View;

    if-eqz v12, :cond_174

    move-object/from16 v0, p0

    iget-object v12, v0, mActionContextView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_174

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, mActionContextView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, mActionContextView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, mActionContextView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, mActionContextView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_113

    .line 434
    :cond_174
    move-object/from16 v0, p0

    iget-object v12, v0, mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_113
.end method

.method public onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, -0x80000000

    .line 346
    iget-object v6, p0, mActionBarView:Landroid/view/View;

    if-nez v6, :cond_1e

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v8, :cond_1e

    iget v6, p0, mHeight:I

    if-ltz v6, :cond_1e

    .line 348
    iget v6, p0, mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 351
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 353
    iget-object v6, p0, mActionBarView:Landroid/view/View;

    if-nez v6, :cond_26

    .line 373
    :cond_25
    :goto_25
    return-void

    .line 355
    :cond_26
    iget-object v6, p0, mTabContainer:Landroid/view/View;

    if-eqz v6, :cond_25

    iget-object v6, p0, mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_25

    .line 356
    const/4 v5, 0x0

    .line 357
    .local v5, "nonTabMaxHeight":I
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 358
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    if-ge v2, v1, :cond_58

    .line 359
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, mTabContainer:Landroid/view/View;

    if-ne v0, v6, :cond_47

    .line 358
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 363
    :cond_47
    invoke-static {v0}, isCollapsed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x0

    :goto_4e
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_44

    :cond_53
    invoke-direct {p0, v0}, getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v6

    goto :goto_4e

    .line 366
    .end local v0    # "child":Landroid/view/View;
    :cond_58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 367
    .local v4, "mode":I
    if-ne v4, v8, :cond_75

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 369
    .local v3, "maxHeight":I
    :goto_62
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, mTabContainer:Landroid/view/View;

    invoke-direct {p0, v7}, getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, setMeasuredDimension(II)V

    goto :goto_25

    .line 367
    .end local v3    # "maxHeight":I
    :cond_75
    const v3, 0x7fffffff

    goto :goto_62
.end method

.method public onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    .line 262
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 263
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 265
    :cond_c
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 266
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 268
    :cond_15
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1e

    .line 269
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 271
    :cond_1e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, mIgnoreConfigurationUpdate:Z

    .line 146
    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_13

    .line 147
    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 148
    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_13
    iput-object p1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 151
    if-eqz p1, :cond_6f

    .line 152
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    iget-object v3, p0, mActionBarView:Landroid/view/View;

    if-eqz v3, :cond_6f

    .line 155
    iget-object v3, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 156
    .local v0, "height":I
    iget-boolean v3, p0, mWasChangedTheme:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_58

    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 157
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, setElevation(F)V

    .line 158
    iget-object v3, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 160
    :cond_58
    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, mActionBarView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    .end local v0    # "height":I
    :cond_6f
    iget-boolean v3, p0, mIsSplit:Z

    if-eqz v3, :cond_83

    iget-object v3, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_81

    :cond_77
    :goto_77
    invoke-virtual {p0, v1}, setWillNotDraw(Z)V

    .line 171
    invoke-virtual {p0}, invalidate()V

    .line 174
    invoke-virtual {p0}, invalidateOutline()V

    .line 176
    return-void

    :cond_81
    move v1, v2

    .line 169
    goto :goto_77

    :cond_83
    iget-object v3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8b

    iget-object v3, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_77

    :cond_8b
    move v1, v2

    goto :goto_77
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 198
    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 199
    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_11
    iput-object p1, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 202
    if-eqz p1, :cond_2d

    .line 203
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 204
    iget-boolean v2, p0, mIsSplit:Z

    if-eqz v2, :cond_2d

    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2d

    .line 205
    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 208
    :cond_2d
    iget-boolean v2, p0, mIsSplit:Z

    if-eqz v2, :cond_3e

    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3c

    :cond_35
    :goto_35
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 210
    invoke-virtual {p0}, invalidate()V

    .line 211
    return-void

    :cond_3c
    move v0, v1

    .line 208
    goto :goto_35

    :cond_3e
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_46

    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_35

    :cond_46
    move v0, v1

    goto :goto_35
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 180
    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 181
    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_11
    iput-object p1, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 184
    if-eqz p1, :cond_3d

    .line 185
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 186
    iget-boolean v2, p0, mIsStacked:Z

    if-eqz v2, :cond_3d

    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3d

    .line 187
    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, mTabContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, mTabContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, mTabContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, mTabContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    :cond_3d
    iget-boolean v2, p0, mIsSplit:Z

    if-eqz v2, :cond_4e

    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4c

    :cond_45
    :goto_45
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    .line 193
    invoke-virtual {p0}, invalidate()V

    .line 194
    return-void

    :cond_4c
    move v0, v1

    .line 191
    goto :goto_45

    :cond_4e
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_56

    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_45

    :cond_56
    move v0, v1

    goto :goto_45
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 4
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 309
    iget-object v1, p0, mTabContainer:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 310
    iget-object v1, p0, mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 312
    :cond_9
    iput-object p1, p0, mTabContainer:Landroid/view/View;

    .line 313
    if-eqz p1, :cond_1e

    .line 314
    invoke-virtual {p0, p1}, addView(Landroid/view/View;)V

    .line 315
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 316
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 317
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 320
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1e
    return-void
.end method

.method public setTransitioning(Z)V
    .registers 3
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, mIsTransitioning:Z

    .line 283
    if-eqz p1, :cond_a

    const/high16 v0, 0x60000

    :goto_6
    invoke-virtual {p0, v0}, setDescendantFocusability(I)V

    .line 285
    return-void

    .line 283
    :cond_a
    const/high16 v0, 0x40000

    goto :goto_6
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    if-nez p1, :cond_23

    const/4 v0, 0x1

    .line 217
    .local v0, "isVisible":Z
    :goto_7
    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10

    iget-object v2, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 218
    :cond_10
    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    iget-object v2, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 219
    :cond_19
    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_22

    iget-object v2, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 220
    :cond_22
    return-void

    .end local v0    # "isVisible":Z
    :cond_23
    move v0, v1

    .line 216
    goto :goto_7
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 329
    if-eqz p3, :cond_7

    .line 330
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    .line 332
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public twPutTabsOnTop(Z)V
    .registers 2
    .param p1, "isTabOnTop"    # Z

    .prologue
    .line 527
    iput-boolean p1, p0, mIsTabOnTop:Z

    .line 528
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 224
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, mIsSplit:Z

    if-nez v0, :cond_1e

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
