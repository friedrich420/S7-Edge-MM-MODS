.class Landroid/widget/StackView$StackFrame;
.super Landroid/widget/FrameLayout;
.source "StackView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/StackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StackFrame"
.end annotation


# instance fields
.field sliderAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field transformAnimator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 485
    return-void
.end method


# virtual methods
.method cancelSliderAnimator()Z
    .registers 3

    .prologue
    .line 507
    iget-object v1, p0, sliderAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    .line 508
    iget-object v1, p0, sliderAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 509
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 510
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 511
    const/4 v1, 0x1

    .line 514
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method cancelTransformAnimator()Z
    .registers 3

    .prologue
    .line 496
    iget-object v1, p0, transformAnimator:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    .line 497
    iget-object v1, p0, transformAnimator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 498
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    if-eqz v0, :cond_13

    .line 499
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 500
    const/4 v1, 0x1

    .line 503
    .end local v0    # "oa":Landroid/animation/ObjectAnimator;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method setSliderAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 492
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, sliderAnimator:Ljava/lang/ref/WeakReference;

    .line 493
    return-void
.end method

.method setTransformAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 3
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 488
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, transformAnimator:Ljava/lang/ref/WeakReference;

    .line 489
    return-void
.end method
