.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;
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
    .line 757
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 761
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineValue:F
    invoke-static {v1, v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2502(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;F)F

    .line 763
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineLeft:I
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$1900(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineTop:I
    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineRight:I
    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$9;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->lineBottom:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$2200(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 765
    return-void
.end method
