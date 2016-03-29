.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;
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
    .line 769
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2602(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z

    .line 809
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLineCallback()V
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2700(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    .line 799
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 785
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 775
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$10;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isLineAnimatorCanceled:Z
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2602(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Z)Z

    .line 777
    return-void
.end method
