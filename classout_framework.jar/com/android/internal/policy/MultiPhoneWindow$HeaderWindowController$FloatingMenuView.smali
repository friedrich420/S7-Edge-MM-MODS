.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingMenuView"
.end annotation


# instance fields
.field private mAvailableButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingMenu:Landroid/view/View;

.field private mFloatingMenuBg:Landroid/view/View;

.field private mFloatingMenuCloseAnimating:Z

.field private mFloatingMenuContainer:Landroid/widget/LinearLayout;

.field private mFloatingMenuOpenAnimating:Z

.field private mIsAttached:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 3508
    iput-object p1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    .line 3509
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3503
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mAvailableButtons:Ljava/util/ArrayList;

    .line 3505
    iput-boolean v5, p0, mFloatingMenuCloseAnimating:Z

    .line 3506
    iput-boolean v5, p0, mFloatingMenuOpenAnimating:Z

    .line 3510
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3511
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090093

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, mFloatingMenu:Landroid/view/View;

    .line 3512
    iget-object v3, p0, mFloatingMenu:Landroid/view/View;

    const v4, 0x10203f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, mFloatingMenuBg:Landroid/view/View;

    .line 3513
    iget-object v3, p0, mFloatingMenuBg:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3514
    iget-object v3, p0, mFloatingMenu:Landroid/view/View;

    const v4, 0x10203fc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    .line 3516
    iget-object v3, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 3517
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v2, :cond_66

    .line 3518
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060196

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3519
    .local v0, "color":I
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, 0x66000000

    or-int v0, v3, v4

    .line 3520
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 3524
    .end local v0    # "color":I
    :cond_66
    iget-object v3, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 3525
    iget-object v3, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 3528
    :cond_73
    iget-object v3, p0, mFloatingMenu:Landroid/view/View;

    invoke-virtual {p0, v3}, addView(Landroid/view/View;)V

    .line 3529
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, mWindowManager:Landroid/view/WindowManager;

    .line 3530
    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3496
    iget-boolean v0, p0, mIsAttached:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3496
    invoke-direct {p0}, removeSelf()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3496
    iget-object v0, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3496
    iget-object v0, p0, mFloatingMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    .line 3496
    iput-boolean p1, p0, mFloatingMenuOpenAnimating:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3496
    invoke-direct {p0}, setFloatingButtonHoverListener()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    .line 3496
    invoke-direct {p0}, animateFloatingMenuClose()V

    return-void
.end method

