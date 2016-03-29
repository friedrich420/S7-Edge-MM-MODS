.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;
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
    .line 823
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F
    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    # setter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2802(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F

    .line 831
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->setSweepAngle(F)V

    .line 835
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanSweepAngle:F
    invoke-static {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2800(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->addedPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 837
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "cancelAnimator(cleanAnimator)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cleanAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2900(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;

    move-result-object v1

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->cancelAnimator(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$3000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I
    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$500(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I
    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$11;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$700(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 847
    return-void
.end method
