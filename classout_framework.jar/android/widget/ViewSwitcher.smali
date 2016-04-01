.class public Landroid/widget/ViewSwitcher;
.super Landroid/widget/ViewAnimator;
.source "ViewSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ViewSwitcher$ViewFactory;
    }
.end annotation


# instance fields
.field mFactory:Landroid/widget/ViewSwitcher$ViewFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private obtainView()Landroid/view/View;
    .registers 5

    .prologue
    .line 85
    iget-object v2, p0, mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-interface {v2}, Landroid/widget/ViewSwitcher$ViewFactory;->makeView()Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v1, :cond_15

    .line 88
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_15
    invoke-virtual {p0, v0, v1}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 63
    invoke-virtual {p0}, getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t add more than 2 views to a ViewSwitcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 71
    const-class v0, Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextView()Landroid/view/View;
    .registers 3

    .prologue
    .line 80
    iget v1, p0, mWhichChild:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    .line 81
    .local v0, "which":I
    :goto_5
    invoke-virtual {p0, v0}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "which":I
    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public reset()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 113
    iput-boolean v2, p0, mFirstTime:Z

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_f
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_18

    .line 121
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_18
    return-void
.end method

.method public setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    .registers 2
    .param p1, "factory"    # Landroid/widget/ViewSwitcher$ViewFactory;

    .prologue
    .line 103
    iput-object p1, p0, mFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 104
    invoke-direct {p0}, obtainView()Landroid/view/View;

    .line 105
    invoke-direct {p0}, obtainView()Landroid/view/View;

    .line 106
    return-void
.end method
