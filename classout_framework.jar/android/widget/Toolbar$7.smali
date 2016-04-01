.class Landroid/widget/Toolbar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .registers 2

    .prologue
    .line 1565
    iput-object p1, p0, this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1575
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$600(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1576
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$600(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1578
    :cond_12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1568
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$600(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1569
    iget-object v0, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mTriangleToRight:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/Toolbar;->access$600(Landroid/widget/Toolbar;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1571
    :cond_13
    return-void
.end method
