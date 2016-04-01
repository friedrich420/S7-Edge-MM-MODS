.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final mIsUpgradedTablet:Z

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mDropDownResId:I

.field private mIsThemeDeviceDefaultFamily:Z

.field mMaxTabWidth:I

.field private mMinTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 75
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 80
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mocha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, mIsUpgradedTablet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v4, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v4, p0, mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 83
    iput v6, p0, mMinTabWidth:I

    .line 89
    invoke-virtual {p0, v6}, setHorizontalScrollBarEnabled(Z)V

    .line 91
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 92
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    invoke-virtual {p0, v4}, setContentHeight(I)V

    .line 93
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, p0, mStackedTabMaxWidth:I

    .line 95
    invoke-direct {p0}, createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, mTabLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v4, p0, mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v7}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 101
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v7, 0x11600bd

    invoke-virtual {v4, v7, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 102
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_74

    move v4, v5

    :goto_48
    iput-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    .line 104
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 105
    .local v2, "dropDownSpinnerText":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v7, 0x10102f5

    invoke-virtual {v4, v7, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iget v7, v2, Landroid/util/TypedValue;->data:I

    new-array v5, v5, [I

    const v8, 0x1010087

    aput v8, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, mDropDownResId:I

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "dropDownSpinnerText":Landroid/util/TypedValue;
    :cond_74
    move v4, v6

    .line 102
    goto :goto_48
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 57
    iget v0, p0, mMinTabWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 57
    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 57
    iget v0, p0, mDropDownResId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 57
    iget-object v0, p0, mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 57
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .registers 6
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/ActionBar$Tab;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .registers 5

    .prologue
    .line 292
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .registers 5

    .prologue
    .line 282
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 284
    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 285
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 286
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    return-object v0
.end method

.method private createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "forAdapter"    # Z
    .param p4, "forDropDownView"    # Z

    .prologue
    const/4 v6, 0x0

    .line 368
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)V

    .line 369
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p3, :cond_1c

    .line 370
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :goto_1b
    return-object v0

    .line 374
    :cond_1c
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 376
    iget-object v1, p0, mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_2b

    .line 377
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 379
    :cond_2b
    iget-object v1, p0, mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1b
.end method

.method private isCollapsed()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_e

    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private performCollapse()V
    .registers 6

    .prologue
    .line 230
    invoke-direct {p0}, isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 248
    :goto_6
    return-void

    .line 232
    :cond_7
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_11

    .line 233
    invoke-direct {p0}, createSpinner()Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    .line 235
    :cond_11
    iget-object v1, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 236
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 239
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V

    .line 240
    .local v0, "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->setDropDownViewContext(Landroid/content/Context;)V

    .line 241
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 243
    .end local v0    # "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    :cond_3f
    iget-object v1, p0, mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_4b

    .line 244
    iget-object v1, p0, mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, mTabSelector:Ljava/lang/Runnable;

    .line 247
    :cond_4b
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    iget v2, p0, mSelectedTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6
.end method

.method private performExpand()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-direct {p0}, isCollapsed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 257
    :goto_7
    return v4

    .line 253
    :cond_8
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, removeView(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, setTabSelected(I)V

    goto :goto_7
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 10
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 400
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v5, v5}, createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 401
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_23

    .line 404
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 406
    :cond_23
    if-eqz p3, :cond_29

    .line 407
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 409
    :cond_29
    iget-boolean v1, p0, mAllowCollapse:Z

    if-eqz v1, :cond_30

    .line 410
    invoke-virtual {p0}, requestLayout()V

    .line 412
    :cond_30
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 9
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 385
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v5, v5}, createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 386
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_23

    .line 389
    iget-object v1, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 391
    :cond_23
    if-eqz p2, :cond_29

    .line 392
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 394
    :cond_29
    iget-boolean v1, p0, mAllowCollapse:Z

    if-eqz v1, :cond_30

    .line 395
    invoke-virtual {p0}, requestLayout()V

    .line 397
    :cond_30
    return-void
.end method

.method public animateToTab(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v1, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    .line 338
    iget-object v1, p0, mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 340
    :cond_f
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, mTabSelector:Ljava/lang/Runnable;

    .line 347
    iget-object v1, p0, mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method public animateToVisibility(I)V
    .registers 10
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 312
    iget-object v1, p0, mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_e

    .line 313
    iget-object v1, p0, mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 315
    :cond_e
    if-nez p1, :cond_3a

    .line 316
    invoke-virtual {p0}, getVisibility()I

    move-result v1

    if-eqz v1, :cond_19

    .line 317
    invoke-virtual {p0, v3}, setAlpha(F)V

    .line 319
    :cond_19
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 321
    sget-object v1, sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    iget-object v1, p0, mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 333
    :goto_39
    return-void

    .line 326
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3a
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 327
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    sget-object v1, sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v1, p0, mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_39
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_c

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 134
    .local v0, "keyCode":I
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_14

    const/16 v1, 0x42

    if-ne v0, v1, :cond_14

    .line 135
    const/4 v1, 0x1

    .line 137
    :goto_13
    return v1

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_13
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_c

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 352
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 353
    iget-object v0, p0, mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 355
    iget-object v0, p0, mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 357
    :cond_c
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 307
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, setContentHeight(I)V

    .line 308
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, mStackedTabMaxWidth:I

    .line 309
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 362
    iget-object v0, p0, mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 363
    iget-object v0, p0, mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 365
    :cond_c
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 447
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 448
    return-void
.end method

.method public onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 144
    .local v10, "widthMode":I
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_c0

    const/4 v5, 0x1

    .line 145
    .local v5, "lockedExpanded":Z
    :goto_9
    invoke-virtual {p0, v5}, setFillViewport(Z)V

    .line 147
    iget-object v11, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 148
    .local v2, "childCount":I
    const/4 v11, 0x1

    if-le v2, v11, :cond_d1

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v10, v11, :cond_1d

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_d1

    .line 150
    :cond_1d
    const/4 v11, 0x2

    if-le v2, v11, :cond_c3

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, mMaxTabWidth:I

    .line 156
    :goto_2c
    iget-boolean v11, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v11, :cond_34

    sget-boolean v11, mIsUpgradedTablet:Z

    if-nez v11, :cond_3e

    .line 157
    :cond_34
    iget v11, p0, mMaxTabWidth:I

    iget v12, p0, mStackedTabMaxWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, mMaxTabWidth:I

    .line 161
    :cond_3e
    iget-boolean v11, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v11, :cond_5f

    .line 162
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 163
    .local v8, "parent":Landroid/view/View;
    if-eqz v8, :cond_5f

    instance-of v11, v8, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v11, :cond_5f

    .line 164
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 165
    .local v9, "width":I
    iget v11, p0, mMaxTabWidth:I

    mul-int/2addr v11, v2

    if-ge v11, v9, :cond_cd

    .line 166
    div-int v11, v9, v2

    iput v11, p0, mMaxTabWidth:I

    .line 167
    iget v11, p0, mMaxTabWidth:I

    iput v11, p0, mMinTabWidth:I

    .line 179
    .end local v8    # "parent":Landroid/view/View;
    .end local v9    # "width":I
    :cond_5f
    :goto_5f
    iget v11, p0, mContentHeight:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "hasCustomView":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_69
    if-ge v4, v2, :cond_8b

    .line 184
    iget-object v11, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 185
    .local v1, "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v11

    if-eqz v11, :cond_d5

    const/4 v11, 0x1

    :goto_7c
    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_d7

    const/4 v12, 0x1

    :goto_87
    and-int/2addr v11, v12

    if-eqz v11, :cond_d9

    .line 186
    const/4 v3, 0x1

    .line 192
    .end local v1    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_8b
    if-nez v5, :cond_dc

    iget-boolean v11, p0, mAllowCollapse:Z

    if-eqz v11, :cond_dc

    if-nez v3, :cond_dc

    const/4 v0, 0x1

    .line 194
    .local v0, "canCollapse":Z
    :goto_94
    if-eqz v0, :cond_e2

    .line 196
    iget-object v11, p0, mTabLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 197
    iget-object v11, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    if-le v11, v12, :cond_de

    .line 198
    invoke-direct {p0}, performCollapse()V

    .line 206
    :goto_ab
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v7

    .line 207
    .local v7, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 208
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v6

    .line 210
    .local v6, "newWidth":I
    if-eqz v5, :cond_bf

    if-eq v7, v6, :cond_bf

    .line 212
    iget v11, p0, mSelectedTabIndex:I

    invoke-virtual {p0, v11}, setTabSelected(I)V

    .line 214
    :cond_bf
    return-void

    .line 144
    .end local v0    # "canCollapse":Z
    .end local v2    # "childCount":I
    .end local v3    # "hasCustomView":Z
    .end local v4    # "i":I
    .end local v5    # "lockedExpanded":Z
    .end local v6    # "newWidth":I
    .end local v7    # "oldWidth":I
    :cond_c0
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 153
    .restart local v2    # "childCount":I
    .restart local v5    # "lockedExpanded":Z
    :cond_c3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iput v11, p0, mMaxTabWidth:I

    goto/16 :goto_2c

    .line 170
    .restart local v8    # "parent":Landroid/view/View;
    .restart local v9    # "width":I
    :cond_cd
    const/4 v11, 0x0

    iput v11, p0, mMinTabWidth:I

    goto :goto_5f

    .line 176
    .end local v8    # "parent":Landroid/view/View;
    .end local v9    # "width":I
    :cond_d1
    const/4 v11, -0x1

    iput v11, p0, mMaxTabWidth:I

    goto :goto_5f

    .line 185
    .restart local v1    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .restart local v3    # "hasCustomView":Z
    .restart local v4    # "i":I
    :cond_d5
    const/4 v11, 0x0

    goto :goto_7c

    :cond_d7
    const/4 v12, 0x0

    goto :goto_87

    .line 183
    :cond_d9
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 192
    .end local v1    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_dc
    const/4 v0, 0x0

    goto :goto_94

    .line 200
    .restart local v0    # "canCollapse":Z
    :cond_de
    invoke-direct {p0}, performExpand()Z

    goto :goto_ab

    .line 203
    :cond_e2
    invoke-direct {p0}, performExpand()Z

    goto :goto_ab
.end method

.method public removeAllTabs()V
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 436
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_14

    .line 437
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 439
    :cond_14
    iget-boolean v0, p0, mAllowCollapse:Z

    if-eqz v0, :cond_1b

    .line 440
    invoke-virtual {p0}, requestLayout()V

    .line 442
    :cond_1b
    return-void
.end method

.method public removeTabAt(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 425
    iget-object v0, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 426
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_14

    .line 427
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 429
    :cond_14
    iget-boolean v0, p0, mAllowCollapse:Z

    if-eqz v0, :cond_1b

    .line 430
    invoke-virtual {p0}, requestLayout()V

    .line 432
    :cond_1b
    return-void
.end method

.method public setAllowCollapse(Z)V
    .registers 2
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, mAllowCollapse:Z

    .line 227
    return-void
.end method

.method public setContentHeight(I)V
    .registers 2
    .param p1, "contentHeight"    # I

    .prologue
    .line 277
    iput p1, p0, mContentHeight:I

    .line 278
    invoke-virtual {p0}, requestLayout()V

    .line 279
    return-void
.end method

.method public setTabSelected(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 261
    iput p1, p0, mSelectedTabIndex:I

    .line 262
    iget-object v4, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 263
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v3, :cond_21

    .line 264
    iget-object v4, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1f

    const/4 v2, 0x1

    .line 266
    .local v2, "isSelected":Z
    :goto_14
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 267
    if-eqz v2, :cond_1c

    .line 268
    invoke-virtual {p0, p1}, animateToTab(I)V

    .line 263
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 265
    .end local v2    # "isSelected":Z
    :cond_1f
    const/4 v2, 0x0

    goto :goto_14

    .line 271
    .end local v0    # "child":Landroid/view/View;
    :cond_21
    iget-object v4, p0, mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_2c

    if-ltz p1, :cond_2c

    .line 272
    iget-object v4, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    :cond_2c
    return-void
.end method

.method public updateTab(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 415
    iget-object v0, p0, mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 416
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1a

    .line 417
    iget-object v0, p0, mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 419
    :cond_1a
    iget-boolean v0, p0, mAllowCollapse:Z

    if-eqz v0, :cond_21

    .line 420
    invoke-virtual {p0}, requestLayout()V

    .line 422
    :cond_21
    return-void
.end method
