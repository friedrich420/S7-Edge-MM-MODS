.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowBlinker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1028
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1029
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 1030
    return-void
.end method
