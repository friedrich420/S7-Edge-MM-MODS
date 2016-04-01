.class public Lcom/android/internal/app/WindowDecorActionBar;
.super Landroid/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/WindowDecorActionBar$TabImpl;,
        Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final mIsMRProject:Z


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    const-class v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_b
    sput-boolean v0, $assertionsDisabled:Z

    .line 136
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "americano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mocha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    move v2, v1

    :cond_2d
    sput-boolean v2, mIsMRProject:Z

    return-void

    :cond_30
    move v0, v2

    .line 76
    goto :goto_b
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 176
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mTabs:Ljava/util/ArrayList;

    .line 96
    const/4 v3, -0x1

    iput v3, p0, mSavedTabPosition:I

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    const/4 v3, 0x0

    iput v3, p0, mCurWindowVisibility:I

    .line 122
    iput-boolean v4, p0, mContentAnimations:Z

    .line 127
    iput-boolean v4, p0, mNowShowing:Z

    .line 139
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 167
    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 177
    iput-object p1, p0, mActivity:Landroid/app/Activity;

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 179
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "decor":Landroid/view/View;
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    .line 181
    .local v1, "overlayMode":Z
    invoke-direct {p0, v0}, init(Landroid/view/View;)V

    .line 182
    if-nez v1, :cond_55

    .line 183
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, mContentView:Landroid/view/View;

    .line 185
    :cond_55
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 4
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    .line 187
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTabs:Ljava/util/ArrayList;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, mSavedTabPosition:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, mCurWindowVisibility:I

    .line 122
    iput-boolean v1, p0, mContentAnimations:Z

    .line 127
    iput-boolean v1, p0, mNowShowing:Z

    .line 139
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 167
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 188
    iput-object p1, p0, mDialog:Landroid/app/Dialog;

    .line 189
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, init(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTabs:Ljava/util/ArrayList;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, mSavedTabPosition:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, mCurWindowVisibility:I

    .line 122
    iput-boolean v1, p0, mContentAnimations:Z

    .line 127
    iput-boolean v1, p0, mNowShowing:Z

    .line 139
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 159
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 167
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 197
    sget-boolean v0, $assertionsDisabled:Z

    if-nez v0, :cond_41

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_41
    invoke-direct {p0, p1}, init(Landroid/view/View;)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-boolean v0, p0, mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/WindowDecorActionBar;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget v0, p0, mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 76
    iput-object p1, p0, mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-boolean v0, p0, mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/WindowDecorActionBar;

    .prologue
    .line 76
    iget-boolean v0, p0, mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .registers 4
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-static {p0, p1, p2}, checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .registers 4
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 753
    if-eqz p2, :cond_4

    .line 758
    :cond_3
    :goto_3
    return v0

    .line 755
    :cond_4
    if-nez p0, :cond_8

    if-eqz p1, :cond_3

    .line 756
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private cleanupTabs()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_8

    .line 446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, selectTab(Landroid/app/ActionBar$Tab;)V

    .line 448
    :cond_8
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 449
    iget-object v0, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_16

    .line 450
    iget-object v0, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 452
    :cond_16
    const/4 v0, -0x1

    iput v0, p0, mSavedTabPosition:I

    .line 453
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .registers 9
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 546
    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 547
    .local v3, "tabi":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    invoke-virtual {v3}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 549
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_11

    .line 550
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 553
    :cond_11
    invoke-virtual {v3, p2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 554
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 556
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 557
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_21
    if-ge v2, v1, :cond_31

    .line 558
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 560
    :cond_31
    return-void
.end method

.method private ensureTabsExist()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_6

    .line 332
    :goto_5
    return-void

    .line 315
    :cond_6
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, "tabScroller":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1c

    .line 318
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 319
    iget-object v1, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 331
    :goto_19
    iput-object v0, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    goto :goto_5

    .line 321
    :cond_1c
    invoke-virtual {p0}, getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 322
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 323
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2f

    .line 324
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 329
    :cond_2f
    :goto_2f
    iget-object v1, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_19

    .line 327
    :cond_35
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2f
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 249
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_7

    .line 250
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .line 252
    .end local p1    # "view":Landroid/view/View;
    :goto_6
    return-object p1

    .line 251
    .restart local p1    # "view":Landroid/view/View;
    :cond_7
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_12

    .line 252
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object p1

    goto :goto_6

    .line 254
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

.method private hideForActionMode()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-boolean v0, p0, mShowingForMode:Z

    if-eqz v0, :cond_13

    .line 707
    iput-boolean v1, p0, mShowingForMode:Z

    .line 708
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_10

    .line 709
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 711
    :cond_10
    invoke-direct {p0, v1}, updateVisibility(Z)V

    .line 713
    :cond_13
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 13
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 202
    const v5, 0x102046e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v5, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 204
    iget-object v5, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_16

    .line 205
    iget-object v5, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 207
    :cond_16
    const v5, 0x1020470

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v5

    iput-object v5, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 208
    const v5, 0x1020471

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v5, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 210
    const v5, 0x102046f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 212
    const v5, 0x1020472

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 215
    iget-object v5, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v5, :cond_50

    iget-object v5, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_50

    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v5, :cond_78

    .line 216
    :cond_50
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 220
    :cond_78
    iget-object v5, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, mContext:Landroid/content/Context;

    .line 221
    iget-object v5, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_da

    move v5, v6

    :goto_89
    iput v5, p0, mContextDisplayMode:I

    .line 225
    iget-object v5, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v2

    .line 226
    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_dc

    move v4, v6

    .line 227
    .local v4, "homeAsUp":Z
    :goto_96
    if-eqz v4, :cond_9a

    .line 228
    iput-boolean v6, p0, mDisplayHomeAsUpSet:Z

    .line 231
    :cond_9a
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 232
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_a8

    if-eqz v4, :cond_de

    :cond_a8
    move v5, v6

    :goto_a9
    invoke-virtual {p0, v5}, setHomeButtonEnabled(Z)V

    .line 233
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, setHasEmbeddedTabs(Z)V

    .line 235
    iget-object v5, p0, mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v10, 0x10102ce

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x15

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 239
    invoke-virtual {p0, v6}, setHideOnContentScrollEnabled(Z)V

    .line 241
    :cond_ca
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 242
    .local v3, "elevation":I
    if-eqz v3, :cond_d6

    .line 243
    int-to-float v5, v3

    invoke-virtual {p0, v5}, setElevation(F)V

    .line 245
    :cond_d6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_da
    move v5, v7

    .line 221
    goto :goto_89

    .restart local v2    # "current":I
    :cond_dc
    move v4, v7

    .line 226
    goto :goto_96

    .restart local v1    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .restart local v4    # "homeAsUp":Z
    :cond_de
    move v5, v7

    .line 232
    goto :goto_a9
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 7
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_11

    .line 279
    iget-object v3, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->checkNoEmbeddedTabs()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 280
    iput-boolean v2, p0, mHasEmbeddedTabs:Z

    .line 288
    :cond_11
    :goto_11
    iget-boolean v3, p0, mHasEmbeddedTabs:Z

    if-nez v3, :cond_58

    .line 289
    iget-object v3, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 290
    iget-object v3, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v4, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 295
    :goto_21
    invoke-virtual {p0}, getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_65

    move v0, v1

    .line 296
    .local v0, "isInTabMode":Z
    :goto_29
    iget-object v3, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_3d

    .line 297
    if-eqz v0, :cond_67

    .line 298
    iget-object v3, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 299
    iget-object v3, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_3d

    .line 300
    iget-object v3, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 306
    :cond_3d
    :goto_3d
    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-boolean v3, p0, mHasEmbeddedTabs:Z

    if-nez v3, :cond_6f

    if-eqz v0, :cond_6f

    move v3, v1

    :goto_46
    invoke-interface {v4, v3}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 307
    iget-object v3, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, mHasEmbeddedTabs:Z

    if-nez v4, :cond_71

    if-eqz v0, :cond_71

    :goto_51
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 308
    return-void

    .line 282
    .end local v0    # "isInTabMode":Z
    :cond_55
    iput-boolean p1, p0, mHasEmbeddedTabs:Z

    goto :goto_11

    .line 292
    :cond_58
    iget-object v3, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 293
    iget-object v3, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v4, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_21

    :cond_65
    move v0, v2

    .line 295
    goto :goto_29

    .line 303
    .restart local v0    # "isInTabMode":Z
    :cond_67
    iget-object v3, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_3d

    :cond_6f
    move v3, v2

    .line 306
    goto :goto_46

    :cond_71
    move v1, v2

    .line 307
    goto :goto_51
.end method

.method private showForActionMode()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 681
    iget-boolean v0, p0, mShowingForMode:Z

    if-nez v0, :cond_14

    .line 682
    iput-boolean v1, p0, mShowingForMode:Z

    .line 683
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_10

    .line 684
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 686
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateVisibility(Z)V

    .line 688
    :cond_14
    return-void
.end method

.method private updateVisibility(Z)V
    .registers 6
    .param p1, "fromSystem"    # Z

    .prologue
    .line 764
    iget-boolean v1, p0, mHiddenByApp:Z

    iget-boolean v2, p0, mHiddenBySystem:Z

    iget-boolean v3, p0, mShowingForMode:Z

    invoke-static {v1, v2, v3}, checkShowingFlags(ZZZ)Z

    move-result v0

    .line 767
    .local v0, "shown":Z
    if-eqz v0, :cond_17

    .line 768
    iget-boolean v1, p0, mNowShowing:Z

    if-nez v1, :cond_16

    .line 769
    const/4 v1, 0x1

    iput-boolean v1, p0, mNowShowing:Z

    .line 770
    invoke-virtual {p0, p1}, doShow(Z)V

    .line 778
    :cond_16
    :goto_16
    return-void

    .line 773
    :cond_17
    iget-boolean v1, p0, mNowShowing:Z

    if-eqz v1, :cond_16

    .line 774
    const/4 v1, 0x0

    iput-boolean v1, p0, mNowShowing:Z

    .line 775
    invoke-virtual {p0, p1}, doHide(Z)V

    goto :goto_16
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 361
    iget-object v0, p0, mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .registers 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 564
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 565
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .registers 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 569
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 570
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 5
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 584
    invoke-direct {p0}, ensureTabsExist()V

    .line 585
    iget-object v0, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 586
    invoke-direct {p0, p1, p2}, configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 587
    if-eqz p3, :cond_10

    .line 588
    invoke-virtual {p0, p1}, selectTab(Landroid/app/ActionBar$Tab;)V

    .line 590
    :cond_10
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 574
    invoke-direct {p0}, ensureTabsExist()V

    .line 575
    iget-object v0, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 576
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 577
    if-eqz p2, :cond_16

    .line 578
    invoke-virtual {p0, p1}, selectTab(Landroid/app/ActionBar$Tab;)V

    .line 580
    :cond_16
    return-void
.end method

.method animateToMode(Z)V
    .registers 12
    .param p1, "toActionMode"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 886
    if-eqz p1, :cond_59

    .line 887
    invoke-direct {p0}, showForActionMode()V

    .line 894
    :goto_c
    sget-boolean v4, mIsMRProject:Z

    if-eqz v4, :cond_69

    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    instance-of v4, v4, Lcom/android/internal/widget/ActionBarView;

    if-eqz v4, :cond_69

    iget-object v4, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_69

    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorToolbar;->hasEmbeddedTabs()Z

    move-result v4

    if-nez v4, :cond_69

    .line 895
    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v4, Lcom/android/internal/widget/ActionBarView;

    if-eqz p1, :cond_5d

    move v5, v6

    :goto_29
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarView;->setVisibility(I)V

    .line 896
    iget-object v5, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_5f

    move v4, v7

    :goto_31
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 897
    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    check-cast v4, Lcom/android/internal/widget/ActionBarView;

    if-eqz p1, :cond_61

    move v5, v8

    :goto_3b
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarView;->setAlpha(F)V

    .line 898
    iget-object v4, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_63

    :goto_42
    invoke-virtual {v4, v9}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    .line 899
    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_65

    .line 900
    .local v3, "showTitle":Z
    :goto_4f
    if-nez v3, :cond_58

    .line 901
    iget-object v4, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_67

    :goto_55
    invoke-virtual {v4, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 923
    .end local v3    # "showTitle":Z
    :cond_58
    :goto_58
    return-void

    .line 889
    :cond_59
    invoke-direct {p0}, hideForActionMode()V

    goto :goto_c

    :cond_5d
    move v5, v7

    .line 895
    goto :goto_29

    :cond_5f
    move v4, v6

    .line 896
    goto :goto_31

    :cond_61
    move v5, v9

    .line 897
    goto :goto_3b

    :cond_63
    move v9, v8

    .line 898
    goto :goto_42

    :cond_65
    move v3, v7

    .line 899
    goto :goto_4f

    .restart local v3    # "showTitle":Z
    :cond_67
    move v6, v7

    .line 901
    goto :goto_55

    .line 908
    .end local v3    # "showTitle":Z
    :cond_69
    if-eqz p1, :cond_8e

    .line 909
    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const-wide/16 v8, 0x64

    invoke-interface {v4, v6, v8, v9}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    .line 911
    .local v1, "fadeOut":Landroid/animation/Animator;
    iget-object v4, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 919
    .local v0, "fadeIn":Landroid/animation/Animator;
    :goto_7b
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 920
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v7

    aput-object v0, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 921
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_58

    .line 914
    .end local v0    # "fadeIn":Landroid/animation/Animator;
    .end local v1    # "fadeOut":Landroid/animation/Animator;
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :cond_8e
    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const-wide/16 v8, 0xc8

    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 916
    .restart local v0    # "fadeIn":Landroid/animation/Animator;
    iget-object v4, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v6, v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "fadeOut":Landroid/animation/Animator;
    goto :goto_7b
.end method

.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 981
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_13

    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 982
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    .line 983
    const/4 v0, 0x1

    .line 985
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method completeDeferredDestroyActionMode()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_10

    .line 336
    iget-object v0, p0, mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 337
    iput-object v2, p0, mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 338
    iput-object v2, p0, mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 340
    :cond_10
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .registers 5
    .param p1, "isVisible"    # Z

    .prologue
    .line 369
    iget-boolean v2, p0, mLastMenuVisibility:Z

    if-ne p1, v2, :cond_5

    .line 378
    :cond_4
    return-void

    .line 372
    :cond_5
    iput-boolean p1, p0, mLastMenuVisibility:Z

    .line 374
    iget-object v2, p0, mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 375
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_4

    .line 376
    iget-object v2, p0, mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public doHide(Z)V
    .registers 14
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 841
    iget-object v5, p0, mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_e

    .line 842
    iget-object v5, p0, mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 845
    :cond_e
    iget v5, p0, mCurWindowVisibility:I

    if-nez v5, :cond_b1

    iget-boolean v5, p0, mShowHideAnimationEnabled:Z

    if-nez v5, :cond_18

    if-eqz p1, :cond_b1

    .line 847
    :cond_18
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 848
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 849
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 850
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 851
    .local v3, "endingY":F
    if-eqz p1, :cond_3f

    .line 852
    new-array v4, v8, [I

    fill-array-data v4, :array_b8

    .line 853
    .local v4, "topLeft":[I
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 854
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 856
    .end local v4    # "topLeft":[I
    :cond_3f
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 857
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 858
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 859
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, mContentAnimations:Z

    if-eqz v5, :cond_6e

    iget-object v5, p0, mContentView:Landroid/view/View;

    if-eqz v5, :cond_6e

    .line 860
    iget-object v5, p0, mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 863
    :cond_6e
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_95

    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_95

    .line 864
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 865
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    iget-object v8, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 868
    :cond_95
    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x10c0002

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 870
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 871
    iget-object v5, p0, mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 872
    iput-object v1, p0, mCurrentShowAnim:Landroid/animation/Animator;

    .line 873
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 877
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_b0
    return-void

    .line 875
    :cond_b1
    iget-object v5, p0, mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_b0

    .line 852
    :array_b8
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .registers 14
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 781
    iget-object v5, p0, mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_f

    .line 782
    iget-object v5, p0, mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 784
    :cond_f
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 786
    iget v5, p0, mCurWindowVisibility:I

    if-nez v5, :cond_c2

    iget-boolean v5, p0, mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1e

    if-eqz p1, :cond_c2

    .line 788
    :cond_1e
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 789
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getContainerHeight()I

    move-result v5

    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v3, v5

    .line 790
    .local v3, "startingY":F
    if-eqz p1, :cond_3d

    .line 791
    new-array v4, v11, [I

    fill-array-data v4, :array_f8

    .line 792
    .local v4, "topLeft":[I
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 793
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 795
    .end local v4    # "topLeft":[I
    :cond_3d
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 796
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 797
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 798
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 799
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 800
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, mContentAnimations:Z

    if-eqz v5, :cond_75

    iget-object v5, p0, mContentView:Landroid/view/View;

    if-eqz v5, :cond_75

    .line 801
    iget-object v5, p0, mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v3, v7, v9

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 804
    :cond_75
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_9d

    iget v5, p0, mContextDisplayMode:I

    if-ne v5, v10, :cond_9d

    .line 805
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 806
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 807
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 809
    :cond_9d
    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x10c0003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 811
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 819
    iget-object v5, p0, mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 820
    iput-object v1, p0, mCurrentShowAnim:Landroid/animation/Animator;

    .line 821
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 835
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_b8
    iget-object v5, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_c1

    .line 836
    iget-object v5, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 838
    :cond_c1
    return-void

    .line 823
    :cond_c2
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 824
    iget-object v5, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 825
    iget-boolean v5, p0, mContentAnimations:Z

    if-eqz v5, :cond_d9

    iget-object v5, p0, mContentView:Landroid/view/View;

    if-eqz v5, :cond_d9

    .line 826
    iget-object v5, p0, mContentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 828
    :cond_d9
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_f0

    iget v5, p0, mContextDisplayMode:I

    if-ne v5, v10, :cond_f0

    .line 829
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 830
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 831
    iget-object v5, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 833
    :cond_f0
    iget-object v5, p0, mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_b8

    .line 791
    nop

    :array_f8
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, mContentAnimations:Z

    .line 670
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .registers 2

    .prologue
    .line 1321
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 1327
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 1323
    :pswitch_b
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    .line 1325
    :pswitch_12
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    goto :goto_a

    .line 1321
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public getNavigationMode()I
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 1309
    iget-object v1, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 1315
    :cond_a
    :goto_a
    return v0

    .line 1311
    :pswitch_b
    iget-object v1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_a

    iget-object v0, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_a

    .line 1313
    :pswitch_16
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_a

    .line 1309
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_b
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1368
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 1333
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 6

    .prologue
    .line 926
    iget-object v3, p0, mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_2b

    .line 927
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 928
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 929
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 931
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 933
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_2e

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_2e

    .line 934
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, mThemedContext:Landroid/content/Context;

    .line 939
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_2b
    :goto_2b
    iget-object v3, p0, mThemedContext:Landroid/content/Context;

    return-object v3

    .line 936
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_2e
    iget-object v3, p0, mContext:Landroid/content/Context;

    iput-object v3, p0, mThemedContext:Landroid/content/Context;

    goto :goto_2b
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .registers 2

    .prologue
    .line 1383
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .registers 2

    .prologue
    .line 1397
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, mHiddenByApp:Z

    if-nez v0, :cond_b

    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, mHiddenByApp:Z

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, v0}, updateVisibility(Z)V

    .line 703
    :cond_b
    return-void
.end method

.method public hideForSystem()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 716
    iget-boolean v0, p0, mHiddenBySystem:Z

    if-nez v0, :cond_a

    .line 717
    iput-boolean v1, p0, mHiddenBySystem:Z

    .line 718
    invoke-direct {p0, v1}, updateVisibility(Z)V

    .line 720
    :cond_a
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 3

    .prologue
    .line 880
    invoke-virtual {p0}, getHeight()I

    move-result v0

    .line 882
    .local v0, "height":I
    iget-boolean v1, p0, mNowShowing:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {p0}, getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_12

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isTitleTruncated()Z
    .registers 2

    .prologue
    .line 944
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_e

    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .registers 2

    .prologue
    .line 594
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 273
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, setHasEmbeddedTabs(Z)V

    .line 274
    return-void
.end method

.method public onContentScrollStarted()V
    .registers 2

    .prologue
    .line 969
    iget-object v0, p0, mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    .line 970
    iget-object v0, p0, mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentShowAnim:Landroid/animation/Animator;

    .line 973
    :cond_c
    return-void
.end method

.method public onContentScrollStopped()V
    .registers 1

    .prologue
    .line 977
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 343
    iput p1, p0, mCurWindowVisibility:I

    .line 344
    return-void
.end method

.method public removeAllTabs()V
    .registers 1

    .prologue
    .line 441
    invoke-direct {p0}, cleanupTabs()V

    .line 442
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 365
    iget-object v0, p0, mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .registers 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, removeTabAt(I)V

    .line 600
    return-void
.end method

.method public removeTabAt(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 604
    iget-object v4, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_5

    .line 625
    :cond_4
    :goto_4
    return-void

    .line 609
    :cond_5
    iget-object v4, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_39

    iget-object v4, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    .line 611
    .local v3, "selectedTabPosition":I
    :goto_f
    iget-object v4, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 612
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 613
    .local v2, "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    if-eqz v2, :cond_22

    .line 614
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 617
    :cond_22
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 618
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_29
    if-ge v0, v1, :cond_3c

    .line 619
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 609
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_39
    iget v3, p0, mSavedTabPosition:I

    goto :goto_f

    .line 622
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_3c
    if-ne v3, p1, :cond_4

    .line 623
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x0

    :goto_47
    invoke-virtual {p0, v4}, selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_4

    :cond_4b
    iget-object v4, p0, mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    goto :goto_47
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .registers 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    .line 629
    invoke-virtual {p0}, getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    .line 630
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_e
    iput v1, p0, mSavedTabPosition:I

    .line 656
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_10
    :goto_10
    return-void

    .line 634
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_11
    iget-object v2, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v0, 0x0

    .line 637
    .local v0, "trans":Landroid/app/FragmentTransaction;
    :goto_1e
    iget-object v2, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v2, p1, :cond_55

    .line 638
    iget-object v1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3a

    .line 639
    iget-object v1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 640
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 653
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 654
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_10

    .line 634
    .end local v0    # "trans":Landroid/app/FragmentTransaction;
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_46
    iget-object v2, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    goto :goto_1e

    .line 643
    .restart local v0    # "trans":Landroid/app/FragmentTransaction;
    :cond_55
    iget-object v2, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5d
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 644
    iget-object v1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_6f

    .line 645
    iget-object v1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 647
    :cond_6f
    check-cast p1, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    iput-object p1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    .line 648
    iget-object v1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3a

    .line 649
    iget-object v1, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_3a
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 484
    iget-object v0, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 485
    return-void
.end method

.method public setCustomView(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 382
    invoke-virtual {p0}, getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, setCustomView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1293
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1294
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1298
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1299
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1300
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 1401
    iget-boolean v0, p0, mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_7

    .line 1402
    invoke-virtual {p0, p1}, setDisplayHomeAsUpEnabled(Z)V

    .line 1404
    :cond_7
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 4
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 398
    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, setDisplayOptions(II)V

    .line 399
    return-void

    .line 398
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setDisplayOptions(I)V
    .registers 3
    .param p1, "options"    # I

    .prologue
    .line 469
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, mDisplayHomeAsUpSet:Z

    .line 472
    :cond_7
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 473
    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 7
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 476
    iget-object v1, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 477
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    .line 478
    const/4 v1, 0x1

    iput-boolean v1, p0, mDisplayHomeAsUpSet:Z

    .line 480
    :cond_d
    iget-object v1, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 481
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 4
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 408
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setDisplayOptions(II)V

    .line 409
    return-void

    .line 408
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .registers 4
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 393
    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, setDisplayOptions(II)V

    .line 394
    return-void

    .line 393
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 4
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 403
    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, setDisplayOptions(II)V

    .line 404
    return-void

    .line 403
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .registers 4
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 388
    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, setDisplayOptions(II)V

    .line 389
    return-void

    .line 388
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .prologue
    .line 261
    iget-object v0, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 262
    iget-object v0, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_e

    .line 263
    iget-object v0, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    .line 265
    :cond_e
    return-void
.end method

.method public setHideOffset(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 744
    if-eqz p1, :cond_12

    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_12
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 749
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 4
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 724
    if-eqz p1, :cond_12

    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 725
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_12
    iput-boolean p1, p0, mHideOnContentScroll:Z

    .line 729
    iget-object v0, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 730
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 964
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 965
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 959
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 960
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 954
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 955
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 949
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 950
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 413
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 414
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1374
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 1375
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1379
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1380
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1304
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1305
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1388
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 1389
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1393
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1394
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 9
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1338
    iget-object v1, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1339
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_66

    .line 1346
    :goto_d
    if-eq v0, p1, :cond_1c

    iget-boolean v1, p0, mHasEmbeddedTabs:Z

    if-nez v1, :cond_1c

    .line 1347
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1c

    .line 1348
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 1351
    :cond_1c
    iget-object v1, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    .line 1352
    packed-switch p1, :pswitch_data_6c

    .line 1362
    :cond_24
    :goto_24
    iget-object v4, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-ne p1, v6, :cond_62

    iget-boolean v1, p0, mHasEmbeddedTabs:Z

    if-nez v1, :cond_62

    move v1, v2

    :goto_2d
    invoke-interface {v4, v1}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1363
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v6, :cond_64

    iget-boolean v4, p0, mHasEmbeddedTabs:Z

    if-nez v4, :cond_64

    :goto_38
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1364
    return-void

    .line 1341
    :pswitch_3c
    invoke-virtual {p0}, getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, mSavedTabPosition:I

    .line 1342
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1343
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_d

    .line 1354
    :pswitch_4e
    invoke-direct {p0}, ensureTabsExist()V

    .line 1355
    iget-object v1, p0, mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1356
    iget v1, p0, mSavedTabPosition:I

    if-eq v1, v5, :cond_24

    .line 1357
    iget v1, p0, mSavedTabPosition:I

    invoke-virtual {p0, v1}, setSelectedNavigationItem(I)V

    .line 1358
    iput v5, p0, mSavedTabPosition:I

    goto :goto_24

    :cond_62
    move v1, v3

    .line 1362
    goto :goto_2d

    :cond_64
    move v2, v3

    .line 1363
    goto :goto_38

    .line 1339
    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_3c
    .end packed-switch

    .line 1352
    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_4e
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 427
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_12
    iget-object v0, p0, mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, selectTab(Landroid/app/ActionBar$Tab;)V

    .line 438
    :goto_1d
    return-void

    .line 432
    :pswitch_1e
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_1d

    .line 427
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_12
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, mShowHideAnimationEnabled:Z

    .line 355
    if-nez p1, :cond_d

    iget-object v0, p0, mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    .line 356
    iget-object v0, p0, mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 358
    :cond_d
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 492
    iget-object v0, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    .line 493
    iget-object v0, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 495
    :cond_9
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 488
    iget-object v0, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 489
    return-void
.end method

.method public setSubtitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 423
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setSubtitle(Ljava/lang/CharSequence;)V

    .line 424
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 465
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 466
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 418
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setTitle(Ljava/lang/CharSequence;)V

    .line 419
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 461
    iget-object v0, p0, mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-boolean v0, p0, mHiddenByApp:Z

    if-eqz v0, :cond_a

    .line 675
    iput-boolean v1, p0, mHiddenByApp:Z

    .line 676
    invoke-direct {p0, v1}, updateVisibility(Z)V

    .line 678
    :cond_a
    return-void
.end method

.method public showForSystem()V
    .registers 2

    .prologue
    .line 691
    iget-boolean v0, p0, mHiddenBySystem:Z

    if-eqz v0, :cond_b

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, mHiddenBySystem:Z

    .line 693
    const/4 v0, 0x1

    invoke-direct {p0, v0}, updateVisibility(Z)V

    .line 695
    :cond_b
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 6
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 518
    iget-object v1, p0, mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_b

    .line 519
    iget-object v1, p0, mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 522
    :cond_b
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 523
    iget-object v1, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 524
    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 525
    .local v0, "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 526
    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 527
    iget-object v1, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 528
    invoke-virtual {p0, v3}, animateToMode(Z)V

    .line 529
    iget-object v1, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_4f

    iget v1, p0, mContextDisplayMode:I

    if-ne v1, v3, :cond_4f

    .line 531
    iget-object v1, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 532
    iget-object v1, p0, mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 533
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_4f

    .line 534
    iget-object v1, p0, mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 538
    :cond_4f
    iget-object v1, p0, mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 539
    iput-object v0, p0, mActionMode:Landroid/view/ActionMode;

    .line 542
    .end local v0    # "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    :goto_58
    return-object v0

    .restart local v0    # "mode":Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;
    :cond_59
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public twPutTabsOnTop(Z)V
    .registers 3
    .param p1, "isTabOnTop"    # Z

    .prologue
    .line 1411
    sget-boolean v0, mIsMRProject:Z

    if-eqz v0, :cond_9

    .line 1412
    iget-object v0, p0, mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->twPutTabsOnTop(Z)V

    .line 1414
    :cond_9
    return-void
.end method
