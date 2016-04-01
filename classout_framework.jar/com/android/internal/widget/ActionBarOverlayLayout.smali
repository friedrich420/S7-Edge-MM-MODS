.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/android/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/internal/widget/ActionBarOverlayLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private final mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContent:Landroid/view/View;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 146
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$5;

    const-string v1, "actionBarHideOffset"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;-><init>(Ljava/lang/String;)V

    sput-object v0, ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, ATTRS:[I

    return-void

    :array_12
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, mWindowVisibility:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBaseContentInsets:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBaseInnerInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mInnerInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastInnerInsets:Landroid/graphics/Rect;

    .line 84
    const/16 v0, 0x258

    iput v0, p0, ACTION_BAR_ANIMATE_DELAY:I

    .line 91
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 105
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 120
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 167
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, mWindowVisibility:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBaseContentInsets:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBaseInnerInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mInnerInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastInnerInsets:Landroid/graphics/Rect;

    .line 84
    const/16 v0, 0x258

    iput v0, p0, ACTION_BAR_ANIMATE_DELAY:I

    .line 91
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 105
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 120
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 172
    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 50
    iput-object p1, p0, mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, mAnimatingForFling:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 50
    iput-object p1, p0, mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 50
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 50
    iget-object v0, p0, mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 50
    iget-object v0, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 50
    iget-object v0, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 50
    iget-object v0, p0, mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method private addActionBarHideOffset()V
    .registers 2

    .prologue
    .line 651
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 652
    iget-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 653
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 291
    .local v1, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_14

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_14

    .line 292
    const/4 v0, 0x1

    .line 293
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 295
    :cond_14
    if-eqz p4, :cond_21

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_21

    .line 296
    const/4 v0, 0x1

    .line 297
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 299
    :cond_21
    if-eqz p6, :cond_2e

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2e

    .line 300
    const/4 v0, 0x1

    .line 301
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 303
    :cond_2e
    if-eqz p5, :cond_3b

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3b

    .line 304
    const/4 v0, 0x1

    .line 305
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 307
    :cond_3b
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 582
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_7

    .line 583
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .line 585
    .end local p1    # "view":Landroid/view/View;
    :goto_6
    return-object p1

    .line 584
    .restart local p1    # "view":Landroid/view/View;
    :cond_7
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_12

    .line 585
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_6

    .line 587
    .restart local p1    # "view":Landroid/view/View;
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haltActionBarHideOffsetAnimations()V
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 626
    iget-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 627
    iget-object v0, p0, mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_13

    .line 628
    iget-object v0, p0, mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 630
    :cond_13
    iget-object v0, p0, mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1c

    .line 631
    iget-object v0, p0, mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 633
    :cond_1c
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, mActionBarHeight:I

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v1, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3b

    move v1, v2

    :goto_21
    invoke-virtual {p0, v1}, setWillNotDraw(Z)V

    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_3d

    :goto_31
    iput-boolean v2, p0, mIgnoreWindowContentOverlay:Z

    .line 185
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mFlingEstimator:Landroid/widget/OverScroller;

    .line 186
    return-void

    :cond_3b
    move v1, v3

    .line 179
    goto :goto_21

    :cond_3d
    move v2, v3

    .line 182
    goto :goto_31
.end method

.method private postAddActionBarHideOffset()V
    .registers 5

    .prologue
    .line 641
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 642
    iget-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .registers 5

    .prologue
    .line 636
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 637
    iget-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    return-void
.end method

.method private removeActionBarHideOffset()V
    .registers 2

    .prologue
    .line 646
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 647
    iget-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 648
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .registers 13
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 657
    iget-object v0, p0, mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v9

    .line 658
    .local v9, "finalY":I
    iget-object v0, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .registers 2

    .prologue
    .line 755
    invoke-virtual {p0}, pullChildren()V

    .line 756
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 359
    instance-of v0, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .registers 2

    .prologue
    .line 809
    invoke-virtual {p0}, pullChildren()V

    .line 810
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 811
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 501
    iget-object v2, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3b

    iget-boolean v2, p0, mIgnoreWindowContentOverlay:Z

    if-nez v2, :cond_3b

    .line 502
    iget-object v2, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 504
    .local v0, "top":I
    :goto_26
    iget-object v2, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getWidth()I

    move-result v3

    iget-object v4, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 506
    iget-object v1, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    .end local v0    # "top":I
    :cond_3b
    return-void

    :cond_3c
    move v0, v1

    .line 502
    goto :goto_26
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 344
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 354
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 349
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_d

    iget-object v0, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 675
    invoke-virtual {p0}, pullChildren()V

    .line 676
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .registers 2

    .prologue
    .line 725
    invoke-virtual {p0}, pullChildren()V

    .line 726
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .registers 2

    .prologue
    .line 731
    invoke-virtual {p0}, pullChildren()V

    .line 732
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .prologue
    .line 779
    invoke-virtual {p0}, pullChildren()V

    .line 780
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .registers 3
    .param p1, "windowFeature"    # I

    .prologue
    .line 681
    invoke-virtual {p0}, pullChildren()V

    .line 682
    sparse-switch p1, :sswitch_data_18

    .line 693
    :goto_6
    return-void

    .line 684
    :sswitch_7
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initProgress()V

    goto :goto_6

    .line 687
    :sswitch_d
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_6

    .line 690
    :sswitch_13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setOverlayMode(Z)V

    goto :goto_6

    .line 682
    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_7
        0x5 -> :sswitch_d
        0x9 -> :sswitch_13
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .registers 2

    .prologue
    .line 604
    iget-boolean v0, p0, mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .prologue
    .line 767
    invoke-virtual {p0}, pullChildren()V

    .line 768
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 761
    invoke-virtual {p0}, pullChildren()V

    .line 762
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 12
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 312
    invoke-virtual {p0}, pullChildren()V

    .line 314
    invoke-virtual {p0}, getWindowSystemUiVisibility()I

    move-result v9

    .line 315
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_51

    const/4 v8, 0x1

    .line 316
    .local v8, "stable":Z
    :goto_c
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 319
    .local v2, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    .line 320
    .local v7, "changed":Z
    iget-object v0, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_2b

    .line 321
    iget-object v1, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 324
    :cond_2b
    iget-object v0, p0, mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    iget-object v0, p0, mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 326
    iget-object v0, p0, mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 327
    const/4 v7, 0x1

    .line 328
    iget-object v0, p0, mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    :cond_49
    if-eqz v7, :cond_4e

    .line 332
    invoke-virtual {p0}, requestLayout()V

    .line 339
    :cond_4e
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v0

    .line 315
    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_51
    const/4 v8, 0x0

    goto :goto_c
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, init(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, requestApplyInsets()V

    .line 253
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 191
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 192
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 20
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 469
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 471
    .local v3, "count":I
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v8

    .line 472
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 474
    .local v9, "parentRight":I
    invoke-virtual {p0}, getPaddingTop()I

    move-result v10

    .line 475
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 477
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    if-ge v5, v3, :cond_56

    .line 478
    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4e

    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 482
    .local v6, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 483
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 485
    .local v4, "height":I
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 487
    .local v1, "childLeft":I
    iget-object v12, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-ne v0, v12, :cond_51

    .line 488
    sub-int v12, v7, v4

    iget v13, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v12, v13

    .line 493
    .local v2, "childTop":I
    :goto_47
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 477
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 490
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_51
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .restart local v2    # "childTop":I
    goto :goto_47

    .line 496
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_56
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, pullChildren()V

    .line 366
    const/4 v11, 0x0

    .line 367
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 368
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 370
    .local v9, "childState":I
    const/4 v15, 0x0

    .line 371
    .local v15, "topInset":I
    const/4 v8, 0x0

    .line 373
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 375
    .local v10, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, combineMeasuredStates(II)I

    move-result v9

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_a0

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 385
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, combineMeasuredStates(II)I

    move-result v9

    .line 392
    :cond_a0
    invoke-virtual/range {p0 .. p0}, getWindowSystemUiVisibility()I

    move-result v16

    .line 393
    .local v16, "vis":I
    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1c7

    const/4 v13, 0x1

    .line 395
    .local v13, "stable":Z
    :goto_ab
    if-eqz v13, :cond_1ca

    .line 398
    move-object/from16 v0, p0

    iget v15, v0, mActionBarHeight:I

    .line 399
    move-object/from16 v0, p0

    iget-boolean v1, v0, mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_c6

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v14

    .line 401
    .local v14, "tabs":Landroid/view/View;
    if-eqz v14, :cond_c6

    .line 403
    move-object/from16 v0, p0

    iget v1, v0, mActionBarHeight:I

    add-int/2addr v15, v1

    .line 412
    .end local v14    # "tabs":Landroid/view/View;
    :cond_c6
    :goto_c6
    move-object/from16 v0, p0

    iget-object v1, v0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_dc

    .line 415
    if-eqz v13, :cond_1e0

    .line 416
    move-object/from16 v0, p0

    iget v8, v0, mActionBarHeight:I

    .line 427
    :cond_dc
    :goto_dc
    move-object/from16 v0, p0

    iget-object v1, v0, mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 429
    move-object/from16 v0, p0

    iget-boolean v1, v0, mOverlayMode:Z

    if-nez v1, :cond_1ea

    if-nez v13, :cond_1ea

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 436
    :goto_10c
    move-object/from16 v0, p0

    iget-object v2, v0, mContent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_146

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, mContent:Landroid/view/View;

    new-instance v2, Landroid/view/WindowInsets;

    move-object/from16 v0, p0

    iget-object v3, v0, mInnerInsets:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 446
    :cond_146
    move-object/from16 v0, p0

    iget-object v2, v0, mContent:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 448
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, combineMeasuredStates(II)I

    move-result v9

    .line 455
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 456
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 459
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 460
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 462
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    move/from16 v0, p2

    invoke-static {v11, v0, v2}, resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, setMeasuredDimension(II)V

    .line 465
    return-void

    .line 393
    .end local v13    # "stable":Z
    :cond_1c7
    const/4 v13, 0x0

    goto/16 :goto_ab

    .line 406
    .restart local v13    # "stable":Z
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_c6

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_c6

    .line 418
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v1, v0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v8

    goto/16 :goto_dc

    .line 433
    :cond_1ea
    move-object/from16 v0, p0

    iget-object v1, v0, mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10c
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v0, 0x1

    .line 557
    iget-boolean v1, p0, mHideOnContentScroll:Z

    if-eqz v1, :cond_7

    if-nez p4, :cond_9

    .line 558
    :cond_7
    const/4 v0, 0x0

    .line 566
    :goto_8
    return v0

    .line 560
    :cond_9
    invoke-direct {p0, p2, p3}, shouldHideActionBarOnFling(FF)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 561
    invoke-direct {p0}, addActionBarHideOffset()V

    .line 565
    :goto_12
    iput-boolean v0, p0, mAnimatingForFling:Z

    goto :goto_8

    .line 563
    :cond_15
    invoke-direct {p0}, removeActionBarHideOffset()V

    goto :goto_12
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 536
    iget v0, p0, mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, mHideOnContentScrollReference:I

    .line 537
    iget v0, p0, mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, setActionBarHideOffset(I)V

    .line 538
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 525
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 526
    invoke-virtual {p0}, getActionBarHideOffset()I

    move-result v0

    iput v0, p0, mHideOnContentScrollReference:I

    .line 527
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 528
    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_15

    .line 529
    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 531
    :cond_15
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 517
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_c

    iget-object v0, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 518
    :cond_c
    const/4 v0, 0x0

    .line 520
    :goto_d
    return v0

    :cond_e
    iget-boolean v0, p0, mHideOnContentScroll:Z

    goto :goto_d
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 543
    iget-boolean v0, p0, mHideOnContentScroll:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, mAnimatingForFling:Z

    if-nez v0, :cond_18

    .line 544
    iget v0, p0, mHideOnContentScrollReference:I

    iget-object v1, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_22

    .line 545
    invoke-direct {p0}, postRemoveActionBarHideOffset()V

    .line 550
    :cond_18
    :goto_18
    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_21

    .line 551
    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 553
    :cond_21
    return-void

    .line 547
    :cond_22
    invoke-direct {p0}, postAddActionBarHideOffset()V

    goto :goto_18
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 8
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 258
    invoke-virtual {p0}, pullChildren()V

    .line 259
    iget v5, p0, mLastSystemUiVisibility:I

    xor-int v1, v5, p1

    .line 260
    .local v1, "diff":I
    iput p1, p0, mLastSystemUiVisibility:I

    .line 261
    and-int/lit8 v5, p1, 0x4

    if-nez v5, :cond_38

    move v0, v3

    .line 262
    .local v0, "barVisible":Z
    :goto_13
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_3a

    move v2, v3

    .line 263
    .local v2, "stable":Z
    :goto_18
    iget-object v5, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_2c

    .line 267
    iget-object v5, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-nez v2, :cond_3c

    :goto_20
    invoke-interface {v5, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 268
    if-nez v0, :cond_27

    if-nez v2, :cond_3e

    :cond_27
    iget-object v3, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 271
    :cond_2c
    :goto_2c
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_37

    .line 272
    iget-object v3, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_37

    .line 273
    invoke-virtual {p0}, requestApplyInsets()V

    .line 276
    :cond_37
    return-void

    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_38
    move v0, v4

    .line 261
    goto :goto_13

    .restart local v0    # "barVisible":Z
    :cond_3a
    move v2, v4

    .line 262
    goto :goto_18

    .restart local v2    # "stable":Z
    :cond_3c
    move v3, v4

    .line 267
    goto :goto_20

    .line 269
    :cond_3e
    iget-object v3, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_2c
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 281
    iput p1, p0, mWindowVisibility:I

    .line 282
    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_e

    .line 283
    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 285
    :cond_e
    return-void
.end method

.method pullChildren()V
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, mContent:Landroid/view/View;

    if-nez v0, :cond_36

    .line 571
    const v0, 0x1020002

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mContent:Landroid/view/View;

    .line 572
    const v0, 0x102046f

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 574
    iget-object v0, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setTouchscreenBlocksFocus(Z)V

    .line 575
    const v0, 0x1020470

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 576
    const v0, 0x1020472

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 579
    :cond_36
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, pullChildren()V

    .line 804
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 805
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, pullChildren()V

    .line 798
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 799
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .registers 7
    .param p1, "offset"    # I

    .prologue
    .line 612
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 613
    iget-object v3, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    .line 614
    .local v2, "topHeight":I
    const/4 v3, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 615
    iget-object v3, p0, mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    neg-int v4, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 616
    iget-object v3, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_3a

    iget-object v3, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3a

    .line 618
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 619
    .local v1, "fOffset":F
    iget-object v3, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 620
    .local v0, "bOffset":I
    iget-object v3, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 622
    .end local v0    # "bOffset":I
    .end local v1    # "fOffset":F
    :cond_3a
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .registers 5
    .param p1, "cb"    # Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 195
    iput-object p1, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 196
    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 199
    iget-object v1, p0, mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, mWindowVisibility:I

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 200
    iget v1, p0, mLastSystemUiVisibility:I

    if-eqz v1, :cond_1b

    .line 201
    iget v0, p0, mLastSystemUiVisibility:I

    .line 202
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, onWindowSystemUiVisibilityChanged(I)V

    .line 203
    invoke-virtual {p0}, requestApplyInsets()V

    .line 206
    .end local v0    # "newVis":I
    :cond_1b
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .registers 2
    .param p1, "hasNonEmbeddedTabs"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, mHasNonEmbeddedTabs:Z

    .line 226
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 3
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 593
    iget-boolean v0, p0, mHideOnContentScroll:Z

    if-eq p1, v0, :cond_12

    .line 594
    iput-boolean p1, p0, mHideOnContentScroll:Z

    .line 595
    if-nez p1, :cond_12

    .line 596
    invoke-virtual {p0}, stopNestedScroll()V

    .line 597
    invoke-direct {p0}, haltActionBarHideOffsetAnimations()V

    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setActionBarHideOffset(I)V

    .line 601
    :cond_12
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 737
    invoke-virtual {p0}, pullChildren()V

    .line 738
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 739
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 743
    invoke-virtual {p0}, pullChildren()V

    .line 744
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 745
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 749
    invoke-virtual {p0}, pullChildren()V

    .line 750
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 751
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 791
    invoke-virtual {p0}, pullChildren()V

    .line 792
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 793
    return-void
.end method

.method public setMenuPrepared()V
    .registers 2

    .prologue
    .line 785
    invoke-virtual {p0}, pullChildren()V

    .line 786
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 787
    return-void
.end method

.method public setOverlayMode(Z)V
    .registers 4
    .param p1, "overlayMode"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, mOverlayMode:Z

    .line 215
    if-eqz p1, :cond_16

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, mIgnoreWindowContentOverlay:Z

    .line 218
    return-void

    .line 215
    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setShowingForActionMode(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_11

    .line 238
    invoke-virtual {p0}, getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    const/16 v1, 0x500

    if-ne v0, v1, :cond_10

    .line 241
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, setDisabledSystemUiVisibility(I)V

    .line 246
    :cond_10
    :goto_10
    return-void

    .line 244
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setDisabledSystemUiVisibility(I)V

    goto :goto_10
.end method

.method public setUiOptions(I)V
    .registers 7
    .param p1, "uiOptions"    # I

    .prologue
    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, "splitActionBar":Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_4e

    const/4 v2, 0x1

    .line 700
    .local v2, "splitWhenNarrow":Z
    :goto_6
    if-eqz v2, :cond_17

    .line 701
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 704
    :cond_17
    if-eqz v1, :cond_4d

    .line 705
    invoke-virtual {p0}, pullChildren()V

    .line 706
    iget-object v3, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_50

    iget-object v3, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 707
    iget-object v3, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v4, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 708
    iget-object v3, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 709
    iget-object v3, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 711
    const v3, 0x1020471

    invoke-virtual {p0, v3}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    .line 713
    .local v0, "cab":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v3, p0, mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 714
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 715
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 721
    .end local v0    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    :cond_4d
    :goto_4d
    return-void

    .line 698
    .end local v2    # "splitWhenNarrow":Z
    :cond_4e
    const/4 v2, 0x0

    goto :goto_6

    .line 716
    .restart local v2    # "splitWhenNarrow":Z
    :cond_50
    if-eqz v1, :cond_4d

    .line 717
    const-string v3, "ActionBarOverlayLayout"

    const-string v4, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .registers 3
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 663
    invoke-virtual {p0}, pullChildren()V

    .line 664
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 665
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 669
    invoke-virtual {p0}, pullChildren()V

    .line 670
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 671
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 2

    .prologue
    .line 773
    invoke-virtual {p0}, pullChildren()V

    .line 774
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
