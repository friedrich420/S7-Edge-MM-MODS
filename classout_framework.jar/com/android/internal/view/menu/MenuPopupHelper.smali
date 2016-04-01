.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x10900b9

.field static final TW_CHECKED_ITEM_LAYOUT:I = 0x109012a

.field static final TW_ITEM_LAYOUT:I = 0x109012b


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z

.field private mIsParentThemeDeviceDefaultLight:Z

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field public mPopupWindowLayout:I

.field private mPositionAnchorView:Landroid/view/View;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v4, 0x0

    .line 98
    const/4 v3, 0x0

    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 102
    const v5, 0x1010300

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    .prologue
    .line 107
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v5, p0, mDropDownGravity:I

    .line 91
    const/4 v3, 0x0

    iput-object v3, p0, mPositionAnchorView:Landroid/view/View;

    .line 94
    iput v5, p0, mPopupWindowLayout:I

    .line 112
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, mInflater:Landroid/view/LayoutInflater;

    .line 114
    iput-object p2, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 115
    new-instance v3, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    iget-object v6, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v3, p0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 116
    iput-boolean p4, p0, mOverflowOnly:Z

    .line 117
    iput p5, p0, mPopupStyleAttr:I

    .line 118
    iput p6, p0, mPopupStyleRes:I

    .line 121
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .local v1, "outValue":Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 123
    .local v0, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x11600bd

    invoke-virtual {v3, v6, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v6, 0x11600bf

    invoke-virtual {v3, v6, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 125
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_73

    move v3, v4

    :goto_48
    iput-boolean v3, p0, mIsParentThemeDeviceDefault:Z

    .line 126
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_75

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_75

    :goto_52
    iput-boolean v4, p0, mIsParentThemeDeviceDefaultLight:Z

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 130
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    const v4, 0x105000e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, mPopupMaxWidth:I

    .line 133
    iput-object p3, p0, mAnchorView:Landroid/view/View;

    .line 136
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 137
    return-void

    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_73
    move v3, v5

    .line 125
    goto :goto_48

    :cond_75
    move v4, v5

    .line 126
    goto :goto_52
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 56
    iget-boolean v0, p0, mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 56
    invoke-direct {p0}, twIsPopupMenuDisplay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 56
    invoke-direct {p0}, isSupportOverlapSubMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 56
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .prologue
    .line 56
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getScreenWidth()I
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 252
    const/4 v0, 0x0

    .line 253
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_5
.end method

.method private getSubPopupGravity()I
    .registers 2

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method private isSplitTypeMultiWindow()Z
    .registers 3

    .prologue
    .line 362
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 363
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 364
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 365
    const/4 v1, 0x1

    .line 367
    .end local v0    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private isSupportOverlapSubMenu()Z
    .registers 2

    .prologue
    .line 261
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mIsParentThemeDeviceDefaultLight:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private measureContentWidth()I
    .registers 13

    .prologue
    const/4 v10, 0x0

    .line 432
    const/4 v7, 0x0

    .line 433
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    .line 434
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 436
    .local v4, "itemType":I
    iget-object v0, p0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 437
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 438
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 439
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 440
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_3d

    .line 441
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    .line 442
    .local v8, "positionType":I
    if-eq v8, v4, :cond_1d

    .line 443
    move v4, v8

    .line 444
    const/4 v5, 0x0

    .line 447
    :cond_1d
    iget-object v10, p0, mMeasureParent:Landroid/view/ViewGroup;

    if-nez v10, :cond_2a

    .line 448
    new-instance v10, Landroid/widget/FrameLayout;

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, mMeasureParent:Landroid/view/ViewGroup;

    .line 451
    :cond_2a
    iget-object v10, p0, mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 452
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 455
    .local v6, "itemWidth":I
    iget v10, p0, mPopupMaxWidth:I

    if-lt v6, v10, :cond_3e

    .line 456
    iget v7, p0, mPopupMaxWidth:I

    .line 462
    .end local v6    # "itemWidth":I
    .end local v7    # "maxWidth":I
    .end local v8    # "positionType":I
    :cond_3d
    return v7

    .line 457
    .restart local v6    # "itemWidth":I
    .restart local v7    # "maxWidth":I
    .restart local v8    # "positionType":I
    :cond_3e
    if-le v6, v7, :cond_41

    .line 458
    move v7, v6

    .line 440
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_13
.end method

.method private twIsPopupMenuDisplay()Z
    .registers 2

    .prologue
    .line 376
    iget-boolean v0, p0, mIsParentThemeDeviceDefault:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 382
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 386
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 387
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 389
    :cond_b
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, mDropDownGravity:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 501
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 497
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 585
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_5

    .line 591
    :cond_4
    :goto_4
    return-void

    .line 587
    :cond_5
    invoke-virtual {p0}, dismiss()V

    .line 588
    iget-object v0, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_4

    .line 589
    iget-object v0, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_4
.end method

.method public onDismiss()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 393
    iput-object v2, p0, mPopup:Landroid/widget/ListPopupWindow;

    .line 394
    invoke-direct {p0}, isSupportOverlapSubMenu()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 395
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 399
    :goto_f
    iget-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_2a

    .line 400
    iget-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 401
    :cond_23
    iget-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 402
    iput-object v2, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 404
    :cond_2a
    iget-object v0, p0, mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 405
    return-void

    .line 397
    :cond_30
    iget-object v0, p0, mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    goto :goto_f
.end method

.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 467
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 468
    iget-object v0, p0, mAnchorView:Landroid/view/View;

    .line 469
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_14

    .line 470
    :cond_10
    invoke-virtual {p0}, dismiss()V

    .line 479
    .end local v0    # "anchor":Landroid/view/View;
    :cond_13
    :goto_13
    return-void

    .line 471
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_14
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 473
    iget-boolean v1, p0, mIsParentThemeDeviceDefaultLight:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, mPositionAnchorView:Landroid/view/View;

    if-eqz v1, :cond_28

    .line 474
    iget-object v1, p0, mPositionAnchorView:Landroid/view/View;

    invoke-virtual {p0, v1}, twTryShowAtLocation(Landroid/view/View;)Z

    goto :goto_13

    .line 476
    :cond_28
    iget-object v1, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_13
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    .line 414
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    invoke-direct {p0}, isSupportOverlapSubMenu()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 415
    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->twPerformItemAction(Landroid/view/View;Landroid/view/MenuItem;I)Z

    .line 419
    :goto_14
    return-void

    .line 417
    :cond_15
    # getter for: Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    goto :goto_14
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 423
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_f

    const/16 v1, 0x52

    if-ne p2, v1, :cond_f

    .line 424
    invoke-virtual {p0}, dismiss()V

    .line 427
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 618
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 613
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 9
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 521
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 522
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 524
    const/4 v3, 0x0

    .line 525
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 526
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_2d

    .line 527
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 528
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 529
    const/4 v3, 0x1

    .line 533
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_2d
    invoke-virtual {v4, v3}, setForceShowIcon(Z)V

    .line 536
    invoke-virtual {v4}, tryShow()Z

    move-result v5

    if-nez v5, :cond_44

    .line 537
    iget-object v5, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_3f

    .line 538
    iget-object v5, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 540
    :cond_3f
    const/4 v5, 0x1

    .line 543
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :goto_40
    return v5

    .line 526
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 543
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_44
    const/4 v5, 0x0

    goto :goto_40
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 483
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    iget-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_17

    .line 488
    iget-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 489
    :cond_12
    iget-object v0, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 491
    :cond_17
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 492
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 140
    iput-object p1, p0, mAnchorView:Landroid/view/View;

    .line 141
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 515
    iput-object p1, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 516
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, mForceShowIcon:Z

    .line 145
    return-void
.end method

.method public setGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .prologue
    .line 148
    iput p1, p0, mDropDownGravity:I

    .line 149
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 156
    invoke-virtual {p0}, tryShow()Z

    move-result v0

    if-nez v0, :cond_e

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_e
    return-void
.end method

.method public tryShow()Z
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 173
    invoke-virtual {p0}, isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 243
    :goto_8
    return v6

    .line 177
    :cond_9
    new-instance v7, Landroid/widget/ListPopupWindow;

    iget-object v8, p0, mContext:Landroid/content/Context;

    const/4 v9, 0x0

    iget v10, p0, mPopupStyleAttr:I

    iget v11, p0, mPopupStyleRes:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    .line 178
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 179
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    iget-object v8, p0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 183
    iget-object v1, p0, mAnchorView:Landroid/view/View;

    .line 184
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_da

    .line 185
    iget-object v7, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v7, :cond_36

    move v0, v6

    .line 186
    .local v0, "addGlobalListener":Z
    :cond_36
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    iput-object v7, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 187
    if-eqz v0, :cond_43

    iget-object v7, p0, mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 188
    :cond_43
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 189
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 190
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, mDropDownGravity:I

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 193
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-virtual {v1}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v7

    if-nez v7, :cond_67

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 201
    :cond_67
    iget-boolean v7, p0, mHasContentWidth:Z

    if-nez v7, :cond_73

    .line 202
    invoke-direct {p0}, measureContentWidth()I

    move-result v7

    iput v7, p0, mContentWidth:I

    .line 203
    iput-boolean v6, p0, mHasContentWidth:Z

    .line 207
    :cond_73
    invoke-direct {p0}, twIsPopupMenuDisplay()Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 210
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 211
    .local v2, "conf":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .line 213
    .local v3, "isMobileKeyboard":Z
    iget v7, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v7, v6, :cond_89

    .line 214
    const/4 v3, 0x1

    .line 216
    :cond_89
    if-eqz v3, :cond_dd

    .line 217
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00fd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 219
    .local v4, "mItemMaxCount":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050176

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 228
    .local v5, "mVisibleMaxHeight":I
    :goto_a5
    iget-object v7, p0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v7

    if-le v7, v4, :cond_b2

    .line 229
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 233
    .end local v2    # "conf":Landroid/content/res/Configuration;
    .end local v3    # "isMobileKeyboard":Z
    .end local v4    # "mItemMaxCount":I
    .end local v5    # "mVisibleMaxHeight":I
    :cond_b2
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, mContentWidth:I

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 234
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 236
    iget v7, p0, mPopupWindowLayout:I

    if-eqz v7, :cond_ca

    .line 237
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    iget v8, p0, mPopupWindowLayout:I

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setWindowLayoutType(I)V

    .line 241
    :cond_ca
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->show()V

    .line 242
    iget-object v7, p0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v7}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_8

    .end local v0    # "addGlobalListener":Z
    :cond_da
    move v6, v0

    .line 198
    goto/16 :goto_8

    .line 222
    .restart local v0    # "addGlobalListener":Z
    .restart local v2    # "conf":Landroid/content/res/Configuration;
    .restart local v3    # "isMobileKeyboard":Z
    :cond_dd
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 224
    .restart local v4    # "mItemMaxCount":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050175

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .restart local v5    # "mVisibleMaxHeight":I
    goto :goto_a5
.end method

.method public twOnSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)Z
    .registers 10
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 552
    invoke-direct {p0}, isSupportOverlapSubMenu()Z

    move-result v5

    if-nez v5, :cond_b

    .line 553
    invoke-virtual {p0, p1}, onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v5

    .line 579
    :goto_a
    return v5

    .line 556
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 557
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v6}, <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    .line 558
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 560
    const/4 v3, 0x0

    .line 561
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 562
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v1, :cond_38

    .line 563
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 564
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4c

    .line 565
    const/4 v3, 0x1

    .line 569
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_38
    invoke-virtual {v4, v3}, setForceShowIcon(Z)V

    .line 572
    invoke-virtual {v4, p2}, twTryShowAtLocation(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 573
    iget-object v5, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_4a

    .line 574
    iget-object v5, p0, mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 576
    :cond_4a
    const/4 v5, 0x1

    goto :goto_a

    .line 562
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 579
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_4f
    const/4 v5, 0x0

    goto :goto_a
.end method

.method public twTryShowAtLocation(Landroid/view/View;)Z
    .registers 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 271
    if-nez p1, :cond_7

    .line 272
    invoke-virtual/range {p0 .. p0}, tryShow()Z

    move-result v15

    .line 358
    :goto_6
    return v15

    .line 275
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    if-nez v15, :cond_10c

    .line 276
    new-instance v15, Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mPopupStyleAttr:I

    move/from16 v18, v0

    invoke-direct/range {v15 .. v18}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, mAnchorView:Landroid/view/View;

    .line 284
    .local v3, "anchor":Landroid/view/View;
    if-eqz v3, :cond_1b0

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v15, :cond_1ad

    const/4 v2, 0x1

    .line 286
    .local v2, "addGlobalListener":Z
    :goto_59
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 287
    if-eqz v2, :cond_6c

    move-object/from16 v0, p0

    iget-object v15, v0, mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 288
    :cond_6c
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    const v16, 0x800035

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v15

    if-eqz v15, :cond_9b

    invoke-virtual {v3}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v15

    if-nez v15, :cond_9b

    .line 295
    invoke-virtual {v3}, Landroid/view/View;->resolveLayoutDirection()Z

    .line 301
    :cond_9b
    move-object/from16 v0, p0

    iget-boolean v15, v0, mHasContentWidth:Z

    if-nez v15, :cond_ae

    .line 302
    invoke-direct/range {p0 .. p0}, measureContentWidth()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, mContentWidth:I

    .line 303
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, mHasContentWidth:Z

    .line 306
    :cond_ae
    invoke-direct/range {p0 .. p0}, twIsPopupMenuDisplay()Z

    move-result v15

    if-eqz v15, :cond_e3

    .line 307
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x10e00fc

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 309
    .local v8, "mItemMaxCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getCount()I

    move-result v15

    if-le v15, v8, :cond_e3

    .line 310
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1050175

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 312
    .local v9, "mVisibleMaxHeight":I
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v15, v9}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 316
    .end local v8    # "mItemMaxCount":I
    .end local v9    # "mVisibleMaxHeight":I
    :cond_e3
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget v0, v0, mContentWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 319
    move-object/from16 v0, p0

    iget v15, v0, mPopupWindowLayout:I

    if-eqz v15, :cond_10c

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget v0, v0, mPopupWindowLayout:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListPopupWindow;->setWindowLayoutType(I)V

    .line 324
    .end local v2    # "addGlobalListener":Z
    .end local v3    # "anchor":Landroid/view/View;
    :cond_10c
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 325
    .local v12, "res":Landroid/content/res/Resources;
    const v15, 0x1050178

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 326
    .local v5, "hOffset":I
    const v15, 0x1050179

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 329
    .local v4, "anchorVerticalOff":I
    const/4 v15, 0x2

    new-array v6, v15, [I

    .line 330
    .local v6, "locationInWindow":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 331
    const/4 v15, 0x2

    new-array v7, v15, [I

    .line 332
    .local v7, "locationOnScreen":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v15

    if-eqz v15, :cond_1b3

    move-object/from16 v0, p0

    iget-object v15, v0, mAnchorView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b3

    .line 338
    invoke-direct/range {p0 .. p0}, getScreenWidth()I

    move-result v15

    const/16 v16, 0x0

    aget v16, v6, v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, mContentWidth:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int v10, v15, v5

    .line 344
    .local v10, "positionX":I
    :goto_162
    invoke-direct/range {p0 .. p0}, isSplitTypeMultiWindow()Z

    move-result v15

    if-eqz v15, :cond_1b9

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, mAnchorView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    .line 346
    .local v13, "root":Landroid/view/View;
    const/4 v15, 0x2

    new-array v14, v15, [I

    .line 347
    .local v14, "rootLocation":[I
    invoke-virtual {v13, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 348
    const/4 v15, 0x1

    aget v15, v7, v15

    const/16 v16, 0x1

    aget v16, v14, v16

    sub-int v11, v15, v16

    .line 353
    .end local v13    # "root":Landroid/view/View;
    .end local v14    # "rootLocation":[I
    .local v11, "positionY":I
    :goto_17f
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, mAnchorView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const v17, 0x800035

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v10, v11, v1}, Landroid/widget/ListPopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 355
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mPositionAnchorView:Landroid/view/View;

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v15}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 358
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 285
    .end local v4    # "anchorVerticalOff":I
    .end local v5    # "hOffset":I
    .end local v6    # "locationInWindow":[I
    .end local v7    # "locationOnScreen":[I
    .end local v10    # "positionX":I
    .end local v11    # "positionY":I
    .end local v12    # "res":Landroid/content/res/Resources;
    .restart local v3    # "anchor":Landroid/view/View;
    :cond_1ad
    const/4 v2, 0x0

    goto/16 :goto_59

    .line 298
    :cond_1b0
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 340
    .end local v3    # "anchor":Landroid/view/View;
    .restart local v4    # "anchorVerticalOff":I
    .restart local v5    # "hOffset":I
    .restart local v6    # "locationInWindow":[I
    .restart local v7    # "locationOnScreen":[I
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_1b3
    const/4 v15, 0x0

    aget v15, v6, v15

    add-int v10, v15, v5

    .restart local v10    # "positionX":I
    goto :goto_162

    .line 350
    :cond_1b9
    const/4 v15, 0x1

    aget v11, v7, v15

    .restart local v11    # "positionY":I
    goto :goto_17f
.end method

.method public updateMenuView(Z)V
    .registers 3
    .param p1, "cleared"    # Z

    .prologue
    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasContentWidth:Z

    .line 508
    iget-object v0, p0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_c

    .line 509
    iget-object v0, p0, mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 511
    :cond_c
    return-void
.end method
