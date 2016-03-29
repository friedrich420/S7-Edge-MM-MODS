.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;
.super Ljava/lang/Object;
.source "Donut.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 625
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->afterPie:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1500(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$102(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 613
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->spreadAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 617
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 601
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    .line 587
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldnSpread:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$4;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$902(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z

    .line 593
    :cond_0
    return-void
.end method