.method static synthetic access$6702(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    .line 3496
    iput-boolean p1, p0, mFloatingMenuCloseAnimating:Z

    return p1
.end method

.method private animateFloatingMenuClose()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3735
    iget-boolean v8, p0, mFloatingMenuCloseAnimating:Z

    if-nez v8, :cond_e

    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_f

    .line 3785
    :cond_e
    return-void

    .line 3738
    :cond_f
    iput-boolean v11, p0, mFloatingMenuCloseAnimating:Z

    .line 3739
    iput-boolean v10, p0, mFloatingMenuOpenAnimating:Z

    .line 3741
    iget-object v8, p0, mFloatingMenuBg:Landroid/view/View;

    const v9, 0x10203f9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3742
    .local v4, "leftBackground":Landroid/view/View;
    iget-object v8, p0, mFloatingMenuBg:Landroid/view/View;

    const v9, 0x10203fb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3743
    .local v7, "rightBackground":Landroid/view/View;
    iget-object v8, p0, mFloatingMenuBg:Landroid/view/View;

    const v9, 0x10203fa

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3745
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v8, p0, mContext:Landroid/content/Context;

    const v9, 0x10a0055

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3746
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3769
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3770
    invoke-direct {p0, v10, v11}, getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3771
    invoke-direct {p0, v10, v10}, getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3773
    const/4 v3, 0x0

    .line 3774
    .local v3, "left":I
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 3775
    .local v6, "right":I
    const/4 v5, 0x0

    .line 3776
    .local v5, "offset":I
    :goto_5a
    if-gt v3, v6, :cond_e

    .line 3777
    iget-object v8, p0, mContext:Landroid/content/Context;

    const v9, 0x10a0054

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3778
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v8, v5, 0x64

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3779
    if-eq v3, v6, :cond_78

    .line 3780
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3782
    :cond_78
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3783
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, 0x1

    .line 3784
    goto :goto_5a
.end method

.method private animateFloatingMenuOpen(Z)V
    .registers 15
    .param p1, "autoclose"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 3655
    iget-boolean v9, p0, mFloatingMenuOpenAnimating:Z

    if-nez v9, :cond_e

    iget-object v9, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_f

    .line 3732
    :cond_e
    return-void

    .line 3659
    :cond_f
    iput-boolean v12, p0, mFloatingMenuCloseAnimating:Z

    .line 3660
    iput-boolean v11, p0, mFloatingMenuOpenAnimating:Z

    .line 3662
    iget-object v9, p0, mFloatingMenuBg:Landroid/view/View;

    const v10, 0x10203f9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3663
    .local v5, "leftBackground":Landroid/view/View;
    iget-object v9, p0, mFloatingMenuBg:Landroid/view/View;

    const v10, 0x10203fb

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3664
    .local v8, "rightBackground":Landroid/view/View;
    iget-object v9, p0, mFloatingMenuBg:Landroid/view/View;

    const v10, 0x10203fa

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3666
    .local v2, "centerBackground":Landroid/view/View;
    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x10a0056

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3667
    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    invoke-direct {v9, p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3715
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3716
    invoke-direct {p0, v11, v11}, getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3717
    invoke-direct {p0, v11, v12}, getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3719
    const/4 v4, 0x0

    .line 3720
    .local v4, "left":I
    iget-object v9, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 3721
    .local v7, "right":I
    iget-object v9, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v3, v9, -0x1

    .line 3722
    .local v3, "closer":I
    iget-object v9, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_a8

    add-int/lit8 v6, v3, 0x1

    .line 3723
    .local v6, "offset":I
    :goto_78
    if-gt v4, v7, :cond_e

    .line 3724
    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x10a0053

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3725
    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v9, v6, 0x64

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3726
    if-eq v4, v7, :cond_96

    .line 3727
    iget-object v9, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3729
    :cond_96
    iget-object v9, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3730
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    .line 3731
    goto :goto_78

    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v6    # "offset":I
    :cond_a8
    move v6, v3

    .line 3722
    goto :goto_78
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 3831
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 3832
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3833
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3834
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3835
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3836
    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3837
    const-string v1, "PenWindow Titlebar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3838
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3839
    const v1, 0x40208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3843
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 3844
    return-object v0
.end method

.method private getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;
    .registers 18
    .param p1, "open"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 3788
    iget-object v1, p0, mFloatingMenu:Landroid/view/View;

    const v2, 0x10203f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 3789
    .local v11, "leftBackground":Landroid/view/View;
    iget-object v1, p0, mFloatingMenu:Landroid/view/View;

    const v2, 0x10203fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 3790
    .local v13, "rightBackground":Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3793
    .local v0, "t":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$6800(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v1

    const/16 v2, 0x13

    if-ge v1, v2, :cond_7c

    .line 3794
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$6100(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v1

    iget-object v1, v1, mFloatingMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$6200(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v2

    add-int v12, v1, v2

    .line 3799
    .local v12, "measureWidth":I
    :goto_3d
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v10, v1, v2

    .line 3800
    .local v10, "buttonsSideBgWidth":I
    div-int/lit8 v9, v12, 0x2

    .line 3801
    .local v9, "buttonPopupHalfWidth":I
    div-int/lit8 v1, v10, 0x2

    sub-int v14, v9, v1

    .line 3802
    .local v14, "showposition":I
    if-eqz p1, :cond_98

    .line 3803
    if-eqz p2, :cond_89

    .line 3804
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    int-to-float v2, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3816
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_5e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 3817
    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 3818
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3819
    return-object v0

    .line 3796
    .end local v9    # "buttonPopupHalfWidth":I
    .end local v10    # "buttonsSideBgWidth":I
    .end local v12    # "measureWidth":I
    .end local v14    # "showposition":I
    :cond_7c
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$6100(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v1

    iget-object v1, v1, mFloatingMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .restart local v12    # "measureWidth":I
    goto :goto_3d

    .line 3806
    .restart local v9    # "buttonPopupHalfWidth":I
    .restart local v10    # "buttonsSideBgWidth":I
    .restart local v14    # "showposition":I
    :cond_89
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    neg-int v2, v14

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_5e

    .line 3809
    :cond_98
    if-eqz p2, :cond_ad

    .line 3810
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3814
    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_a7
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    goto :goto_5e

    .line 3812
    :cond_ad
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, v14

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_a7
.end method

.method private removeSelf()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3600
    iget-boolean v2, p0, mFloatingMenuOpenAnimating:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, mFloatingMenuCloseAnimating:Z

    if-eqz v2, :cond_47

    .line 3601
    :cond_9
    iget-object v2, p0, mFloatingMenuBg:Landroid/view/View;

    const v3, 0x10203f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 3602
    iget-object v2, p0, mFloatingMenuBg:Landroid/view/View;

    const v3, 0x10203fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 3603
    iget-object v2, p0, mFloatingMenuBg:Landroid/view/View;

    const v3, 0x10203fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 3604
    iget-object v2, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3605
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_33

    .line 3607
    .end local v0    # "button":Landroid/view/View;
    :cond_43
    iput-boolean v4, p0, mFloatingMenuCloseAnimating:Z

    .line 3608
    iput-boolean v4, p0, mFloatingMenuOpenAnimating:Z

    .line 3610
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_47
    iget-object v2, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3611
    iput-boolean v4, p0, mIsAttached:Z

    .line 3612
    return-void
.end method

.method private setFloatingButtonHoverListener()V
    .registers 9

    .prologue
    const/16 v7, 0x3035

    const/4 v6, 0x1

    .line 3615
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3618
    .local v1, "hoverPopupTopMargin":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 3619
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 3620
    .local v0, "di":Landroid/view/DisplayInfo;
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 3621
    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    if-ne v3, v6, :cond_36

    .line 3622
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 3627
    .end local v0    # "di":Landroid/view/DisplayInfo;
    :cond_36
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3629
    .local v2, "stackBound":Landroid/graphics/Rect;
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3630
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_7c

    .line 3631
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3632
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3635
    :cond_7c
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3636
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 3637
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3638
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3641
    :cond_b5
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3642
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_ee

    .line 3643
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3644
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3647
    :cond_ee
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3648
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_127

    .line 3649
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget-object v5, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 3650
    iget-object v3, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 3652
    :cond_127
    return-void
.end method


# virtual methods
.method public checkAvailableButtonsForAnim()V
    .registers 13

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 3533
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3534
    iget-object v8, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_1b

    .line 3535
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3537
    :cond_1b
    iget-object v8, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_2e

    .line 3538
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3540
    :cond_2e
    iget-object v8, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_41

    .line 3541
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3543
    :cond_41
    iget-object v8, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_54

    .line 3544
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3548
    :cond_54
    iget-object v8, p0, mFloatingMenu:Landroid/view/View;

    const v9, 0x10203f9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 3549
    .local v5, "leftImageView":Landroid/view/View;
    iget-object v8, p0, mFloatingMenu:Landroid/view/View;

    const v9, 0x10203fb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3550
    .local v6, "rightImageView":Landroid/view/View;
    iget-object v8, p0, mFloatingMenu:Landroid/view/View;

    const v9, 0x10203fa

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3551
    .local v2, "centerImageView":Landroid/view/View;
    iget-object v8, p0, mFloatingMenu:Landroid/view/View;

    invoke-virtual {v8, v10, v10}, Landroid/view/View;->measure(II)V

    .line 3553
    iget-object v8, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$6100(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v8

    iget-object v8, v8, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3554
    .local v7, "vlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v9, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$6202(Lcom/android/internal/policy/MultiPhoneWindow;I)I

    .line 3556
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3557
    .local v1, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3558
    .local v3, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3561
    iget-object v8, p0, mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3562
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 3563
    invoke-virtual {v0, v10}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 3565
    :cond_ce
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_b9

    .line 3567
    .end local v0    # "button":Landroid/view/View;
    :cond_d2
    return-void
.end method

.method public dismiss(Z)V
    .registers 5
    .param p1, "anim"    # Z

    .prologue
    .line 3589
    iget-boolean v0, p0, mIsAttached:Z

    if-eqz v0, :cond_21

    .line 3590
    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss menu with anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    if-eqz p1, :cond_22

    .line 3592
    invoke-direct {p0}, animateFloatingMenuClose()V

    .line 3597
    :cond_21
    :goto_21
    return-void

    .line 3594
    :cond_22
    invoke-direct {p0}, removeSelf()V

    goto :goto_21
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 3825
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, dismiss(Z)V

    .line 3827
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3849
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 3850
    .local v2, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_87

    .line 3851
    iget-object v5, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    .line 3852
    .local v3, "ripple":Landroid/graphics/drawable/RippleDrawable;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3853
    .local v4, "rippleSize":I
    const/4 v0, 0x0

    .line 3854
    .local v0, "layoutLeft":I
    const/4 v1, 0x0

    .line 3856
    .local v1, "layoutRight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_6c

    .line 3857
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 3858
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 3864
    :goto_43
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v5, v1, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 3865
    iget-object v5, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->drawableHotspotChanged(FF)V

    .line 3866
    iget-object v5, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 3871
    .end local v0    # "layoutLeft":I
    .end local v1    # "layoutRight":I
    .end local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v4    # "rippleSize":I
    :cond_6b
    :goto_6b
    return v2

    .line 3860
    .restart local v0    # "layoutLeft":I
    .restart local v1    # "layoutRight":I
    .restart local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .restart local v4    # "rippleSize":I
    :cond_6c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 3861
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    goto :goto_43

    .line 3867
    .end local v0    # "layoutLeft":I
    .end local v1    # "layoutRight":I
    .end local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v4    # "rippleSize":I
    :cond_87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6b

    .line 3869
    iget-object v5, p0, mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_6b
.end method

.method public show(IIZ)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "autoclose"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3570
    iget-boolean v1, p0, mIsAttached:Z

    if-nez v1, :cond_5d

    .line 3571
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show menu at ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    invoke-direct {p0}, generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3573
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3574
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3577
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3578
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3579
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3580
    iget-object v1, p0, this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    .line 3582
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3583
    invoke-direct {p0, p3}, animateFloatingMenuOpen(Z)V

    .line 3584
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsAttached:Z

    .line 3586
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_5d
    return-void
.end method
