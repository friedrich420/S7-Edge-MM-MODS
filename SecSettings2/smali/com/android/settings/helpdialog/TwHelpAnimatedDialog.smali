.class public Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
.super Lcom/android/settings/helpdialog/TwHelpDialog;
.source "TwHelpAnimatedDialog.java"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mBubbleAnimationView:Landroid/view/View;

.field private mCurrentPointAnimation:I

.field private mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationView:Landroid/view/View;

.field private mPointAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    .line 32
    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    .line 34
    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    .line 114
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    .line 83
    const v1, 0x7f05001f

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 84
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const v1, 0x7f050020

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const v1, 0x7f050021

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const v1, 0x7f050022

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const v1, 0x7f050023

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const v1, 0x7f05000e

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    .line 104
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$1;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/settings/helpdialog/TwHelpDialog;->onAttachedToWindow()V

    .line 46
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 52
    :cond_0
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 57
    :cond_1
    return-void
.end method
