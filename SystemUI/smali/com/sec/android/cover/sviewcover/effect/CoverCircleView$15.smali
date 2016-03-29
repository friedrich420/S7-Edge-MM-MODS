.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowScaleAnimator(ZZ)V
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
    .line 974
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 977
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F
    invoke-static {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1802(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 978
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1300(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCArrowScale:F
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1800(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$15;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 980
    return-void
.end method
