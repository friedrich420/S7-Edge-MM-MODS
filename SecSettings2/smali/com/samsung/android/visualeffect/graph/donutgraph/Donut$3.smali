.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;
.super Ljava/lang/Object;
.source "Donut.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 561
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 569
    .local v0, "value":F
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelPointnLineAnimator()V
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V

    .line 571
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isFoldReverse:Z
    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1300(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v3

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonut(Ljava/util/ArrayList;FZ)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$300(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;FZ)V

    .line 573
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I
    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I
    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$500(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$3;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I
    invoke-static {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$700(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 575
    return-void
.end method
