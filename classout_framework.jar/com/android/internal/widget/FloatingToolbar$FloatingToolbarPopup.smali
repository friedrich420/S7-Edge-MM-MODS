.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarPopup"
.end annotation


# static fields
.field public static final OVERFLOW_DIRECTION_DOWN:I = 0x1

.field public static final OVERFLOW_DIRECTION_UP:I


# instance fields
.field private final mCloseOverflow:Ljava/lang/Runnable;

.field private final mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mCloseOverflowAnimatior:Landroid/animation/AnimatorSet;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

.field private final mMarginHorizontal:I

.field private final mMarginVertical:I

.field private final mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

.field private final mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private final mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mOpenOverflowAnimatior1:Landroid/animation/AnimatorSet;

.field private mOpenOverflowAnimatior2:Landroid/animation/AnimatorSet;

.field private final mOpenSamsungflow:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mOverflowDirection:I

.field private mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

.field private final mParent:Landroid/view/View;

.field private mPopupAboveMargin:I

.field private mPopupBelowMargin:I

.field private mPopupBgPaddingBottom:I

.field private mPopupBgPaddingLeft:I

.field private mPopupBgPaddingRight:I

.field private mPopupBgPaddingTop:I

.field private mPopupSideMargin:I

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mTmpCoords:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mUseNewSamsungToolbar:Z

