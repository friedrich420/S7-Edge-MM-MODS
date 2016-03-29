.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;
.super Ljava/lang/Object;
.source "KeyguardEffectViewLayered.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancelScaleAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

.field final synthetic val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    iput-object p2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1004
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1005
    .local v0, "animatedScale":F
    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentScaleX(Landroid/graphics/Matrix;)F
    invoke-static {v5, v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    iget-object v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v8}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentRotateY(Landroid/graphics/Matrix;)F
    invoke-static {v5, v8}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$2300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v5

    float-to-double v8, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 1007
    .local v1, "currentScale":F
    div-float v4, v0, v1

    .line 1009
    .local v4, "scaleRate":F
    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsWidth:I
    invoke-static {v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$500(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 1010
    .local v2, "px":F
    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mMatricsHeight:I
    invoke-static {v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$600(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v3, v5

    .line 1018
    .local v3, "py":F
    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4, v4, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1019
    iget-object v5, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$6;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-virtual {v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->invalidate()V

    .line 1020
    return-void
.end method
