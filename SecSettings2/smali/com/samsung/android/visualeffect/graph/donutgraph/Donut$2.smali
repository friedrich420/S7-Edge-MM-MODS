.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;
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
    .line 501
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 549
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawBackgroundCircle:Z
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$902(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z

    .line 529
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isCleanPiePhase:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->animateCleanPie(F)V
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1200(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)V

    .line 539
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->playPointAnimator()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 517
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$2;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    .line 509
    return-void
.end method