.field private mUseSamsungToolbar:Z

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "useSamsungToolbar"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-boolean v5, p0, mUseSamsungToolbar:Z

    .line 327
    iput-boolean v5, p0, mUseNewSamsungToolbar:Z

    .line 341
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v2, p0, mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

    .line 355
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v2, p0, mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

    .line 375
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 376
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 378
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v2, p0, mOpenOverflow:Ljava/lang/Runnable;

    .line 384
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v2, p0, mCloseOverflow:Ljava/lang/Runnable;

    .line 391
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v2, p0, mOpenSamsungflow:Ljava/lang/Runnable;

    .line 400
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mViewPortOnScreen:Landroid/graphics/Rect;

    .line 401
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, mCoordsOnWindow:Landroid/graphics/Point;

    .line 402
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, mTmpCoords:[I

    .line 403
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, mTmpRect:Landroid/graphics/Rect;

    .line 405
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, mTouchableRegion:Landroid/graphics/Region;

    .line 406
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v2, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 418
    iput-boolean v3, p0, mDismissed:Z

    .line 435
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, mParent:Landroid/view/View;

    .line 436
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 437
    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createContentContainer(Landroid/content/Context;Z)Landroid/view/ViewGroup;
    invoke-static {p1, p3}, Lcom/android/internal/widget/FloatingToolbar;->access$1200(Landroid/content/Context;Z)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    .line 438
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createPopupWindow(Landroid/view/View;Z)Landroid/widget/PopupWindow;
    invoke-static {v2, p3}, Lcom/android/internal/widget/FloatingToolbar;->access$1300(Landroid/view/View;Z)Landroid/widget/PopupWindow;

    move-result-object v2

    iput-object v2, p0, mPopupWindow:Landroid/widget/PopupWindow;

    .line 439
    iput-boolean p3, p0, mUseSamsungToolbar:Z

    .line 440
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, mUseNewSamsungToolbar:Z

    .line 441
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    const/16 v3, 0x96

    new-instance v4, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/FloatingToolbar;->access$1600(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 451
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    invoke-static {v2, v5, v3}, Lcom/android/internal/widget/FloatingToolbar;->access$1600(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, mHideAnimation:Landroid/animation/AnimatorSet;

    .line 460
    iget-boolean v2, p0, mUseSamsungToolbar:Z

    if-eqz v2, :cond_114

    .line 462
    iget-object v2, p0, mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x10304da

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 465
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080a12

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 466
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 467
    .local v1, "bgResPadding":Landroid/graphics/Rect;
    if-eqz v1, :cond_10b

    .line 468
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 469
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, mPopupBgPaddingLeft:I

    .line 470
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, mPopupBgPaddingRight:I

    .line 471
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, mPopupBgPaddingTop:I

    .line 472
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, mPopupBgPaddingBottom:I

    .line 473
    const/4 v1, 0x0

    .line 480
    :goto_df
    iput v5, p0, mMarginHorizontal:I

    .line 481
    iput v5, p0, mMarginVertical:I

    .line 483
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mPopupAboveMargin:I

    .line 485
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050249

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mPopupBelowMargin:I

    .line 487
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mPopupSideMargin:I

    .line 495
    .end local v0    # "bgRes":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgResPadding":Landroid/graphics/Rect;
    :goto_10a
    return-void

    .line 475
    .restart local v0    # "bgRes":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bgResPadding":Landroid/graphics/Rect;
    :cond_10b
    iput v5, p0, mPopupBgPaddingLeft:I

    .line 476
    iput v5, p0, mPopupBgPaddingRight:I

    .line 477
    iput v5, p0, mPopupBgPaddingTop:I

    .line 478
    iput v5, p0, mPopupBgPaddingBottom:I

    goto :goto_df

    .line 490
    .end local v0    # "bgRes":Landroid/graphics/drawable/Drawable;
    .end local v1    # "bgResPadding":Landroid/graphics/Rect;
    :cond_114
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mMarginHorizontal:I

    .line 492
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mMarginVertical:I

    goto :goto_10a
.end method

.method static synthetic access$100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    invoke-direct {p0}, viewPortHasChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    invoke-direct {p0}, openSamsungflow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Region;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    iget-object v0, p0, mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    iget-object v0, p0, mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    invoke-direct {p0}, isRTL()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .param p1, "x1"    # I

    .prologue
    .line 313
    invoke-direct {p0, p1}, viewOrientationHasChanged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    invoke-direct {p0}, setOverflowPanelAsContent()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    iget-object v0, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    invoke-direct {p0}, setMainPanelAsContent()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    iget-object v0, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    invoke-direct {p0}, openOverflow()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    .prologue
    .line 313
    invoke-direct {p0}, closeOverflow()V

    return-void
.end method

.method private cancelDismissAndHideAnimations()V
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 798
    iget-object v0, p0, mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 799
    return-void
.end method

.method private cancelOverflowAnimations()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 802
    iget-object v0, p0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_20

    .line 807
    iget-object v0, p0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 808
    iget-object v0, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 809
    iget-object v0, p0, mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 811
    :cond_20
    iget-object v0, p0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 816
    iget-object v0, p0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 817
    iget-object v0, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 818
    iget-object v0, p0, mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 820
    :cond_3f
    return-void
.end method

.method private closeOverflow()V
    .registers 19

    .prologue
    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    if-eqz v3, :cond_bc

    const/4 v3, 0x1

    :goto_7
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    if-eqz v3, :cond_bf

    const/4 v3, 0x1

    :goto_11
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 891
    move-object/from16 v0, p0

    iget-object v3, v0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->fadeOut(Z)V

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measure()Landroid/util/Size;

    move-result-object v14

    .line 893
    .local v14, "mainPanelSize":Landroid/util/Size;
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 894
    .local v4, "targetWidth":I
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 895
    .local v10, "targetHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 896
    .local v5, "startWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    .line 897
    .local v11, "startHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v9, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float v13, v3, v9

    .line 898
    .local v13, "bottom":F
    move-object/from16 v0, p0

    iget v3, v0, mOverflowDirection:I

    if-nez v3, :cond_c2

    const/4 v12, 0x1

    .line 899
    .local v12, "morphedUpwards":Z
    :goto_56
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    .line 900
    .local v6, "left":F
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v7, v6, v3

    .line 901
    .local v7, "right":F
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    .line 915
    .local v2, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIZF)V

    .line 927
    .local v8, "heightAnimation":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 928
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 929
    const-wide/16 v16, 0xd2

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v9, v0, mOnOverflowClosed:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v3, v0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 935
    return-void

    .line 888
    .end local v2    # "widthAnimation":Landroid/view/animation/Animation;
    .end local v4    # "targetWidth":I
    .end local v5    # "startWidth":I
    .end local v6    # "left":F
    .end local v7    # "right":F
    .end local v8    # "heightAnimation":Landroid/view/animation/Animation;
    .end local v10    # "targetHeight":I
    .end local v11    # "startHeight":I
    .end local v12    # "morphedUpwards":Z
    .end local v13    # "bottom":F
    .end local v14    # "mainPanelSize":Landroid/util/Size;
    :cond_bc
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 889
    :cond_bf
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 898
    .restart local v4    # "targetWidth":I
    .restart local v5    # "startWidth":I
    .restart local v10    # "targetHeight":I
    .restart local v11    # "startHeight":I
    .restart local v13    # "bottom":F
    .restart local v14    # "mainPanelSize":Landroid/util/Size;
    :cond_c2
    const/4 v12, 0x0

    goto :goto_56
.end method

.method private getToolbarHeightWithVerticalMargin()I
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-boolean v1, p0, mUseSamsungToolbar:Z

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedToolbarHeight(Landroid/content/Context;Z)I
    invoke-static {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;->access$1700(Landroid/content/Context;Z)I

    move-result v0

    iget v1, p0, mMarginVertical:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, mPopupBgPaddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, mPopupBgPaddingBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getToolbarWidth(I)I
    .registers 7
    .param p1, "suggestedWidth"    # I

    .prologue
    .line 1195
    move v1, p1

    .line 1196
    .local v1, "width":I
    invoke-direct {p0}, refreshViewPort()V

    .line 1197
    iget-object v2, p0, mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 1199
    .local v0, "maximumWidth":I
    if-gtz v1, :cond_2a

    .line 1200
    iget-object v2, p0, mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1203
    :cond_2a
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private isMainPanelContent()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1055
    iget-object v1, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    if-eqz v1, :cond_14

    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private isOverflowPanelContent()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1060
    iget-object v1, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    if-eqz v1, :cond_14

    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private isRTL()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1244
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private openOverflow()V
    .registers 19

    .prologue
    .line 830
    move-object/from16 v0, p0

    iget-object v3, v0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    if-eqz v3, :cond_b1

    const/4 v3, 0x1

    :goto_7
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 831
    move-object/from16 v0, p0

    iget-object v3, v0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    if-eqz v3, :cond_b4

    const/4 v3, 0x1

    :goto_11
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->fadeOut(Z)V

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->measure()Landroid/util/Size;

    move-result-object v14

    .line 835
    .local v14, "overflowPanelSize":Landroid/util/Size;
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 836
    .local v4, "targetWidth":I
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 837
    .local v10, "targetHeight":I
    move-object/from16 v0, p0

    iget v3, v0, mOverflowDirection:I

    if-nez v3, :cond_b7

    const/4 v12, 0x1

    .line 838
    .local v12, "morphUpwards":Z
    :goto_33
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 839
    .local v5, "startWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    .line 840
    .local v11, "startHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v13

    .line 841
    .local v13, "startY":F
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    .line 842
    .local v6, "left":F
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v7, v6, v3

    .line 843
    .local v7, "right":F
    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    .line 857
    .local v2, "widthAnimation":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIZF)V

    .line 870
    .local v8, "heightAnimation":Landroid/view/animation/Animation;
    const-wide/16 v16, 0xf0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 871
    const-wide/16 v16, 0xb4

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 872
    const-wide/16 v16, 0x3c

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget-object v9, v0, mOnOverflowOpened:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 878
    return-void

    .line 830
    .end local v2    # "widthAnimation":Landroid/view/animation/Animation;
    .end local v4    # "targetWidth":I
    .end local v5    # "startWidth":I
    .end local v6    # "left":F
    .end local v7    # "right":F
    .end local v8    # "heightAnimation":Landroid/view/animation/Animation;
    .end local v10    # "targetHeight":I
    .end local v11    # "startHeight":I
    .end local v12    # "morphUpwards":Z
    .end local v13    # "startY":F
    .end local v14    # "overflowPanelSize":Landroid/util/Size;
    :cond_b1
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 831
    :cond_b4
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 837
    .restart local v4    # "targetWidth":I
    .restart local v10    # "targetHeight":I
    .restart local v14    # "overflowPanelSize":Landroid/util/Size;
    :cond_b7
    const/4 v12, 0x0

    goto/16 :goto_33
.end method

.method private openSamsungflow()V
    .registers 15

    .prologue
    .line 938
    iget-object v11, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    if-eqz v11, :cond_115

    const/4 v11, 0x1

    :goto_5
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 940
    iget-object v11, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    .line 941
    .local v8, "startHeight":I
    iget-object v11, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measureSamsung()Landroid/util/Size;

    move-result-object v5

    .line 943
    .local v5, "mainPanelSize":Landroid/util/Size;
    iget-object v11, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v11}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupMaxHeight()I

    move-result v11

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v12, p0, mPopupBgPaddingBottom:I

    add-int/2addr v11, v12

    iget v12, p0, mPopupBgPaddingTop:I

    add-int v10, v11, v12

    .line 944
    .local v10, "targetHeight":I
    iget v11, p0, mOverflowDirection:I

    if-nez v11, :cond_118

    const/4 v6, 0x1

    .line 945
    .local v6, "morphUpwards":Z
    :goto_2e
    iget-object v11, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getY()F

    move-result v9

    .line 946
    .local v9, "startY":F
    iget-object v11, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    .line 947
    .local v4, "left":F
    iget-object v11, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float v7, v4, v11

    .line 949
    .local v7, "right":F
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v8, v11, v12

    const/4 v12, 0x1

    aput v10, v11, v12

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 950
    .local v3, "heightAnimator":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;

    invoke-direct {v11, p0, v6, v9, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;ZFI)V

    invoke-virtual {v3, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 964
    const-wide/16 v12, 0xa6

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 965
    new-instance v11, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v11}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v3, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 967
    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_11c

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 968
    .local v0, "AlphaAnimator1":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 975
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 983
    const-wide/16 v12, 0x64

    invoke-virtual {v0, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 984
    new-instance v11, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v11}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 986
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, p0, mOpenOverflowAnimatior1:Landroid/animation/AnimatorSet;

    .line 987
    iget-object v11, p0, mOpenOverflowAnimatior1:Landroid/animation/AnimatorSet;

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 988
    iget-object v11, p0, mOpenOverflowAnimatior1:Landroid/animation/AnimatorSet;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v0, v12, v13

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 990
    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_124

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 991
    .local v1, "AlphaAnimator2":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 998
    const-wide/16 v12, 0xa6

    invoke-virtual {v1, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 999
    new-instance v11, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v11}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1001
    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_12c

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1002
    .local v2, "AlphaAnimator3":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$17;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$17;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1011
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$18;

    invoke-direct {v11, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$18;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1022
    const-wide/16 v12, 0xa6

    invoke-virtual {v2, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1023
    new-instance v11, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v11}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v2, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1025
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, p0, mOpenOverflowAnimatior2:Landroid/animation/AnimatorSet;

    .line 1026
    iget-object v11, p0, mOpenOverflowAnimatior2:Landroid/animation/AnimatorSet;

    const-wide/16 v12, 0xc8

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1027
    iget-object v11, p0, mOpenOverflowAnimatior2:Landroid/animation/AnimatorSet;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1029
    iget-object v11, p0, mOpenOverflowAnimatior1:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 1030
    iget-object v11, p0, mOpenOverflowAnimatior2:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 1031
    return-void

    .line 938
    .end local v0    # "AlphaAnimator1":Landroid/animation/ValueAnimator;
    .end local v1    # "AlphaAnimator2":Landroid/animation/ValueAnimator;
    .end local v2    # "AlphaAnimator3":Landroid/animation/ValueAnimator;
    .end local v3    # "heightAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "left":F
    .end local v5    # "mainPanelSize":Landroid/util/Size;
    .end local v6    # "morphUpwards":Z
    .end local v7    # "right":F
    .end local v8    # "startHeight":I
    .end local v9    # "startY":F
    .end local v10    # "targetHeight":I
    :cond_115
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 944
    .restart local v5    # "mainPanelSize":Landroid/util/Size;
    .restart local v8    # "startHeight":I
    .restart local v10    # "targetHeight":I
    :cond_118
    const/4 v6, 0x0

    goto/16 :goto_2e

    .line 967
    nop

    :array_11c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 990
    :array_124
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1001
    :array_12c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private positionMainPanel()V
    .registers 5

    .prologue
    .line 1100
    iget-object v1, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 1103
    iget v1, p0, mMarginVertical:I

    int-to-float v0, v1

    .line 1104
    .local v0, "y":F
    iget v1, p0, mOverflowDirection:I

    if-nez v1, :cond_2d

    .line 1105
    invoke-virtual {p0}, getHeight()I

    move-result v1

    iget-object v2, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, mMarginVertical:I

    add-int/2addr v2, v3

    iget v3, p0, mPopupBgPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, mPopupBgPaddingBottom:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 1108
    :cond_2d
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setY(F)V

    .line 1109
    invoke-direct {p0}, setContentAreaAsTouchableSurface()V

    .line 1110
    return-void
.end method

.method private positionOverflowPanel()V
    .registers 5

    .prologue
    .line 1116
    iget-object v1, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-direct {p0}, isRTL()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1119
    iget v1, p0, mMarginHorizontal:I

    int-to-float v0, v1

    .line 1124
    .local v0, "x":F
    :goto_e
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setX(F)V

    .line 1125
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 1126
    invoke-direct {p0}, setContentAreaAsTouchableSurface()V

    .line 1127
    return-void

    .line 1121
    .end local v0    # "x":F
    :cond_1f
    iget-object v1, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget-object v2, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, mMarginHorizontal:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .restart local v0    # "x":F
    goto :goto_e
.end method

.method private preparePopupContent()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1038
    iget-object v0, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    if-eqz v0, :cond_a

    .line 1039
    iget-object v0, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->fadeIn(Z)V

    .line 1041
    :cond_a
    iget-object v0, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    if-eqz v0, :cond_13

    .line 1042
    iget-object v0, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->fadeIn(Z)V

    .line 1046
    :cond_13
    invoke-direct {p0}, isMainPanelContent()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1047
    invoke-direct {p0}, positionMainPanel()V

    .line 1049
    :cond_1c
    invoke-direct {p0}, isOverflowPanelContent()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1050
    invoke-direct {p0}, positionOverflowPanel()V

    .line 1052
    :cond_25
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .registers 22
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 653
    invoke-direct/range {p0 .. p0}, refreshViewPort()V

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v15, v17, v18

    .line 657
    .local v15, "x":I
    move-object/from16 v0, p0

    iget v0, v0, mPopupSideMargin:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, mPopupSideMargin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 661
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v2, v17, v18

    .line 662
    .local v2, "availableHeightAboveContent":I
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    .line 664
    .local v3, "availableHeightBelowContent":I
    move-object/from16 v0, p0

    iget-object v0, v0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    move-object/from16 v17, v0

    if-nez v17, :cond_219

    .line 665
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseSamsungToolbar:Z

    move/from16 v17, v0

    if-eqz v17, :cond_191

    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseNewSamsungToolbar:Z

    move/from16 v17, v0

    if-eqz v17, :cond_191

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getNeedHeightNewPopup()I

    move-result v6

    .line 667
    .local v6, "mNeedHeight":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, updateNewPopup(I)V

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, mPopupBgPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, mPopupBgPaddingBottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mPopupBelowMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-lt v2, v0, :cond_120

    .line 671
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mPopupBelowMargin:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 672
    .local v16, "y":I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    .line 757
    .end local v6    # "mNeedHeight":I
    :goto_c0
    move-object/from16 v0, p0

    iget-object v0, v0, mParent:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpCoords:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, mTmpCoords:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v9, v17, v18

    .line 759
    .local v9, "rootViewLeftOnScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTmpCoords:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v11, v17, v18

    .line 760
    .local v11, "rootViewTopOnScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, mParent:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpCoords:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationInWindow([I)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, mTmpCoords:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v10, v17, v18

    .line 762
    .local v10, "rootViewLeftOnWindow":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTmpCoords:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v12, v17, v18

    .line 763
    .local v12, "rootViewTopOnWindow":I
    sub-int v13, v9, v10

    .line 764
    .local v13, "windowLeftOnScreen":I
    sub-int v14, v11, v12

    .line 765
    .local v14, "windowTopOnScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, mCoordsOnWindow:Landroid/graphics/Point;

    move-object/from16 v17, v0

    sub-int v18, v15, v13

    sub-int v19, v16, v14

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Point;->set(II)V

    .line 766
    return-void

    .line 673
    .end local v9    # "rootViewLeftOnScreen":I
    .end local v10    # "rootViewLeftOnWindow":I
    .end local v11    # "rootViewTopOnScreen":I
    .end local v12    # "rootViewTopOnWindow":I
    .end local v13    # "windowLeftOnScreen":I
    .end local v14    # "windowTopOnScreen":I
    .end local v16    # "y":I
    .restart local v6    # "mNeedHeight":I
    :cond_120
    move-object/from16 v0, p0

    iget v0, v0, mPopupBgPaddingTop:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, mPopupBgPaddingBottom:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mPopupAboveMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-lt v3, v0, :cond_154

    .line 676
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupAboveMargin:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 677
    .restart local v16    # "y":I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    goto/16 :goto_c0

    .line 682
    .end local v16    # "y":I
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mPopupAboveMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mPopupBelowMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, updateNewPopup(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 684
    .restart local v16    # "y":I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    goto/16 :goto_c0

    .line 687
    .end local v6    # "mNeedHeight":I
    .end local v16    # "y":I
    :cond_191
    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mPopupBelowMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-lt v2, v0, :cond_1b7

    .line 689
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, mPopupBelowMargin:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .restart local v16    # "y":I
    goto/16 :goto_c0

    .line 690
    .end local v16    # "y":I
    :cond_1b7
    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, mPopupAboveMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-lt v3, v0, :cond_1d7

    .line 692
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupAboveMargin:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .restart local v16    # "y":I
    goto/16 :goto_c0

    .line 693
    .end local v16    # "y":I
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseSamsungToolbar:Z

    move/from16 v18, v0

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedToolbarHeight(Landroid/content/Context;Z)I
    invoke-static/range {v17 .. v18}, Lcom/android/internal/widget/FloatingToolbar;->access$1700(Landroid/content/Context;Z)I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_1fb

    .line 695
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mMarginVertical:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .restart local v16    # "y":I
    goto/16 :goto_c0

    .line 698
    .end local v16    # "y":I
    :cond_1fb
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v16

    .restart local v16    # "y":I
    goto/16 :goto_c0

    .line 704
    .end local v16    # "y":I
    :cond_219
    move-object/from16 v0, p0

    iget v0, v0, mMarginVertical:I

    move/from16 v17, v0

    mul-int/lit8 v7, v17, 0x2

    .line 705
    .local v7, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getMinimumHeight()I

    move-result v17

    add-int v8, v17, v7

    .line 706
    .local v8, "minimumOverflowHeightWithMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v18

    add-int v4, v17, v18

    .line 708
    .local v4, "availableHeightThroughContentDown":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v18

    add-int v5, v17, v18

    .line 711
    .local v5, "availableHeightThroughContentUp":I
    if-lt v2, v8, :cond_291

    .line 714
    sub-int v17, v2, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, updateOverflowHeight(I)V

    .line 715
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v18

    sub-int v16, v17, v18

    .line 716
    .restart local v16    # "y":I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    .line 747
    :goto_280
    move-object/from16 v0, p0

    iget-object v0, v0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, mOverflowDirection:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setOverflowDirection(I)V

    goto/16 :goto_c0

    .line 717
    .end local v16    # "y":I
    :cond_291
    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v17

    move/from16 v0, v17

    if-lt v2, v0, :cond_2b9

    if-lt v4, v8, :cond_2b9

    .line 722
    sub-int v17, v4, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, updateOverflowHeight(I)V

    .line 723
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v18

    sub-int v16, v17, v18

    .line 724
    .restart local v16    # "y":I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    goto :goto_280

    .line 725
    .end local v16    # "y":I
    :cond_2b9
    if-lt v3, v8, :cond_2d3

    .line 728
    sub-int v17, v3, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, updateOverflowHeight(I)V

    .line 729
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 730
    .restart local v16    # "y":I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    goto :goto_280

    .line 731
    .end local v16    # "y":I
    :cond_2d3
    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_30e

    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    if-lt v0, v8, :cond_30e

    .line 736
    sub-int v17, v5, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, updateOverflowHeight(I)V

    .line 737
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-direct/range {p0 .. p0}, getToolbarHeightWithVerticalMargin()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v18

    sub-int v16, v17, v18

    .line 739
    .restart local v16    # "y":I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    goto/16 :goto_280

    .line 743
    .end local v16    # "y":I
    :cond_30e
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    sub-int v17, v17, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, updateOverflowHeight(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 745
    .restart local v16    # "y":I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mOverflowDirection:I

    goto/16 :goto_280
.end method

.method private refreshViewPort()V
    .registers 3

    .prologue
    .line 1181
    iget-object v0, p0, mParent:Landroid/view/View;

    iget-object v1, p0, mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1182
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, mOrientation:I

    .line 1183
    return-void
.end method

.method private runDismissAnimation()V
    .registers 2

    .prologue
    .line 784
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 785
    iget-object v0, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 787
    return-void
.end method

.method private runHideAnimation()V
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 794
    return-void
.end method

.method private runShowAnimation()V
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, mContentContainer:Landroid/view/ViewGroup;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->access$1800(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 777
    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1218
    iget-object v2, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1219
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 1221
    :cond_e
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 1222
    .local v1, "width":I
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 1223
    .local v0, "height":I
    iget-object v2, p0, mTouchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v1

    iget-object v6, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 1228
    return-void
.end method

.method private setMainPanelAsContent()V
    .registers 5

    .prologue
    .line 1069
    iget-object v2, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1071
    iget-object v2, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measure()Landroid/util/Size;

    move-result-object v0

    .line 1072
    .local v0, "mainPanelSize":Landroid/util/Size;
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1073
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget v3, p0, mPopupBgPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, mPopupBgPaddingRight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1074
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget v3, p0, mPopupBgPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, p0, mPopupBgPaddingTop:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1075
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1077
    invoke-direct {p0}, setContentAreaAsTouchableSurface()V

    .line 1078
    return-void
.end method

.method private setOverflowPanelAsContent()V
    .registers 5

    .prologue
    .line 1085
    iget-object v2, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1087
    iget-object v2, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->measure()Landroid/util/Size;

    move-result-object v0

    .line 1088
    .local v0, "overflowPanelSize":Landroid/util/Size;
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1089
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1090
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1093
    invoke-direct {p0}, setContentAreaAsTouchableSurface()V

    .line 1094
    return-void
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .registers 3

    .prologue
    .line 1236
    iget-object v1, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1239
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1240
    iget-object v1, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1241
    return-void
.end method

.method private setZeroTouchableSurface()V
    .registers 2

    .prologue
    .line 1211
    iget-object v0, p0, mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 1212
    return-void
.end method

.method private updateNewPopup(I)V
    .registers 8
    .param p1, "height"    # I

    .prologue
    .line 1149
    const/4 v1, 0x0

    .line 1150
    .local v1, "mWidth":I
    const/4 v0, 0x0

    .line 1152
    .local v0, "mHeight":I
    iget-object v3, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    iput p1, v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenedPopupHeight:I

    .line 1153
    iget-object v3, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measureSamsung()Landroid/util/Size;

    move-result-object v2

    .line 1155
    .local v2, "mainPanelSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1156
    iget-object v3, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    iget v0, v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenedPopupHeight:I

    .line 1158
    iget-object v3, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, mMarginHorizontal:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    iget v5, p0, mPopupBgPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, mPopupBgPaddingRight:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1159
    iget-object v3, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, mMarginVertical:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iget v5, p0, mPopupBgPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, mPopupBgPaddingBottom:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1160
    return-void
.end method

.method private updateOverflowHeight(I)V
    .registers 5
    .param p1, "height"    # I

    .prologue
    .line 1130
    iget-object v2, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    if-eqz v2, :cond_23

    .line 1131
    iget-object v2, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setSuggestedHeight(I)V

    .line 1134
    invoke-direct {p0}, isMainPanelContent()Z

    move-result v0

    .line 1135
    .local v0, "mainPanelContent":Z
    invoke-direct {p0}, isOverflowPanelContent()Z

    move-result v1

    .line 1136
    .local v1, "overflowPanelContent":Z
    iget-object v2, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1137
    invoke-direct {p0}, updatePopupSize()V

    .line 1139
    if-eqz v0, :cond_1e

    .line 1140
    invoke-direct {p0}, setMainPanelAsContent()V

    .line 1142
    :cond_1e
    if-eqz v1, :cond_23

    .line 1143
    invoke-direct {p0}, setOverflowPanelAsContent()V

    .line 1146
    .end local v0    # "mainPanelContent":Z
    .end local v1    # "overflowPanelContent":Z
    :cond_23
    return-void
.end method

.method private updatePopupSize()V
    .registers 8

    .prologue
    .line 1163
    const/4 v3, 0x0

    .line 1164
    .local v3, "width":I
    const/4 v0, 0x0

    .line 1165
    .local v0, "height":I
    iget-object v4, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    if-eqz v4, :cond_14

    .line 1166
    iget-object v4, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->measure()Landroid/util/Size;

    move-result-object v1

    .line 1167
    .local v1, "mainPanelSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 1168
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1170
    .end local v1    # "mainPanelSize":Landroid/util/Size;
    :cond_14
    iget-object v4, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    if-eqz v4, :cond_2e

    .line 1171
    iget-object v4, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->measure()Landroid/util/Size;

    move-result-object v2

    .line 1172
    .local v2, "overflowPanelSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1173
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1175
    .end local v2    # "overflowPanelSize":Landroid/util/Size;
    :cond_2e
    iget-object v4, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, mMarginHorizontal:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    iget v6, p0, mPopupBgPaddingLeft:I

    add-int/2addr v5, v6

    iget v6, p0, mPopupBgPaddingRight:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1176
    iget-object v4, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, mMarginVertical:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    iget v6, p0, mPopupBgPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, mPopupBgPaddingBottom:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1177
    return-void
.end method

.method private viewOrientationHasChanged(I)Z
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 1191
    iget v0, p0, mOrientation:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private viewPortHasChanged()Z
    .registers 3

    .prologue
    .line 1186
    iget-object v0, p0, mParent:Landroid/view/View;

    iget-object v1, p0, mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1187
    iget-object v0, p0, mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 571
    iget-boolean v0, p0, mDismissed:Z

    if-eqz v0, :cond_5

    .line 580
    :goto_4
    return-void

    .line 575
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, mHidden:Z

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, mDismissed:Z

    .line 577
    iget-object v0, p0, mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 578
    invoke-direct {p0}, runDismissAnimation()V

    .line 579
    invoke-direct {p0}, setZeroTouchableSurface()V

    goto :goto_4
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 649
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 587
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 594
    :goto_6
    return-void

    .line 591
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, mHidden:Z

    .line 592
    invoke-direct {p0}, runHideAnimation()V

    .line 593
    invoke-direct {p0}, setZeroTouchableSurface()V

    goto :goto_6
.end method

.method public isHidden()Z
    .registers 2

    .prologue
    .line 607
    iget-boolean v0, p0, mHidden:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 600
    iget-boolean v0, p0, mDismissed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, mHidden:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .registers 9
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 507
    iget-object v1, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    if-nez v1, :cond_1d

    .line 508
    iget-boolean v1, p0, mUseSamsungToolbar:Z

    if-eqz v1, :cond_51

    .line 509
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mOpenSamsungflow:Ljava/lang/Runnable;

    iget-boolean v4, p0, mUseSamsungToolbar:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    iput-object v1, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .line 514
    :cond_1d
    :goto_1d
    iget-object v1, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-direct {p0, p3}, getToolbarWidth(I)I

    move-result v2

    iget-boolean v3, p0, mUseSamsungToolbar:Z

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v0

    .line 516
    .local v0, "overflowMenuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v1, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 517
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 518
    iget-object v1, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    if-nez v1, :cond_43

    .line 519
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mCloseOverflow:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    .line 522
    :cond_43
    iget-object v1, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setMenuItems(Ljava/util/List;)V

    .line 523
    iget-object v1, p0, mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 525
    :cond_4d
    invoke-direct {p0}, updatePopupSize()V

    .line 526
    return-void

    .line 511
    .end local v0    # "overflowMenuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    :cond_51
    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mOpenOverflow:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, mMainPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    goto :goto_1d
.end method

.method public show(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 533
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 565
    :goto_a
    return-void

    .line 539
    :cond_b
    iput-boolean v5, p0, mHidden:Z

    .line 540
    iput-boolean v5, p0, mDismissed:Z

    .line 541
    invoke-direct {p0}, cancelDismissAndHideAnimations()V

    .line 542
    invoke-direct {p0}, cancelOverflowAnimations()V

    .line 545
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_36

    .line 546
    invoke-direct {p0}, setMainPanelAsContent()V

    .line 549
    iget-boolean v1, p0, mUseSamsungToolbar:Z

    if-eqz v1, :cond_52

    .line 550
    iget-object v1, p0, mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080a12

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 551
    .local v0, "bgRes":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    .end local v0    # "bgRes":Landroid/graphics/drawable/Drawable;
    :cond_36
    :goto_36
    invoke-direct {p0, p1}, refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 557
    invoke-direct {p0}, preparePopupContent()V

    .line 561
    iget-object v1, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, mParent:Landroid/view/View;

    iget-object v3, p0, mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 563
    invoke-direct {p0}, setTouchableSurfaceInsetsComputer()V

    .line 564
    invoke-direct {p0}, runShowAnimation()V

    goto :goto_a

    .line 553
    :cond_52
    iget-object v1, p0, mContentContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_36
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 616
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 629
    :cond_11
    :goto_11
    return-void

    .line 622
    :cond_12
    invoke-direct {p0}, cancelOverflowAnimations()V

    .line 623
    invoke-direct {p0, p1}, refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 624
    invoke-direct {p0}, preparePopupContent()V

    .line 628
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, getWidth()I

    move-result v3

    invoke-virtual {p0}, getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_11
.end method
