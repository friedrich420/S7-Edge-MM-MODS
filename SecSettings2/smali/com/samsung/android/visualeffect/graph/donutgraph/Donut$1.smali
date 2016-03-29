.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;
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
    .line 483
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 491
    .local v0, "value":F
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutCanvas:Landroid/graphics/Canvas;
    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$000(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/graphics/Canvas;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 493
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->thisPie:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$100(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->isSpreadReverse:Z
    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$200(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v3

    # invokes: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->AnimateDonut(Ljava/util/ArrayList;FZ)V
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$300(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;FZ)V

    .line 495
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutLeft:I
    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$400(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutTop:I
    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$500(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutRight:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$600(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    # getter for: Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->donutBottom:I
    invoke-static {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->access$700(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    .line 497
    return-void
.end method
