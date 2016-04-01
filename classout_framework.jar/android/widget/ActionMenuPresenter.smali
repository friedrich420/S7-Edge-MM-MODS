.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final ITEM_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mExpandedActionViewsExclusive:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsThemeDeviceDefaultFamily:Z

.field private mIsThemeDeviceDefaultLightFamily:Z

.field private mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictWidthLimit:Z

.field private mUseTextItemMode:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 160
    const v2, 0x109001d

    const v5, 0x109001c

    invoke-direct {p0, p1, v2, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 107
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 115
    new-instance v2, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 120
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mPreLayoutItems:Landroid/util/SparseArray;

    .line 122
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mPostLayoutItems:Landroid/util/SparseArray;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mRunningItemAnimations:Ljava/util/List;

    .line 127
    new-instance v2, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {v2, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v2, p0, mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 137
    new-instance v2, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {v2, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v2, p0, mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 156
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 164
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v1, "outValue":Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 166
    .local v0, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600bd

    invoke-virtual {v2, v5, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v5, 0x11600bf

    invoke-virtual {v2, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 168
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_88

    move v2, v3

    :goto_67
    iput-boolean v2, p0, mIsThemeDeviceDefaultFamily:Z

    .line 169
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_8a

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_8a

    move v2, v3

    :goto_72
    iput-boolean v2, p0, mIsThemeDeviceDefaultLightFamily:Z

    .line 171
    iget-boolean v2, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_8c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11200ce

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8c

    :goto_85
    iput-boolean v3, p0, mUseTextItemMode:Z

    .line 174
    return-void

    :cond_88
    move v2, v4

    .line 168
    goto :goto_67

    :cond_8a
    move v2, v4

    .line 169
    goto :goto_72

    :cond_8c
    move v3, v4

    .line 171
    goto :goto_85
.end method

.method static synthetic access$100(Landroid/widget/ActionMenuPresenter;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, computeMenuItemAnimationInfo(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ActionMenuPresenter;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/ActionMenuPresenter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/ActionMenuPresenter;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    invoke-direct {p0}, isSupportOverlapSubMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 85
    iput-object p1, p0, mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 85
    iput-object p1, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 85
    iput-object p1, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuPresenter;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    invoke-direct {p0}, runItemAnimations()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mPreLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mPostLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 85
    iget-object v0, p0, mRunningItemAnimations:Ljava/util/List;

    return-object v0
.end method

.method private computeMenuItemAnimationInfo(Z)V
    .registers 10
    .param p1, "preLayout"    # Z

    .prologue
    .line 375
    iget-object v6, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    .line 376
    .local v6, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 377
    .local v1, "count":I
    if-eqz p1, :cond_30

    iget-object v5, p0, mPreLayoutItems:Landroid/util/SparseArray;

    .line 378
    .local v5, "items":Landroid/util/SparseArray;
    :goto_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_33

    .line 379
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 381
    .local v3, "id":I
    if-lez v3, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eqz v7, :cond_2d

    .line 382
    new-instance v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v4, v0, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    .line 383
    .local v4, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    .end local v4    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 377
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "items":Landroid/util/SparseArray;
    :cond_30
    iget-object v5, p0, mPostLayoutItems:Landroid/util/SparseArray;

    goto :goto_c

    .line 386
    .restart local v2    # "i":I
    .restart local v5    # "items":Landroid/util/SparseArray;
    :cond_33
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 678
    iget-object v3, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 679
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_9

    move-object v0, v5

    .line 689
    :cond_8
    :goto_8
    return-object v0

    .line 681
    :cond_9
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 682
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_24

    .line 683
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v4, :cond_21

    move-object v4, v0

    check-cast v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_8

    .line 682
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .end local v0    # "child":Landroid/view/View;
    :cond_24
    move-object v0, v5

    .line 689
    goto :goto_8
.end method

.method private isSupportOverlapSubMenu()Z
    .registers 2

    .prologue
    .line 674
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mIsThemeDeviceDefaultLightFamily:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private runItemAnimations()V
    .registers 21

    .prologue
    .line 397
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_1ab

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 399
    .local v4, "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 400
    .local v9, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 401
    .local v12, "postLayoutIndex":I
    if-ltz v12, :cond_12a

    .line 403
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 405
    .local v8, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v13, 0x0

    .line 406
    .local v13, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x0

    .line 407
    .local v14, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_64

    .line 408
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v18, v0

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 411
    :cond_64
    iget v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_95

    .line 412
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v18, v0

    iget v0, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 415
    :cond_95
    if-nez v13, :cond_99

    if-eqz v14, :cond_f9

    .line 416
    :cond_99
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_9a
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_be

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 418
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_bb

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v15, :cond_bb

    .line 419
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 416
    :cond_bb
    add-int/lit8 v6, v6, 0x1

    goto :goto_9a

    .line 423
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_be
    if-eqz v13, :cond_117

    .line 424
    if-eqz v14, :cond_104

    .line 425
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 433
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    :goto_d8
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 434
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 435
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x0

    invoke-direct {v5, v4, v8, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 437
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v15, Landroid/widget/ActionMenuPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    :cond_f9
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 397
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :goto_100
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 428
    .restart local v6    # "j":I
    .restart local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .restart local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_104
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_d8

    .line 431
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_117
    iget-object v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_d8

    .line 453
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "j":I
    .end local v8    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_12a
    const/high16 v10, 0x3f800000    # 1.0f

    .line 454
    .local v10, "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_12d
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_15d

    .line 455
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 456
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_15a

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_15a

    .line 457
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 458
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 454
    :cond_15a
    add-int/lit8 v6, v6, 0x1

    goto :goto_12d

    .line 461
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_15d
    iget-object v15, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 464
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    iget-object v0, v9, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 465
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 466
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 467
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x2

    invoke-direct {v5, v4, v9, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 468
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v15, Landroid/widget/ActionMenuPresenter$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_100

    .line 483
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "id":I
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v9    # "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    .end local v12    # "postLayoutIndex":I
    :cond_1ab
    const/4 v3, 0x0

    :goto_1ac
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_243

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 485
    .restart local v4    # "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 486
    .restart local v12    # "postLayoutIndex":I
    if-ltz v12, :cond_23f

    .line 488
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 490
    .local v7, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v10, 0x0

    .line 491
    .restart local v10    # "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_1d4
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_204

    .line 492
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 493
    .restart local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_201

    iget v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_201

    .line 494
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 495
    iget-object v15, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 491
    :cond_201
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d4

    .line 498
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_204
    iget-object v15, v7, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 500
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 501
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 502
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x1

    invoke-direct {v5, v4, v7, v2, v15}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 503
    .restart local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v15, Landroid/widget/ActionMenuPresenter$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 483
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v7    # "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    :cond_23f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1ac

    .line 517
    .end local v4    # "id":I
    .end local v12    # "postLayoutIndex":I
    :cond_243
    move-object/from16 v0, p0

    iget-object v15, v0, mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 518
    move-object/from16 v0, p0

    iget-object v15, v0, mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 519
    return-void
.end method

.method private setupItemAnimations()V
    .registers 3

    .prologue
    .line 526
    const/4 v0, 0x1

    invoke-direct {p0, v0}, computeMenuItemAnimationInfo(Z)V

    .line 527
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 529
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .registers 7
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .prologue
    .line 349
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 351
    iget-object v1, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/widget/ActionMenuView;

    .local v1, "menuView":Landroid/widget/ActionMenuView;
    move-object v0, p2

    .line 352
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 353
    .local v0, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 355
    iget-object v2, p0, mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_1a

    .line 356
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 358
    :cond_1a
    iget-object v2, p0, mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 359
    return-void
.end method

.method public dismissPopupMenus()Z
    .registers 3

    .prologue
    .line 738
    invoke-virtual {p0}, hideOverflowMenu()Z

    move-result v0

    .line 739
    .local v0, "result":Z
    if-nez v0, :cond_c

    invoke-direct {p0}, isSupportOverlapSubMenu()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 740
    :cond_c
    invoke-virtual {p0}, hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 742
    :cond_11
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 604
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    .line 605
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_9
.end method

.method public flagActionItems()Z
    .registers 30

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 778
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 779
    .local v15, "itemsSize":I
    move-object/from16 v0, p0

    iget v0, v0, mMaxItems:I

    move/from16 v17, v0

    .line 780
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 781
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 782
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 784
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 785
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 786
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 787
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 788
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_31
    if-ge v11, v15, :cond_61

    .line 789
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 790
    .local v14, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_56

    .line 791
    add-int/lit8 v22, v22, 0x1

    .line 797
    :goto_43
    move-object/from16 v0, p0

    iget-boolean v0, v0, mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_53

    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_53

    .line 800
    const/16 v17, 0x0

    .line 788
    :cond_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_31

    .line 792
    :cond_56
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_5f

    .line 793
    add-int/lit8 v21, v21, 0x1

    goto :goto_43

    .line 795
    :cond_5f
    const/4 v10, 0x1

    goto :goto_43

    .line 805
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_61
    move-object/from16 v0, p0

    iget-boolean v0, v0, mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_75

    if-nez v10, :cond_73

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_75

    .line 807
    :cond_73
    add-int/lit8 v17, v17, -0x1

    .line 809
    :cond_75
    sub-int v17, v17, v22

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 812
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 814
    const/4 v4, 0x0

    .line 815
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 816
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a4

    .line 817
    move-object/from16 v0, p0

    iget v0, v0, mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 819
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 823
    .end local v5    # "cellSizeRemaining":I
    :cond_a4
    const/4 v11, 0x0

    :goto_a5
    if-ge v11, v15, :cond_1e3

    .line 824
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 826
    .restart local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_104

    .line 827
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 828
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_fa

    .line 829
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 834
    :goto_d7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 835
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 836
    if-nez v8, :cond_e1

    .line 837
    move/from16 v8, v18

    .line 839
    :cond_e1
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 840
    .local v9, "groupId":I
    if-eqz v9, :cond_f0

    .line 841
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 843
    :cond_f0
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 823
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_f7
    add-int/lit8 v11, v11, 0x1

    goto :goto_a5

    .line 832
    .restart local v24    # "v":Landroid/view/View;
    :cond_fa
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_d7

    .line 844
    .end local v24    # "v":Landroid/view/View;
    :cond_104
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1da

    .line 847
    invoke-virtual {v14}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 848
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 849
    .local v12, "inGroup":Z
    if-gtz v17, :cond_118

    if-eqz v12, :cond_178

    :cond_118
    if-lez v26, :cond_178

    move-object/from16 v0, p0

    iget-boolean v0, v0, mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_124

    if-lez v7, :cond_178

    :cond_124
    const/4 v13, 0x1

    .line 852
    .local v13, "isAction":Z
    :goto_125
    if-eqz v13, :cond_163

    .line 853
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 854
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17a

    .line 855
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 857
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 858
    if-nez v6, :cond_14b

    .line 859
    const/4 v13, 0x0

    .line 864
    .end local v6    # "cells":I
    :cond_14b
    :goto_14b
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 865
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 866
    if-nez v8, :cond_155

    .line 867
    move/from16 v8, v18

    .line 870
    :cond_155
    move-object/from16 v0, p0

    iget-boolean v0, v0, mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_187

    .line 871
    if-ltz v26, :cond_184

    const/16 v27, 0x1

    :goto_161
    and-int v13, v13, v27

    .line 882
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_163
    :goto_163
    if-eqz v13, :cond_1a5

    if-eqz v9, :cond_1a5

    .line 883
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 897
    :cond_170
    if-eqz v13, :cond_174

    add-int/lit8 v17, v17, -0x1

    .line 899
    :cond_174
    invoke-virtual {v14, v13}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_f7

    .line 849
    .end local v13    # "isAction":Z
    :cond_178
    const/4 v13, 0x0

    goto :goto_125

    .line 862
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_17a
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_14b

    .line 871
    .restart local v18    # "measuredWidth":I
    :cond_184
    const/16 v27, 0x0

    goto :goto_161

    .line 874
    :cond_187
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsThemeDeviceDefaultFamily:Z

    move/from16 v27, v0

    if-eqz v27, :cond_199

    .line 875
    if-ltz v26, :cond_196

    const/16 v27, 0x1

    :goto_193
    and-int v13, v13, v27

    goto :goto_163

    :cond_196
    const/16 v27, 0x0

    goto :goto_193

    .line 877
    :cond_199
    add-int v27, v26, v8

    if-lez v27, :cond_1a2

    const/16 v27, 0x1

    :goto_19f
    and-int v13, v13, v27

    goto :goto_163

    :cond_1a2
    const/16 v27, 0x0

    goto :goto_19f

    .line 884
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_1a5
    if-eqz v12, :cond_170

    .line 886
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 887
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1b2
    move/from16 v0, v16

    if-ge v0, v11, :cond_170

    .line 888
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 889
    .local v3, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1d7

    .line 891
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_1d0

    add-int/lit8 v17, v17, 0x1

    .line 892
    :cond_1d0
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 887
    :cond_1d7
    add-int/lit8 v16, v16, 0x1

    goto :goto_1b2

    .line 902
    .end local v3    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1da
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_f7

    .line 905
    .end local v14    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1e3
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 335
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 337
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_30

    const/16 v3, 0x8

    :goto_18
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 339
    check-cast v2, Landroid/widget/ActionMenuView;

    .line 340
    .local v2, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 341
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 342
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    :cond_2f
    return-object v0

    .line 337
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Landroid/widget/ActionMenuView;
    :cond_30
    const/4 v3, 0x0

    goto :goto_18
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 319
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 320
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 321
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_1f

    move-object v2, v1

    .line 322
    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 323
    if-eqz v0, :cond_17

    .line 324
    check-cast v0, Landroid/view/View;

    .end local v0    # "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    iget-object v2, p0, mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_17
    move-object v2, v1

    .line 326
    check-cast v2, Landroid/view/View;

    iget-object v3, p0, mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 328
    :cond_1f
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-boolean v1, p0, mUseTextItemMode:Z

    if-eqz v1, :cond_6

    .line 314
    :cond_5
    :goto_5
    return-object v0

    .line 309
    :cond_6
    iget-object v1, p0, mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_13

    .line 310
    iget-object v0, p0, mOverflowButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5

    .line 311
    :cond_13
    iget-boolean v1, p0, mPendingOverflowIconSet:Z

    if-eqz v1, :cond_5

    .line 312
    iget-object v0, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method

.method public hideOverflowMenu()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 719
    iget-object v1, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_17

    iget-object v1, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_17

    .line 720
    iget-object v1, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 721
    const/4 v1, 0x0

    iput-object v1, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 730
    :goto_16
    return v1

    .line 725
    :cond_17
    iget-object v0, p0, mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 726
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_20

    .line 727
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 728
    goto :goto_16

    .line 730
    :cond_20
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public hideSubMenus()Z
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_b

    .line 752
    iget-object v0, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 753
    const/4 v0, 0x1

    .line 755
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 178
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 181
    iget-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_12

    .line 182
    const v4, 0x1090119

    const v5, 0x1090118

    invoke-super {p0, v4, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setMenuLayoutRes(II)V

    .line 187
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 189
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 190
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, mReserveOverflowSet:Z

    if-nez v4, :cond_24

    .line 191
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, mReserveOverflow:Z

    .line 194
    :cond_24
    iget-boolean v4, p0, mWidthLimitSet:Z

    if-nez v4, :cond_48

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, mWidthLimit:I

    .line 197
    iget-boolean v4, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_48

    .line 198
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, mWidthLimit:I

    .line 204
    :cond_48
    iget-boolean v4, p0, mMaxItemsSet:Z

    if-nez v4, :cond_52

    .line 205
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, mMaxItems:I

    .line 208
    :cond_52
    iget v3, p0, mWidthLimit:I

    .line 209
    .local v3, "width":I
    iget-boolean v4, p0, mReserveOverflow:Z

    if-eqz v4, :cond_a3

    .line 210
    iget-object v4, p0, mOverflowButton:Landroid/view/View;

    if-nez v4, :cond_72

    .line 211
    iget-boolean v4, p0, mUseTextItemMode:Z

    if-eqz v4, :cond_88

    .line 212
    new-instance v4, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;

    iget-object v5, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, mOverflowButton:Landroid/view/View;

    .line 221
    :cond_69
    :goto_69
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 222
    .local v2, "spec":I
    iget-object v4, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 224
    .end local v2    # "spec":I
    :cond_72
    iget-object v4, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 229
    :goto_79
    iput v3, p0, mActionItemWidthLimit:I

    .line 231
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, mMinCellSize:I

    .line 232
    return-void

    .line 214
    :cond_88
    new-instance v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, mOverflowButton:Landroid/view/View;

    .line 215
    iget-boolean v4, p0, mPendingOverflowIconSet:Z

    if-eqz v4, :cond_69

    .line 216
    iget-object v4, p0, mOverflowButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iput-object v9, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 218
    iput-boolean v8, p0, mPendingOverflowIconSet:Z

    goto :goto_69

    .line 226
    :cond_a3
    iput-object v9, p0, mOverflowButton:Landroid/view/View;

    goto :goto_79
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_a

    invoke-virtual {p0}, isOverflowMenuShowing()Z

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

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_e

    iget-object v0, p0, mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverflowReserved()Z
    .registers 2

    .prologue
    .line 773
    iget-boolean v0, p0, mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 910
    invoke-virtual {p0}, dismissPopupMenus()Z

    .line 911
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 912
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 236
    iget-object v1, p0, mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 237
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const v4, 0x10102f6

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, mOverflowButton:Landroid/view/View;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, mOverflowButton:Landroid/view/View;

    const/16 v2, 0x25

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 244
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2b
    iget-boolean v1, p0, mMaxItemsSet:Z

    if-nez v1, :cond_3e

    .line 249
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mMaxItems:I

    .line 254
    :cond_3e
    iget-boolean v1, p0, mWidthLimitSet:Z

    if-nez v1, :cond_6c

    .line 255
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, mWidthLimit:I

    .line 257
    iget-boolean v1, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_6c

    .line 258
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, mWidthLimit:I

    .line 263
    :cond_6c
    iget-boolean v1, p0, mReserveOverflow:Z

    if-eqz v1, :cond_8a

    iget-object v1, p0, mOverflowButton:Landroid/view/View;

    if-eqz v1, :cond_8a

    .line 264
    iget v1, p0, mWidthLimit:I

    iget-object v2, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, mActionItemWidthLimit:I

    .line 270
    :goto_7f
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_89

    .line 271
    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 273
    :cond_89
    return-void

    .line 266
    :cond_8a
    iget v1, p0, mWidthLimit:I

    iput v1, p0, mActionItemWidthLimit:I

    goto :goto_7f
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 923
    move-object v1, p1

    check-cast v1, Landroid/widget/ActionMenuPresenter$SavedState;

    .line 924
    .local v1, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v3, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_1a

    .line 925
    iget-object v3, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, v1, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 926
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_1a

    .line 927
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 928
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 931
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_1a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 916
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 917
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 918
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 609
    if-nez p1, :cond_4

    .line 627
    :cond_3
    :goto_3
    return v2

    .line 610
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 612
    move-object v1, p1

    .line 613
    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_b
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v3, v4, :cond_1a

    .line 614
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v1

    .end local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v1    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_b

    .line 616
    :cond_1a
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 617
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_2a

    .line 618
    iget-object v3, p0, mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 619
    iget-object v0, p0, mOverflowButton:Landroid/view/View;

    .line 622
    :cond_2a
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, mOpenSubMenuId:I

    .line 623
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v2, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 624
    iget-object v2, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 625
    iget-object v2, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 626
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 627
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 935
    if-eqz p1, :cond_7

    .line 937
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 941
    :goto_6
    return-void

    .line 939
    :cond_7
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    goto :goto_6
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2
    .param p1, "isExclusive"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, mExpandedActionViewsExclusive:Z

    .line 293
    return-void
.end method

.method public setItemLimit(I)V
    .registers 3
    .param p1, "itemCount"    # I

    .prologue
    .line 287
    iput p1, p0, mMaxItems:I

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, mMaxItemsSet:Z

    .line 289
    return-void
.end method

.method public setMenuView(Landroid/widget/ActionMenuView;)V
    .registers 4
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 956
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_d

    .line 957
    iget-object v0, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 959
    :cond_d
    iput-object p1, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 960
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 961
    iget-object v0, p0, mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 962
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 296
    iget-boolean v0, p0, mUseTextItemMode:Z

    if-eqz v0, :cond_5

    .line 304
    :goto_4
    return-void

    .line 298
    :cond_5
    iget-object v0, p0, mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 299
    iget-object v0, p0, mOverflowButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 301
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingOverflowIconSet:Z

    .line 302
    iput-object p1, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public setReserveOverflow(Z)V
    .registers 3
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, mReserveOverflow:Z

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, mReserveOverflowSet:Z

    .line 284
    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 276
    iput p1, p0, mWidthLimit:I

    .line 277
    iput-boolean p2, p0, mStrictWidthLimit:Z

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, mWidthLimitSet:Z

    .line 279
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 363
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 697
    iget-boolean v1, p0, mReserveOverflow:Z

    if-eqz v1, :cond_44

    invoke-virtual {p0}, isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_44

    iget-object v1, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v1, :cond_44

    iget-object v1, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_44

    iget-object v1, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 699
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, mOverflowButton:Landroid/view/View;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 700
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 702
    iget-object v1, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 706
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 710
    .end local v0    # "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    :goto_43
    return v5

    :cond_44
    const/4 v5, 0x0

    goto :goto_43
.end method

.method public twOnSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)Z
    .registers 9
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 636
    iget-object v4, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v4, :cond_e

    iget-object v4, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 666
    :cond_d
    :goto_d
    return v3

    .line 637
    :cond_e
    if-eqz p1, :cond_d

    .line 638
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 640
    const/4 v1, 0x1

    .line 642
    .local v1, "isActionSubMenu":Z
    move-object v2, p1

    .line 643
    .local v2, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_18
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v5, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v4, v5, :cond_27

    .line 644
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    .end local v2    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .restart local v2    # "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    goto :goto_18

    .line 646
    :cond_27
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v4

    invoke-direct {p0, v4}, findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 647
    .local v0, "anchor":Landroid/view/View;
    if-nez v0, :cond_3b

    .line 648
    const/4 v1, 0x0

    .line 649
    iget-object v4, p0, mOverflowButton:Landroid/view/View;

    if-eqz v4, :cond_d

    .line 650
    const/4 v0, 0x0

    .line 651
    if-nez v0, :cond_3b

    .line 652
    iget-object v0, p0, mOverflowButton:Landroid/view/View;

    .line 656
    :cond_3b
    invoke-direct {p0}, isSupportOverlapSubMenu()Z

    move-result v3

    if-eqz v3, :cond_43

    if-eqz v1, :cond_48

    .line 657
    :cond_43
    invoke-virtual {p0, p1}, onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v3

    goto :goto_d

    .line 660
    :cond_48
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, mOpenSubMenuId:I

    .line 661
    new-instance v3, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    iput-object v3, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 662
    iget-object v3, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 663
    iget-object v3, p0, mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v3, p2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->twTryShowAtLocation(Landroid/view/View;)Z

    .line 665
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 666
    const/4 v3, 0x1

    goto :goto_d
.end method

.method public updateMenuView(Z)V
    .registers 16
    .param p1, "cleared"    # Z

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 533
    iget-object v11, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 534
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_e

    .line 537
    :cond_e
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 539
    iget-object v11, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 541
    iget-object v11, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v11, :cond_3b

    .line 542
    iget-object v11, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 543
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 544
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    if-ge v3, v1, :cond_3b

    .line 545
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v8

    .line 546
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_38

    .line 547
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 544
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 552
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_3b
    iget-object v11, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v11, :cond_c6

    iget-object v11, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 555
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_45
    const/4 v2, 0x0

    .line 556
    .local v2, "hasOverflow":Z
    iget-boolean v11, p0, mReserveOverflow:Z

    if-eqz v11, :cond_5f

    if-eqz v6, :cond_5f

    .line 557
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 558
    .restart local v1    # "count":I
    if-ne v1, v12, :cond_cb

    .line 559
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v11

    if-nez v11, :cond_c9

    move v2, v12

    .line 565
    .end local v1    # "count":I
    :cond_5f
    :goto_5f
    if-eqz v2, :cond_db

    .line 566
    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    if-nez v11, :cond_72

    .line 567
    iget-boolean v11, p0, mUseTextItemMode:Z

    if-eqz v11, :cond_d1

    .line 568
    new-instance v11, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;

    iget-object v12, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v11, p0, mOverflowButton:Landroid/view/View;

    .line 573
    :cond_72
    :goto_72
    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 574
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v11, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v7, v11, :cond_a7

    .line 575
    if-eqz v7, :cond_85

    .line 576
    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 578
    :cond_85
    iget-object v4, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v4, Landroid/widget/ActionMenuView;

    .line 579
    .local v4, "menuView":Landroid/widget/ActionMenuView;
    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    .line 583
    .local v10, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v10, :cond_a7

    .line 584
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v9

    .line 585
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_a7

    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutDirection()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutDirection(I)V

    .line 595
    .end local v4    # "menuView":Landroid/widget/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a7
    :goto_a7
    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_b3

    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_bc

    :cond_b3
    invoke-virtual {p0}, isOverflowMenuShowing()Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 596
    invoke-virtual {p0}, hideOverflowMenu()Z

    .line 599
    :cond_bc
    iget-object v11, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/widget/ActionMenuView;

    iget-boolean v12, p0, mReserveOverflow:Z

    invoke-virtual {v11, v12}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 600
    return-void

    .line 552
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_c6
    const/4 v6, 0x0

    goto/16 :goto_45

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_c9
    move v2, v13

    .line 559
    goto :goto_5f

    .line 561
    :cond_cb
    if-lez v1, :cond_cf

    move v2, v12

    :goto_ce
    goto :goto_5f

    :cond_cf
    move v2, v13

    goto :goto_ce

    .line 570
    .end local v1    # "count":I
    :cond_d1
    new-instance v11, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v12, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v11, p0, v12}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v11, p0, mOverflowButton:Landroid/view/View;

    goto :goto_72

    .line 589
    :cond_db
    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    if-eqz v11, :cond_a7

    iget-object v11, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    iget-object v12, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v11, v12, :cond_a7

    .line 590
    iget-object v11, p0, mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v11, Landroid/view/ViewGroup;

    iget-object v12, p0, mOverflowButton:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 591
    invoke-virtual {p0}, isOverflowMenuShowing()Z

    move-result v11

    if-eqz v11, :cond_a7

    invoke-virtual {p0}, hideOverflowMenu()Z

    goto :goto_a7
.end method
