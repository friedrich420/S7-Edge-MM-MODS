.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final OFFSET_OF_TITLE:I = 0x48

.field private static final TAG:Ljava/lang/String; = "ActionBarView"

.field private static mContentInsetStart:I

.field private static mDensity:F


# instance fields
.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private final mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mMultiWindowMenuButton:Landroid/view/View;

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private final mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mReserveMultiWindow:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private final mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput v3, p0, mDisplayOptions:I

    .line 140
    const v0, 0x1040495

    iput v0, p0, mDefaultUpDescription:I

    .line 155
    new-instance v0, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, mUpClickListener:Landroid/view/View$OnClickListener;

    .line 178
    invoke-virtual {p0, v2}, setBackgroundResource(I)V

    .line 180
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v1, 0x10102ce

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 183
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, mNavigationMode:I

    .line 185
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mTitle:Ljava/lang/CharSequence;

    .line 186
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mSubtitle:Ljava/lang/CharSequence;

    .line 187
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mLogo:Landroid/graphics/drawable/Drawable;

    .line 188
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 190
    const/16 v0, 0x16

    invoke-virtual {v7, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    sput v0, mContentInsetStart:I

    .line 192
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 194
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/16 v0, 0x10

    const v1, 0x1090018

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 198
    .local v9, "homeResId":I
    const v0, 0x109001b

    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    .line 200
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 202
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 203
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 204
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, mDefaultUpDescription:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 211
    .local v11, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_ae

    .line 212
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_ae
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 217
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, mTitleStyleRes:I

    .line 218
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, mSubtitleStyleRes:I

    .line 219
    invoke-virtual {v7, v12, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, mProgressStyle:I

    .line 220
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, mIndeterminateProgressStyle:I

    .line 223
    const/16 v0, 0xf

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, mProgressBarPadding:I

    .line 224
    const/16 v0, 0x11

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, mItemPadding:I

    .line 226
    const/16 v0, 0x8

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, setDisplayOptions(I)V

    .line 228
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 229
    .local v8, "customNavId":I
    if-eqz v8, :cond_106

    .line 230
    invoke-virtual {v10, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mCustomNavView:Landroid/view/View;

    .line 231
    iput v2, p0, mNavigationMode:I

    .line 232
    iget v0, p0, mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, setDisplayOptions(I)V

    .line 235
    :cond_106
    const/4 v0, 0x4

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, mContentHeight:I

    .line 237
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 241
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 245
    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_134

    .line 246
    invoke-virtual {p0, v12}, setImportantForAccessibility(I)V

    .line 250
    :cond_134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, mDensity:F

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-boolean v0, p0, mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/ActionBarView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget v0, p0, mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/ActionBarView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    invoke-direct {p0}, initTitle()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/ActionBarView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-boolean v0, p0, mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500()F
    .registers 1

    .prologue
    .line 69
    sget v0, mDensity:F

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 69
    sget v0, mContentInsetStart:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 69
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 593
    iget-object v4, p0, mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_32

    .line 594
    iget-object v0, p0, mHomeDescription:Ljava/lang/CharSequence;

    .line 603
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_9
    invoke-virtual {p0}, getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 604
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 605
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 607
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 608
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040498

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 617
    :goto_31
    return-object v1

    .line 596
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_32
    iget v4, p0, mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_45

    .line 597
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_9

    .line 599
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_45
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040494

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_9

    .line 612
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_53
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040497

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_31

    .end local v1    # "result":Ljava/lang/String;
    :cond_65
    move-object v1, v0

    .line 617
    goto :goto_31
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 6
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 459
    if-eqz p1, :cond_13

    .line 460
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 461
    iget-object v0, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 468
    :goto_12
    return-void

    .line 463
    :cond_13
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 464
    iget-object v0, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 465
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 466
    iget-object v0, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_12
.end method

.method private initTitle()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 832
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_63

    .line 833
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 834
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109001a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    .line 836
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x1020354

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mTitleView:Landroid/widget/TextView;

    .line 837
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x1020355

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mSubtitleView:Landroid/widget/TextView;

    .line 839
    iget v1, p0, mTitleStyleRes:I

    if-eqz v1, :cond_3d

    .line 840
    iget-object v1, p0, mTitleView:Landroid/widget/TextView;

    iget v2, p0, mTitleStyleRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 842
    :cond_3d
    iget-object v1, p0, mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_48

    .line 843
    iget-object v1, p0, mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :cond_48
    iget v1, p0, mSubtitleStyleRes:I

    if-eqz v1, :cond_53

    .line 847
    iget-object v1, p0, mSubtitleView:Landroid/widget/TextView;

    iget v2, p0, mSubtitleStyleRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 849
    :cond_53
    iget-object v1, p0, mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_63

    .line 850
    iget-object v1, p0, mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, p0, mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_63
    iget-object v1, p0, mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 856
    iget-object v1, p0, mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_7e

    iget-object v1, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 859
    :cond_7e
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 863
    :goto_85
    return-void

    .line 861
    :cond_86
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_85
.end method

.method private setHomeButtonEnabled(ZZ)V
    .registers 4
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 558
    if-eqz p2, :cond_4

    .line 559
    iput-boolean p1, p0, mWasHomeEnabled:Z

    .line 562
    :cond_4
    iget-object v0, p0, mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 573
    :goto_8
    return-void

    .line 569
    :cond_9
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 570
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 572
    invoke-direct {p0, p1}, updateHomeAccessibility(Z)V

    goto :goto_8
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 522
    iput-object p1, p0, mTitle:Ljava/lang/CharSequence;

    .line 523
    iget-object v2, p0, mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_2e

    .line 524
    iget-object v2, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v2, p0, mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_41

    iget v2, p0, mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_41

    iget-object v2, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    :cond_26
    const/4 v0, 0x1

    .line 528
    .local v0, "visible":Z
    :goto_27
    iget-object v2, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_43

    :goto_2b
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    .end local v0    # "visible":Z
    :cond_2e
    iget-object v1, p0, mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_37

    .line 531
    iget-object v1, p0, mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 533
    :cond_37
    iget-object v1, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, updateHomeAccessibility(Z)V

    .line 534
    return-void

    :cond_41
    move v0, v1

    .line 525
    goto :goto_27

    .line 528
    .restart local v0    # "visible":Z
    :cond_43
    const/16 v1, 0x8

    goto :goto_2b
.end method

.method private updateHomeAccessibility(Z)V
    .registers 4
    .param p1, "homeEnabled"    # Z

    .prologue
    .line 576
    if-nez p1, :cond_f

    .line 577
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 583
    :goto_e
    return-void

    .line 580
    :cond_f
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 581
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e
.end method


# virtual methods
.method public canSplit()Z
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .registers 3

    .prologue
    .line 476
    iget-object v1, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_b

    const/4 v0, 0x0

    .line 478
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_5
    if-eqz v0, :cond_a

    .line 479
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 481
    :cond_a
    return-void

    .line 476
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_b
    iget-object v1, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_5
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 810
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1301
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1306
    if-nez p1, :cond_6

    .line 1307
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1309
    :cond_6
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .prologue
    .line 798
    iget v0, p0, mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDropdownSelectedPosition()I
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 1393
    iget-object v0, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getNavigationMode()I
    .registers 2

    .prologue
    .line 794
    iget v0, p0, mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .registers 1

    .prologue
    .line 803
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .registers 2

    .prologue
    .line 371
    iget-boolean v0, p0, mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_c

    iget-object v0, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasIcon()Z
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasLogo()Z
    .registers 2

    .prologue
    .line 720
    iget-object v0, p0, mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public initIndeterminateProgress()V
    .registers 6

    .prologue
    .line 314
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 316
    iget-object v0, p0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x102046c

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 317
    iget-object v0, p0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 318
    iget-object v0, p0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, addView(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method public initProgress()V
    .registers 6

    .prologue
    .line 306
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, mProgressView:Landroid/widget/ProgressBar;

    .line 307
    iget-object v0, p0, mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x102046d

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 308
    iget-object v0, p0, mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 309
    iget-object v0, p0, mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v0, p0, mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, addView(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method public isSplit()Z
    .registers 2

    .prologue
    .line 363
    iget-boolean v0, p0, mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 877
    iget-object v4, p0, mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_6

    .line 892
    :cond_5
    :goto_5
    return v3

    .line 881
    :cond_6
    iget-object v4, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 882
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_5

    .line 886
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 887
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v1, :cond_5

    .line 888
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1d

    .line 889
    const/4 v3, 0x1

    goto :goto_5

    .line 887
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iput-object v3, p0, mTitleView:Landroid/widget/TextView;

    .line 259
    iput-object v3, p0, mSubtitleView:Landroid/widget/TextView;

    .line 260
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1d

    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_1d

    .line 261
    iget-object v1, p0, mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_1d
    iput-object v3, p0, mTitleLayout:Landroid/widget/LinearLayout;

    .line 264
    iget v1, p0, mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_28

    .line 265
    invoke-direct {p0}, initTitle()V

    .line 268
    :cond_28
    iget v1, p0, mHomeDescriptionRes:I

    if-eqz v1, :cond_31

    .line 269
    iget v1, p0, mHomeDescriptionRes:I

    invoke-virtual {p0, v1}, setNavigationContentDescription(I)V

    .line 272
    :cond_31
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_4d

    iget-boolean v1, p0, mIncludeTabs:Z

    if-eqz v1, :cond_4d

    .line 273
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 274
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_47

    .line 275
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    :cond_47
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 280
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 292
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 293
    iget-object v0, p0, mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 294
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_16

    .line 295
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 296
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 298
    :cond_16
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 815
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 817
    iget-object v1, p0, mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 818
    iget-object v1, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    .line 820
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_32

    iget v1, p0, mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_32

    .line 821
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 822
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_32

    .line 823
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2d

    .line 824
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 826
    :cond_2d
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    .line 829
    :cond_32
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 45
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1136
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1138
    .local v7, "contentHeight":I
    if-gtz v7, :cond_10

    .line 1297
    :cond_f
    :goto_f
    return-void

    .line 1143
    :cond_10
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v8

    .line 1144
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_1be

    const/16 v22, 0x1

    .line 1145
    .local v22, "direction":I
    :goto_18
    if-eqz v8, :cond_1c2

    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v11

    .line 1148
    .local v11, "menuStart":I
    :goto_1e
    if-eqz v8, :cond_1cc

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v4

    sub-int v36, v3, v4

    .line 1149
    .local v36, "x":I
    :goto_28
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v6

    .line 1151
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_1d2

    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1152
    .local v26, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_38
    move-object/from16 v0, p0

    iget-object v3, v0, mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1da

    move-object/from16 v0, p0

    iget-object v3, v0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1da

    move-object/from16 v0, p0

    iget v3, v0, mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1da

    const/16 v32, 0x1

    .line 1154
    .local v32, "showTitle":Z
    :goto_54
    const/16 v33, 0x0

    .line 1155
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_6c

    .line 1156
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1de

    .line 1157
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v33

    .line 1164
    :cond_6c
    :goto_6c
    move-object/from16 v0, p0

    iget-object v4, v0, mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1166
    .end local v36    # "x":I
    .local v5, "x":I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, next(IIZ)I

    move-result v5

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_93

    .line 1169
    move-object/from16 v0, p0

    iget v3, v0, mNavigationMode:I

    packed-switch v3, :pswitch_data_2d0

    .line 1191
    :cond_93
    :goto_93
    :pswitch_93
    move-object/from16 v0, p0

    iget-object v3, v0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_be

    move-object/from16 v0, p0

    iget-object v3, v0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_be

    .line 1192
    move-object/from16 v0, p0

    iget-object v10, v0, mMenuView:Landroid/widget/ActionMenuView;

    if-nez v8, :cond_230

    const/4 v14, 0x1

    :goto_ac
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, positionChild(Landroid/view/View;IIIZ)I

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1196
    :cond_be
    move-object/from16 v0, p0

    iget-object v3, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_e9

    move-object/from16 v0, p0

    iget-object v3, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_e9

    .line 1198
    move-object/from16 v0, p0

    iget-object v10, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_233

    const/4 v14, 0x1

    :goto_d7
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, positionChild(Landroid/view/View;IIIZ)I

    .line 1199
    move-object/from16 v0, p0

    iget-object v3, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1202
    :cond_e9
    const/16 v20, 0x0

    .line 1203
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_236

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1209
    :cond_f7
    :goto_f7
    if-eqz v20, :cond_188

    .line 1210
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v27

    .line 1211
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1212
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_24c

    check-cast v28, Landroid/app/ActionBar$LayoutParams;

    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v15, v28

    .line 1214
    .local v15, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_10b
    if-eqz v15, :cond_24f

    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1215
    .local v23, "gravity":I
    :goto_111
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1217
    .local v29, "navWidth":I
    const/16 v34, 0x0

    .line 1218
    .local v34, "topMargin":I
    const/16 v16, 0x0

    .line 1219
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_132

    .line 1220
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, next(IIZ)I

    move-result v5

    .line 1221
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1222
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1223
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1226
    :cond_132
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1228
    .local v25, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_270

    .line 1229
    move-object/from16 v0, p0

    iget v3, v0, mRight:I

    move-object/from16 v0, p0

    iget v4, v0, mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1230
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_25c

    .line 1231
    add-int v19, v18, v29

    .line 1232
    .local v19, "centeredStart":I
    move/from16 v17, v18

    .line 1233
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    if-le v0, v5, :cond_254

    .line 1234
    const/16 v25, 0x5

    .line 1251
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_155
    :goto_155
    const/16 v37, 0x0

    .line 1252
    .local v37, "xpos":I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_2da

    .line 1264
    :goto_162
    :pswitch_162
    and-int/lit8 v35, v23, 0x70

    .line 1266
    .local v35, "vgravity":I
    if-nez v23, :cond_168

    .line 1267
    const/16 v35, 0x10

    .line 1270
    :cond_168
    const/16 v38, 0x0

    .line 1271
    .local v38, "ypos":I
    sparse-switch v35, :sswitch_data_2e8

    .line 1285
    :goto_16d
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1286
    .local v21, "customWidth":I
    add-int v3, v37, v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1288
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, next(IIZ)I

    move-result v5

    .line 1291
    .end local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_188
    move-object/from16 v0, p0

    iget-object v3, v0, mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_f

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1293
    move-object/from16 v0, p0

    iget-object v3, v0, mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1294
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_f

    .line 1144
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v20    # "customView":Landroid/view/View;
    .end local v22    # "direction":I
    .end local v24    # "halfProgressHeight":I
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_1be
    const/16 v22, -0x1

    goto/16 :goto_18

    .line 1145
    .restart local v22    # "direction":I
    :cond_1c2
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    goto/16 :goto_1e

    .line 1148
    .restart local v11    # "menuStart":I
    :cond_1cc
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v36

    goto/16 :goto_28

    .line 1151
    .restart local v6    # "y":I
    .restart local v36    # "x":I
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    goto/16 :goto_38

    .line 1152
    .restart local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_1da
    const/16 v32, 0x0

    goto/16 :goto_54

    .line 1158
    .restart local v32    # "showTitle":Z
    .restart local v33    # "startOffset":I
    :cond_1de
    if-eqz v32, :cond_6c

    .line 1159
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v33

    goto/16 :goto_6c

    .line 1173
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_1e6
    move-object/from16 v0, p0

    iget-object v3, v0, mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_93

    .line 1174
    if-eqz v32, :cond_1f6

    .line 1175
    move-object/from16 v0, p0

    iget v3, v0, mItemPadding:I

    invoke-static {v5, v3, v8}, next(IIZ)I

    move-result v5

    .line 1177
    :cond_1f6
    move-object/from16 v0, p0

    iget-object v4, v0, mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1178
    move-object/from16 v0, p0

    iget v3, v0, mItemPadding:I

    invoke-static {v5, v3, v8}, next(IIZ)I

    move-result v5

    goto/16 :goto_93

    .line 1182
    :pswitch_20b
    move-object/from16 v0, p0

    iget-object v3, v0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_93

    .line 1183
    if-eqz v32, :cond_21b

    move-object/from16 v0, p0

    iget v3, v0, mItemPadding:I

    invoke-static {v5, v3, v8}, next(IIZ)I

    move-result v5

    .line 1184
    :cond_21b
    move-object/from16 v0, p0

    iget-object v4, v0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1185
    move-object/from16 v0, p0

    iget v3, v0, mItemPadding:I

    invoke-static {v5, v3, v8}, next(IIZ)I

    move-result v5

    goto/16 :goto_93

    .line 1192
    :cond_230
    const/4 v14, 0x0

    goto/16 :goto_ac

    .line 1198
    :cond_233
    const/4 v14, 0x0

    goto/16 :goto_d7

    .line 1205
    .restart local v20    # "customView":Landroid/view/View;
    :cond_236
    move-object/from16 v0, p0

    iget v3, v0, mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_f7

    move-object/from16 v0, p0

    iget-object v3, v0, mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_f7

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    goto/16 :goto_f7

    .line 1212
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_24c
    const/4 v15, 0x0

    goto/16 :goto_10b

    .line 1214
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_24f
    const v23, 0x800013

    goto/16 :goto_111

    .line 1235
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v23    # "gravity":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_254
    move/from16 v0, v17

    if-ge v0, v11, :cond_155

    .line 1236
    const/16 v25, 0x3

    goto/16 :goto_155

    .line 1239
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_25c
    move/from16 v19, v18

    .line 1240
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    .line 1241
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v19

    if-ge v0, v5, :cond_268

    .line 1242
    const/16 v25, 0x3

    goto/16 :goto_155

    .line 1243
    :cond_268
    move/from16 v0, v17

    if-le v0, v11, :cond_155

    .line 1244
    const/16 v25, 0x5

    goto/16 :goto_155

    .line 1247
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_270
    if-nez v23, :cond_155

    .line 1248
    const v25, 0x800003

    goto/16 :goto_155

    .line 1254
    .restart local v37    # "xpos":I
    :pswitch_277
    move-object/from16 v0, p0

    iget v3, v0, mRight:I

    move-object/from16 v0, p0

    iget v4, v0, mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    .line 1255
    goto/16 :goto_162

    .line 1257
    :pswitch_286
    if-eqz v8, :cond_28c

    move/from16 v37, v11

    .line 1258
    :goto_28a
    goto/16 :goto_162

    :cond_28c
    move/from16 v37, v5

    .line 1257
    goto :goto_28a

    .line 1260
    :pswitch_28f
    if-eqz v8, :cond_295

    sub-int v37, v5, v29

    :goto_293
    goto/16 :goto_162

    :cond_295
    sub-int v37, v11, v29

    goto :goto_293

    .line 1273
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_298
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v31

    .line 1274
    .local v31, "paddedTop":I
    move-object/from16 v0, p0

    iget v3, v0, mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, mTop:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1275
    .local v30, "paddedBottom":I
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    .line 1276
    goto/16 :goto_16d

    .line 1278
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_2b6
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1279
    goto/16 :goto_16d

    .line 1281
    :sswitch_2be
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    goto/16 :goto_16d

    .line 1169
    :pswitch_data_2d0
    .packed-switch 0x0
        :pswitch_93
        :pswitch_1e6
        :pswitch_20b
    .end packed-switch

    .line 1252
    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_277
        :pswitch_162
        :pswitch_286
        :pswitch_162
        :pswitch_28f
    .end packed-switch

    .line 1271
    :sswitch_data_2e8
    .sparse-switch
        0x10 -> :sswitch_298
        0x30 -> :sswitch_2b6
        0x50 -> :sswitch_2be
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 53
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 897
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v8

    .line 898
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsCollapsible:Z

    move/from16 v46, v0

    if-eqz v46, :cond_8e

    .line 899
    const/16 v44, 0x0

    .line 900
    .local v44, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_10
    move/from16 v0, v26

    if-ge v0, v8, :cond_4d

    .line 901
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 902
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    if-ne v7, v0, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v46

    if-eqz v46, :cond_4a

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    if-eq v7, v0, :cond_4a

    .line 905
    add-int/lit8 v44, v44, 0x1

    .line 900
    :cond_4a
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 909
    .end local v7    # "child":Landroid/view/View;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v40

    .line 910
    .local v40, "upChildCount":I
    const/16 v26, 0x0

    :goto_59
    move/from16 v0, v26

    move/from16 v1, v40

    if-ge v0, v1, :cond_7e

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 912
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_7b

    .line 913
    add-int/lit8 v44, v44, 0x1

    .line 910
    :cond_7b
    add-int/lit8 v26, v26, 0x1

    goto :goto_59

    .line 917
    .end local v7    # "child":Landroid/view/View;
    :cond_7e
    if-nez v44, :cond_8e

    .line 919
    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, setMeasuredDimension(II)V

    .line 1132
    .end local v26    # "i":I
    .end local v40    # "upChildCount":I
    .end local v44    # "visibleChildren":I
    :cond_8d
    :goto_8d
    return-void

    .line 926
    :cond_8e
    const/16 v33, 0x0

    .line 927
    .local v33, "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v46, v0

    if-eqz v46, :cond_de

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    check-cast v46, Landroid/app/Activity;

    invoke-virtual/range {v46 .. v46}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v33

    .line 935
    :cond_aa
    :goto_aa
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v45

    .line 936
    .local v45, "widthMode":I
    const/high16 v46, 0x40000000    # 2.0f

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_f6

    .line 937
    new-instance v46, Ljava/lang/IllegalStateException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " can only be used "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 929
    .end local v45    # "widthMode":I
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    instance-of v0, v0, Landroid/content/ContextWrapper;

    move/from16 v46, v0

    if-eqz v46, :cond_aa

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_aa

    .line 941
    .restart local v45    # "widthMode":I
    :cond_f6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 942
    .local v18, "heightMode":I
    const/high16 v46, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v46

    if-eq v0, v1, :cond_12a

    .line 943
    new-instance v46, Ljava/lang/IllegalStateException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " can only be used "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 947
    :cond_12a
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 949
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v46, v0

    if-ltz v46, :cond_3c5

    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v31, v0

    .line 952
    .local v31, "maxHeight":I
    :goto_13c
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v46

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v47

    add-int v43, v46, v47

    .line 953
    .local v43, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v35

    .line 954
    .local v35, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v36

    .line 955
    .local v36, "paddingRight":I
    sub-int v17, v31, v43

    .line 956
    .local v17, "height":I
    const/high16 v46, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v46

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 957
    .local v9, "childSpecHeight":I
    const/high16 v46, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v46

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 959
    .local v16, "exactHeightSpec":I
    sub-int v46, v10, v35

    sub-int v6, v46, v36

    .line 960
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 961
    .local v28, "leftOfCenter":I
    move/from16 v37, v28

    .line 963
    .local v37, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    if-eqz v46, :cond_3cb

    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_3cb

    move-object/from16 v0, p0

    iget v0, v0, mDisplayOptions:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x8

    if-eqz v46, :cond_3cb

    const/16 v38, 0x1

    .line 966
    .local v38, "showTitle":Z
    :goto_192
    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    if-eqz v46, :cond_3cf

    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 968
    .local v20, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_1a0
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 970
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    if-gez v46, :cond_3d7

    .line 971
    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 984
    .local v24, "homeWidthSpec":I
    :goto_1b4
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 986
    const/16 v23, 0x0

    .line 987
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_1db

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_1dd

    :cond_1db
    if-eqz v38, :cond_1f7

    .line 989
    :cond_1dd
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 990
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v46

    add-int v22, v23, v46

    .line 991
    .local v22, "homeOffsetWidth":I
    const/16 v46, 0x0

    sub-int v47, v6, v22

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 992
    const/16 v46, 0x0

    sub-int v47, v6, v22

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1003
    .end local v22    # "homeOffsetWidth":I
    :cond_1f7
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_235

    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_235

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v16

    move/from16 v3, v47

    invoke-virtual {v0, v1, v6, v2, v3}, measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1005
    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v47

    sub-int v47, v37, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1008
    :cond_235
    move-object/from16 v0, p0

    iget-object v0, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    if-eqz v46, :cond_273

    move-object/from16 v0, p0

    iget-object v0, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_273

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v6, v9, v2}, measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1012
    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v47

    sub-int v47, v37, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 1016
    :cond_273
    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    if-nez v46, :cond_284

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, mNavigationMode:I

    move/from16 v46, v0

    packed-switch v46, :pswitch_data_546

    .line 1047
    :cond_284
    :goto_284
    const/4 v15, 0x0

    .line 1048
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    if-eqz v46, :cond_4a5

    .line 1049
    move-object/from16 v0, p0

    iget-object v15, v0, mExpandedActionView:Landroid/view/View;

    .line 1055
    :cond_291
    :goto_291
    if-eqz v15, :cond_35e

    .line 1056
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1057
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v46, v0

    if-eqz v46, :cond_4bd

    move-object/from16 v46, v30

    check-cast v46, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v5, v46

    .line 1060
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_2ad
    const/16 v25, 0x0

    .line 1061
    .local v25, "horizontalMargin":I
    const/16 v42, 0x0

    .line 1062
    .local v42, "verticalMargin":I
    if-eqz v5, :cond_2c7

    .line 1063
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v46, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v47, v0

    add-int v25, v46, v47

    .line 1064
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v42, v46, v47

    .line 1070
    :cond_2c7
    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v46, v0

    if-gtz v46, :cond_4c0

    .line 1071
    const/high16 v12, -0x80000000

    .line 1076
    .local v12, "customNavHeightMode":I
    :goto_2d1
    const/16 v46, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v47, v0

    if-ltz v47, :cond_2e9

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v47, v0

    move/from16 v0, v47

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_2e9
    sub-int v47, v17, v42

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1079
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    const/16 v47, -0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_4d5

    const/high16 v14, 0x40000000    # 2.0f

    .line 1081
    .local v14, "customNavWidthMode":I
    :goto_2ff
    const/16 v47, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    if-ltz v46, :cond_4d9

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    move/from16 v0, v46

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v46

    :goto_315
    sub-int v46, v46, v25

    move/from16 v0, v47

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1084
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_4dd

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v46, v0

    :goto_325
    and-int/lit8 v19, v46, 0x7

    .line 1089
    .local v19, "hgrav":I
    const/16 v46, 0x1

    move/from16 v0, v19

    move/from16 v1, v46

    if-ne v0, v1, :cond_347

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_347

    .line 1090
    move/from16 v0, v28

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v46

    mul-int/lit8 v13, v46, 0x2

    .line 1093
    :cond_347
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1096
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v46

    add-int v46, v46, v25

    sub-int v6, v6, v46

    .line 1103
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v42    # "verticalMargin":I
    :cond_35e
    move-object/from16 v0, p0

    iget-object v0, v0, mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    add-int v47, v6, v23

    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v48, v0

    const/high16 v49, 0x40000000    # 2.0f

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-virtual {v0, v1, v2, v3, v4}, measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    if-eqz v46, :cond_39c

    .line 1106
    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v47

    sub-int v47, v28, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1109
    :cond_39c
    move-object/from16 v0, p0

    iget v0, v0, mContentHeight:I

    move/from16 v46, v0

    if-gtz v46, :cond_53d

    .line 1110
    const/16 v32, 0x0

    .line 1111
    .local v32, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_3a8
    move/from16 v0, v26

    if-ge v0, v8, :cond_4e2

    .line 1112
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v41

    .line 1113
    .local v41, "v":Landroid/view/View;
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v46

    add-int v34, v46, v43

    .line 1114
    .local v34, "paddedViewHeight":I
    move/from16 v0, v34

    move/from16 v1, v32

    if-le v0, v1, :cond_3c2

    .line 1115
    move/from16 v32, v34

    .line 1111
    :cond_3c2
    add-int/lit8 v26, v26, 0x1

    goto :goto_3a8

    .line 949
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "measuredHeight":I
    .end local v34    # "paddedViewHeight":I
    .end local v35    # "paddingLeft":I
    .end local v36    # "paddingRight":I
    .end local v37    # "rightOfCenter":I
    .end local v38    # "showTitle":Z
    .end local v41    # "v":Landroid/view/View;
    .end local v43    # "verticalPadding":I
    :cond_3c5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    goto/16 :goto_13c

    .line 963
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v31    # "maxHeight":I
    .restart local v35    # "paddingLeft":I
    .restart local v36    # "paddingRight":I
    .restart local v37    # "rightOfCenter":I
    .restart local v43    # "verticalPadding":I
    :cond_3cb
    const/16 v38, 0x0

    goto/16 :goto_192

    .line 966
    .restart local v38    # "showTitle":Z
    :cond_3cf
    move-object/from16 v0, p0

    iget-object v0, v0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_1a0

    .line 973
    .restart local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3d7
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v46, v0

    const/high16 v47, 0x40000000    # 2.0f

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_1b4

    .line 1019
    .restart local v23    # "homeWidth":I
    :pswitch_3e5
    move-object/from16 v0, p0

    iget-object v0, v0, mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    if-eqz v46, :cond_284

    .line 1020
    if-eqz v38, :cond_43e

    move-object/from16 v0, p0

    iget v0, v0, mItemPadding:I

    move/from16 v46, v0

    mul-int/lit8 v27, v46, 0x2

    .line 1021
    .local v27, "itemPaddingSize":I
    :goto_3f7
    const/16 v46, 0x0

    sub-int v47, v6, v27

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1022
    const/16 v46, 0x0

    sub-int v47, v28, v27

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    const/high16 v47, -0x80000000

    move/from16 v0, v47

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/high16 v48, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v29

    .line 1027
    .local v29, "listNavWidth":I
    const/16 v46, 0x0

    sub-int v47, v6, v29

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1028
    const/16 v46, 0x0

    sub-int v47, v28, v29

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1029
    goto/16 :goto_284

    .line 1020
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_43e
    move-object/from16 v0, p0

    iget v0, v0, mItemPadding:I

    move/from16 v27, v0

    goto :goto_3f7

    .line 1032
    :pswitch_445
    move-object/from16 v0, p0

    iget-object v0, v0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_284

    .line 1033
    if-eqz v38, :cond_49e

    move-object/from16 v0, p0

    iget v0, v0, mItemPadding:I

    move/from16 v46, v0

    mul-int/lit8 v27, v46, 0x2

    .line 1034
    .restart local v27    # "itemPaddingSize":I
    :goto_457
    const/16 v46, 0x0

    sub-int v47, v6, v27

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1035
    const/16 v46, 0x0

    sub-int v47, v28, v27

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v46, v0

    const/high16 v47, -0x80000000

    move/from16 v0, v47

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/high16 v48, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v39

    .line 1040
    .local v39, "tabWidth":I
    const/16 v46, 0x0

    sub-int v47, v6, v39

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1041
    const/16 v46, 0x0

    sub-int v47, v28, v39

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_284

    .line 1033
    .end local v27    # "itemPaddingSize":I
    .end local v39    # "tabWidth":I
    :cond_49e
    move-object/from16 v0, p0

    iget v0, v0, mItemPadding:I

    move/from16 v27, v0

    goto :goto_457

    .line 1050
    .restart local v15    # "customView":Landroid/view/View;
    :cond_4a5
    move-object/from16 v0, p0

    iget v0, v0, mDisplayOptions:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x10

    if-eqz v46, :cond_291

    move-object/from16 v0, p0

    iget-object v0, v0, mCustomNavView:Landroid/view/View;

    move-object/from16 v46, v0

    if-eqz v46, :cond_291

    .line 1052
    move-object/from16 v0, p0

    iget-object v15, v0, mCustomNavView:Landroid/view/View;

    goto/16 :goto_291

    .line 1057
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4bd
    const/4 v5, 0x0

    goto/16 :goto_2ad

    .line 1073
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v42    # "verticalMargin":I
    :cond_4c0
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    const/16 v47, -0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_4d2

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_4d0
    goto/16 :goto_2d1

    .end local v12    # "customNavHeightMode":I
    :cond_4d2
    const/high16 v12, -0x80000000

    goto :goto_4d0

    .line 1079
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    .restart local v12    # "customNavHeightMode":I
    :cond_4d5
    const/high16 v14, -0x80000000

    goto/16 :goto_2ff

    .restart local v14    # "customNavWidthMode":I
    :cond_4d9
    move/from16 v46, v6

    .line 1081
    goto/16 :goto_315

    .line 1084
    .restart local v13    # "customNavWidth":I
    :cond_4dd
    const v46, 0x800013

    goto/16 :goto_325

    .line 1118
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v42    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "measuredHeight":I
    :cond_4e2
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, setMeasuredDimension(II)V

    .line 1123
    .end local v26    # "i":I
    .end local v32    # "measuredHeight":I
    :goto_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v46, v0

    if-eqz v46, :cond_4fe

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v46, v0

    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1127
    :cond_4fe
    move-object/from16 v0, p0

    iget-object v0, v0, mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    if-eqz v46, :cond_8d

    move-object/from16 v0, p0

    iget-object v0, v0, mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v46

    const/16 v47, 0x8

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_8d

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, mProgressBarPadding:I

    move/from16 v47, v0

    mul-int/lit8 v47, v47, 0x2

    sub-int v47, v10, v47

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v48

    const/high16 v49, -0x80000000

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {v46 .. v48}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_8d

    .line 1120
    :cond_53d
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, setMeasuredDimension(II)V

    goto :goto_4e9

    .line 1017
    nop

    :pswitch_data_546
    .packed-switch 0x1
        :pswitch_3e5
        :pswitch_445
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1328
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1330
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1332
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_23

    iget-object v2, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_23

    iget-object v2, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_23

    .line 1334
    iget-object v2, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1335
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_23

    .line 1336
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1340
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_23
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_2a

    .line 1341
    invoke-virtual {p0}, postShowOverflowMenu()V

    .line 1343
    :cond_2a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1314
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1315
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1317
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1d

    iget-object v2, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_1d

    .line 1318
    iget-object v2, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1321
    :cond_1d
    invoke-virtual {p0}, isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1323
    return-object v0
.end method

.method public setCollapsible(Z)V
    .registers 2
    .param p1, "collapsible"    # Z

    .prologue
    .line 870
    iput-boolean p1, p0, mIsCollapsible:Z

    .line 871
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 866
    iput-object p1, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 867
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 484
    iget v1, p0, mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    .line 485
    .local v0, "showCustom":Z
    :goto_7
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    .line 486
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 488
    :cond_12
    iput-object p1, p0, mCustomNavView:Landroid/view/View;

    .line 489
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 490
    iget-object v1, p0, mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    .line 492
    :cond_1f
    return-void

    .line 484
    .end local v0    # "showCustom":Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDefaultNavigationContentDescription(I)V
    .registers 3
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 1373
    iget v0, p0, mDefaultUpDescription:I

    if-ne v0, p1, :cond_5

    .line 1378
    :goto_4
    return-void

    .line 1376
    :cond_5
    iput p1, p0, mDefaultUpDescription:I

    .line 1377
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, updateHomeAccessibility(Z)V

    goto :goto_4
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1351
    iget-object v0, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1352
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 13
    .param p1, "options"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 621
    iget v9, p0, mDisplayOptions:I

    if-ne v9, v0, :cond_9a

    .line 622
    .local v0, "flagsChanged":I
    :goto_7
    iput p1, p0, mDisplayOptions:I

    .line 624
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_ca

    .line 626
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_20

    .line 627
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_a0

    move v4, v7

    .line 628
    .local v4, "setUp":Z
    :goto_16
    iget-object v9, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 634
    if-eqz v4, :cond_20

    .line 635
    invoke-virtual {p0, v7}, setHomeButtonEnabled(Z)V

    .line 639
    .end local v4    # "setUp":Z
    :cond_20
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_36

    .line 640
    iget-object v9, p0, mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_a3

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_a3

    move v3, v7

    .line 641
    .local v3, "logoVis":Z
    :goto_2d
    iget-object v10, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_a5

    iget-object v9, p0, mLogo:Landroid/graphics/drawable/Drawable;

    :goto_33
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 644
    .end local v3    # "logoVis":Z
    :cond_36
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_41

    .line 645
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_a8

    .line 646
    invoke-direct {p0}, initTitle()V

    .line 652
    :cond_41
    :goto_41
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_b0

    move v5, v7

    .line 653
    .local v5, "showHome":Z
    :goto_46
    iget v9, p0, mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_b2

    move v1, v7

    .line 654
    .local v1, "homeAsUp":Z
    :goto_4d
    if-nez v5, :cond_b4

    if-eqz v1, :cond_b4

    move v6, v7

    .line 655
    .local v6, "titleUp":Z
    :goto_52
    iget-object v9, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 657
    if-nez v5, :cond_5b

    if-eqz v6, :cond_b6

    :cond_5b
    iget-object v9, p0, mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_b6

    move v2, v8

    .line 659
    .local v2, "homeVis":I
    :goto_60
    iget-object v9, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 661
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_76

    iget-object v9, p0, mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_76

    .line 662
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_b9

    .line 663
    iget-object v9, p0, mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, addView(Landroid/view/View;)V

    .line 669
    :cond_76
    :goto_76
    iget-object v9, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_8d

    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_8d

    .line 671
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_bf

    .line 672
    iget-object v7, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 673
    iget-object v7, p0, mTitleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 680
    :cond_8d
    :goto_8d
    invoke-virtual {p0}, requestLayout()V

    .line 686
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_90
    iget-object v7, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, updateHomeAccessibility(Z)V

    .line 687
    return-void

    .line 621
    .end local v0    # "flagsChanged":I
    :cond_9a
    iget v9, p0, mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_7

    .restart local v0    # "flagsChanged":I
    :cond_a0
    move v4, v8

    .line 627
    goto/16 :goto_16

    :cond_a3
    move v3, v8

    .line 640
    goto :goto_2d

    .line 641
    .restart local v3    # "logoVis":Z
    :cond_a5
    iget-object v9, p0, mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_33

    .line 648
    .end local v3    # "logoVis":Z
    :cond_a8
    iget-object v9, p0, mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_41

    :cond_b0
    move v5, v8

    .line 652
    goto :goto_46

    .restart local v5    # "showHome":Z
    :cond_b2
    move v1, v8

    .line 653
    goto :goto_4d

    .restart local v1    # "homeAsUp":Z
    :cond_b4
    move v6, v8

    .line 654
    goto :goto_52

    .line 657
    .restart local v6    # "titleUp":Z
    :cond_b6
    const/16 v2, 0x8

    goto :goto_60

    .line 665
    .restart local v2    # "homeVis":I
    :cond_b9
    iget-object v9, p0, mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, removeView(Landroid/view/View;)V

    goto :goto_76

    .line 675
    :cond_bf
    iget-object v8, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 676
    iget-object v8, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_8d

    .line 682
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_ca
    invoke-virtual {p0}, invalidate()V

    goto :goto_90
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 769
    iput-object p1, p0, mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 770
    iput-object p2, p0, mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 771
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_12

    .line 772
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 773
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 775
    :cond_12
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 782
    iget-object v0, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 783
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .registers 6
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 376
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_a

    .line 377
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 379
    :cond_a
    iput-object p1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 380
    if-eqz p1, :cond_2f

    move v1, v2

    :goto_f
    iput-boolean v1, p0, mIncludeTabs:Z

    .line 381
    iget-boolean v1, p0, mIncludeTabs:Z

    if-eqz v1, :cond_2e

    iget v1, p0, mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    .line 382
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    .line 383
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 384
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 385
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 388
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2e
    return-void

    .line 380
    :cond_2f
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 554
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, setHomeButtonEnabled(ZZ)V

    .line 555
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 701
    if-eqz p1, :cond_c

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 702
    return-void

    .line 701
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 690
    iput-object p1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    .line 691
    if-eqz p1, :cond_13

    iget v0, p0, mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    .line 693
    :cond_e
    iget-object v0, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 695
    :cond_13
    iget-object v0, p0, mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 696
    iget-object v0, p0, mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 698
    :cond_2a
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 716
    if-eqz p1, :cond_c

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 717
    return-void

    .line 716
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 709
    iput-object p1, p0, mLogo:Landroid/graphics/drawable/Drawable;

    .line 710
    if-eqz p1, :cond_f

    iget v0, p0, mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 711
    iget-object v0, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 713
    :cond_f
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 12
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 395
    iget-object v4, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_7

    .line 456
    :goto_6
    return-void

    .line 397
    :cond_7
    iget-object v4, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_19

    .line 398
    iget-object v4, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 399
    iget-object v4, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_19
    move-object v0, p1

    .line 402
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 403
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 404
    iget-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_31

    .line 405
    iget-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 406
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_31

    .line 407
    iget-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 410
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_31
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v4, :cond_53

    .line 411
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 412
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 413
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x102004b

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 414
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 418
    :cond_53
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 420
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, mSplitActionBar:Z

    if-nez v4, :cond_8b

    .line 421
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 424
    invoke-direct {p0, v0}, configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 425
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 426
    .local v2, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 427
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_84

    if-eq v3, p0, :cond_84

    .line 428
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 430
    :cond_84
    invoke-virtual {p0, v2, v1}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_87
    iput-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    goto/16 :goto_6

    .line 432
    .end local v2    # "menuView":Landroid/widget/ActionMenuView;
    :cond_8b
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 434
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 437
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 439
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 440
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 441
    invoke-direct {p0, v0}, configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 442
    iget-object v4, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 443
    .restart local v2    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v4, p0, mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_dc

    .line 444
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 445
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_cf

    iget-object v4, p0, mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_cf

    .line 446
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    :cond_cf
    invoke-virtual {p0}, getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 449
    iget-object v4, p0, mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_87

    .line 452
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_dc
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_87
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4
    .param p1, "presenterCallback"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 1383
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 1384
    iget-object v0, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 1386
    :cond_9
    iget-object v0, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    .line 1387
    iget-object v0, p0, mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1389
    :cond_12
    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, mMenuPrepared:Z

    .line 392
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1366
    iput p1, p0, mHomeDescriptionRes:I

    .line 1367
    if-eqz p1, :cond_18

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    iput-object v0, p0, mHomeDescription:Ljava/lang/CharSequence;

    .line 1368
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, updateHomeAccessibility(Z)V

    .line 1369
    return-void

    .line 1367
    :cond_18
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1361
    iput-object p1, p0, mHomeDescription:Ljava/lang/CharSequence;

    .line 1362
    iget-object v0, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, updateHomeAccessibility(Z)V

    .line 1363
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1355
    iget-object v0, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1356
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1346
    iget-object v0, p0, mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 8
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 724
    iget v0, p0, mNavigationMode:I

    .line 725
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_10

    .line 726
    packed-switch v0, :pswitch_data_8c

    .line 738
    :cond_8
    :goto_8
    packed-switch p1, :pswitch_data_94

    .line 763
    :cond_b
    :goto_b
    iput p1, p0, mNavigationMode:I

    .line 764
    invoke-virtual {p0}, requestLayout()V

    .line 766
    :cond_10
    return-void

    .line 728
    :pswitch_11
    iget-object v2, p0, mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_8

    .line 729
    iget-object v2, p0, mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, removeView(Landroid/view/View;)V

    goto :goto_8

    .line 733
    :pswitch_1b
    iget-object v2, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, mIncludeTabs:Z

    if-eqz v2, :cond_8

    .line 734
    iget-object v2, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, removeView(Landroid/view/View;)V

    goto :goto_8

    .line 740
    :pswitch_29
    iget-object v2, p0, mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_5f

    .line 741
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, mSpinner:Landroid/widget/Spinner;

    .line 743
    iget-object v2, p0, mSpinner:Landroid/widget/Spinner;

    const v3, 0x102004e

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 744
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, mListNavLayout:Landroid/widget/LinearLayout;

    .line 746
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 748
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 749
    iget-object v2, p0, mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5f
    iget-object v2, p0, mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_70

    .line 752
    iget-object v2, p0, mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 754
    :cond_70
    iget-object v2, p0, mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 755
    iget-object v2, p0, mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, addView(Landroid/view/View;)V

    goto :goto_b

    .line 758
    :pswitch_7d
    iget-object v2, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mIncludeTabs:Z

    if-eqz v2, :cond_b

    .line 759
    iget-object v2, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, addView(Landroid/view/View;)V

    goto :goto_b

    .line 726
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1b
    .end packed-switch

    .line 738
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_29
        :pswitch_7d
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .registers 6
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-boolean v1, p0, mSplitActionBar:Z

    if-eq v1, p1, :cond_58

    .line 324
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_33

    .line 325
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 326
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_18

    .line 327
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    :cond_18
    if-eqz p1, :cond_59

    .line 330
    iget-object v1, p0, mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_25

    .line 331
    iget-object v1, p0, mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    :cond_25
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 338
    :goto_2e
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->requestLayout()V

    .line 340
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_33
    iget-object v1, p0, mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3f

    .line 341
    iget-object v3, p0, mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_68

    move v1, v2

    :goto_3c
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 344
    :cond_3f
    iget-object v1, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v1, :cond_55

    .line 345
    if-nez p1, :cond_6b

    .line 346
    iget-object v1, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 358
    :cond_55
    :goto_55
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 360
    :cond_58
    return-void

    .line 335
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_59
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    .line 336
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2e

    .line 341
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_68
    const/16 v1, 0x8

    goto :goto_3c

    .line 350
    :cond_6b
    iget-object v1, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 352
    iget-object v1, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 355
    iget-object v1, p0, mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_55
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 541
    iput-object p1, p0, mSubtitle:Ljava/lang/CharSequence;

    .line 542
    iget-object v1, p0, mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 543
    iget-object v1, p0, mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v4, p0, mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_42

    move v1, v2

    :goto_13
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_44

    iget v1, p0, mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_44

    iget-object v1, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    :cond_30
    const/4 v0, 0x1

    .line 548
    .local v0, "visible":Z
    :goto_31
    iget-object v1, p0, mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_46

    :goto_35
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    .end local v0    # "visible":Z
    :cond_38
    iget-object v1, p0, mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, updateHomeAccessibility(Z)V

    .line 551
    return-void

    :cond_42
    move v1, v3

    .line 544
    goto :goto_13

    :cond_44
    move v0, v2

    .line 545
    goto :goto_31

    .restart local v0    # "visible":Z
    :cond_46
    move v2, v3

    .line 548
    goto :goto_35
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, mUserTitle:Z

    .line 506
    invoke-direct {p0, p1}, setTitleImpl(Ljava/lang/CharSequence;)V

    .line 507
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 287
    iput-object p1, p0, mWindowCallback:Landroid/view/Window$Callback;

    .line 288
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 516
    iget-boolean v0, p0, mUserTitle:Z

    if-nez v0, :cond_7

    .line 517
    invoke-direct {p0, p1}, setTitleImpl(Ljava/lang/CharSequence;)V

    .line 519
    :cond_7
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method
