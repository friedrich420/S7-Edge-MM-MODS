.class public final Lcom/android/internal/widget/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$ViewFader;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    }
.end annotation


# static fields
.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mUseNewSamsungToolbar:Z

.field private mUseSamsungToolbar:Z

.field private mWidthChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$1;

    invoke-direct {v0}, Lcom/android/internal/widget/FloatingToolbar$1;-><init>()V

    sput-object v0, NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/view/Window;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "useSamsungToolbar"    # Z

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentRect:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPreviousContentRect:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mShowingMenuItems:Ljava/util/List;

    .line 108
    sget-object v0, NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, mWidthChanged:Z

    .line 114
    iput-boolean v1, p0, mUseSamsungToolbar:Z

    .line 115
    iput-boolean v1, p0, mUseNewSamsungToolbar:Z

    .line 118
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$2;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object v0, p0, mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    .line 141
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p1, p3}, applyDefaultTheme(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 144
    iput-boolean p3, p0, mUseSamsungToolbar:Z

    .line 145
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mUseNewSamsungToolbar:Z

    .line 146
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, mUseSamsungToolbar:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    .line 87
    iget-object v0, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Z)Landroid/view/ViewGroup;
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-static {p0, p1}, createContentContainer(Landroid/content/Context;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/view/View;Z)Landroid/widget/PopupWindow;
    .registers 3
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-static {p0, p1}, createPopupWindow(Landroid/view/View;Z)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .registers 4
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/Context;Z)I
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-static {p0, p1}, getEstimatedToolbarHeight(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-static {p0}, createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/Context;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/view/MenuItem;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Landroid/view/MenuItem;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-static {p0}, isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/widget/FloatingToolbar;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, mWidthChanged:Z

    return p1
.end method

.method static synthetic access$3100(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/content/Context;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, getEstimatedToolbarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "originalContext"    # Landroid/content/Context;

    .prologue
    .line 2075
    const/4 v0, 0x0

    invoke-static {p0, v0}, applyDefaultTheme(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static applyDefaultTheme(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 9
    .param p0, "originalContext"    # Landroid/content/Context;
    .param p1, "useSamsungToolbar"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2078
    if-eqz p1, :cond_25

    .line 2079
    new-array v3, v6, [I

    const v4, 0x11600bf

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2080
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2081
    .local v1, "isLightTheme":Z
    if-eqz v1, :cond_21

    const v2, 0x103012b

    .line 2082
    .local v2, "themeId":I
    :goto_18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2083
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2089
    :goto_20
    return-object v3

    .line 2081
    .end local v2    # "themeId":I
    :cond_21
    const v2, 0x1030128

    goto :goto_18

    .line 2085
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "isLightTheme":Z
    :cond_25
    new-array v3, v6, [I

    const/high16 v4, 0x1160000

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2086
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 2087
    .restart local v1    # "isLightTheme":Z
    if-eqz v1, :cond_41

    const v2, 0x1030237

    .line 2088
    .restart local v2    # "themeId":I
    :goto_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2089
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_20

    .line 2087
    .end local v2    # "themeId":I
    :cond_41
    const v2, 0x1030224

    goto :goto_38
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2009
    const/4 v0, 0x0

    invoke-static {p0, v0}, createContentContainer(Landroid/content/Context;Z)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private static createContentContainer(Landroid/content/Context;Z)Landroid/view/ViewGroup;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSamsungToolbar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2013
    if-eqz p1, :cond_11

    .line 2014
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090120

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2016
    :goto_10
    return-object v0

    :cond_11
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109005d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_10
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 10
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2046
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2047
    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-array v1, v6, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_38

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/view/View;->X:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, v3, v7

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2051
    return-object v0

    .line 2047
    nop

    :array_38
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 2063
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2064
    .local v0, "animation":Landroid/animation/AnimatorSet;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_28

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2066
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2067
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2068
    return-object v0

    .line 2064
    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1965
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "useSamsungToolbar"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1968
    if-eqz p2, :cond_4a

    .line 1969
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x1090157

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1971
    .local v0, "SamsungMenuItemButton":Landroid/widget/TextView;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1972
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1973
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1974
    .local v3, "mBounds":Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_37

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-nez v5, :cond_37

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_37

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v5, :cond_38

    :cond_37
    const/4 v1, 0x1

    .line 1975
    .local v1, "hasBounds":Z
    :cond_38
    if-eqz v1, :cond_42

    .line 1976
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v7, v5, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1997
    .end local v0    # "SamsungMenuItemButton":Landroid/widget/TextView;
    .end local v1    # "hasBounds":Z
    .end local v3    # "mBounds":Landroid/graphics/Rect;
    :goto_41
    return-object v0

    .line 1978
    .restart local v0    # "SamsungMenuItemButton":Landroid/widget/TextView;
    .restart local v1    # "hasBounds":Z
    .restart local v3    # "mBounds":Landroid/graphics/Rect;
    :cond_42
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v7, v5, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_41

    .line 1982
    .end local v0    # "SamsungMenuItemButton":Landroid/widget/TextView;
    .end local v1    # "hasBounds":Z
    .end local v3    # "mBounds":Landroid/graphics/Rect;
    :cond_4a
    invoke-static {p1}, isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 1983
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x109005f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1985
    .local v2, "imageMenuItemButton":Landroid/view/View;
    const v5, 0x1020054

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1988
    invoke-virtual {v2, v1}, Landroid/view/View;->setHoverPopupType(I)V

    move-object v0, v2

    .line 1989
    goto :goto_41

    .line 1992
    .end local v2    # "imageMenuItemButton":Landroid/view/View;
    :cond_70
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x109005e

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1994
    .local v4, "menuItemButton":Landroid/widget/Button;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1996
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setHoverPopupType(I)V

    move-object v0, v4

    .line 1997
    goto :goto_41
.end method

.method private static createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2004
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "content"    # Landroid/view/View;

    .prologue
    .line 2021
    const/4 v0, 0x0

    invoke-static {p0, v0}, createPopupWindow(Landroid/view/View;Z)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/View;Z)Landroid/widget/PopupWindow;
    .registers 7
    .param p0, "content"    # Landroid/view/View;
    .param p1, "useSamsungToolbar"    # Z

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 2025
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2026
    .local v0, "popupContentHolder":Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 2029
    .local v1, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2030
    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2032
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2033
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2034
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2036
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2037
    return-object v1
.end method

.method private static getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getEstimatedToolbarHeight(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2094
    const/4 v0, 0x0

    invoke-static {p0, v0}, getEstimatedToolbarHeight(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method private static getEstimatedToolbarHeight(Landroid/content/Context;Z)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useSamsungToolbar"    # Z

    .prologue
    .line 2098
    if-eqz p1, :cond_e

    .line 2099
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2101
    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_d
.end method

.method private getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 293
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-static {v1}, hasIconAndTitleMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 294
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 296
    :cond_2a
    invoke-static {v1}, isIconOnlyMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 297
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 299
    :cond_38
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 302
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_40
    return-object v2
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-eqz p1, :cond_32

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_32

    .line 277
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 278
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 279
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 280
    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_2e

    .line 281
    invoke-direct {p0, v3}, getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 283
    .restart local v3    # "subMenu":Landroid/view/Menu;
    :cond_2e
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 287
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_32
    return-object v2
.end method

.method private static hasIconAndTitleMenuItem(Landroid/view/MenuItem;)Z
    .registers 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1955
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1956
    const/4 v0, 0x1

    .line 1958
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v0, p0, mShowingMenuItems:Ljava/util/List;

    invoke-direct {p0, p1}, getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    .registers 2
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1944
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1945
    const/4 v0, 0x1

    .line 1947
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 238
    iget-object v0, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 239
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hide()V

    .line 247
    return-void
.end method

.method public isHidden()Z
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 179
    iget-object v1, p0, mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, mMenu:Landroid/view/Menu;

    .line 156
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;
    .registers 3
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 164
    if-eqz p1, :cond_5

    .line 165
    iput-object p1, p0, mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 169
    :goto_4
    return-object p0

    .line 167
    :cond_5
    sget-object v0, NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_4
.end method

.method public setSuggestedWidth(I)Lcom/android/internal/widget/FloatingToolbar;
    .registers 10
    .param p1, "suggestedWidth"    # I

    .prologue
    .line 192
    iget v1, p0, mSuggestedWidth:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 193
    .local v0, "difference":I
    int-to-double v2, v0

    iget v1, p0, mSuggestedWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1c

    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, p0, mWidthChanged:Z

    .line 195
    iput p1, p0, mSuggestedWidth:I

    .line 196
    return-object p0

    .line 193
    :cond_1c
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public show()Lcom/android/internal/widget/FloatingToolbar;
    .registers 5

    .prologue
    .line 203
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 204
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mOrientationChangeHandler:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 205
    iget-object v1, p0, mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-direct {p0, v0}, isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, mWidthChanged:Z

    if-eqz v1, :cond_32

    .line 207
    :cond_1e
    iget-object v1, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    .line 208
    iget-object v1, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    .line 209
    invoke-direct {p0, v0}, getShowingMenuItemsReferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, mShowingMenuItems:Ljava/util/List;

    .line 211
    :cond_32
    iget-object v1, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 212
    iget-object v1, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    .line 216
    :cond_41
    :goto_41
    const/4 v1, 0x0

    iput-boolean v1, p0, mWidthChanged:Z

    .line 217
    iget-object v1, p0, mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 218
    return-object p0

    .line 213
    :cond_4c
    iget-object v1, p0, mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 214
    iget-object v1, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    goto :goto_41
.end method

.method public updateLayout()Lcom/android/internal/widget/FloatingToolbar;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 228
    invoke-virtual {p0}, show()Lcom/android/internal/widget/FloatingToolbar;

    .line 230
    :cond_b
    return-object p0
.end method
