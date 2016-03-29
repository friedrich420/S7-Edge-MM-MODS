.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;
.super Ljava/lang/Object;
.source "KeyguardEffectViewLayered.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->startCancelTranslateAnimator(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

.field final synthetic val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

.field final synthetic val$currentTransX:F

.field final synthetic val$currentTransY:F


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;FF)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    iput-object p2, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    iput p3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$currentTransX:F

    iput p4, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$currentTransY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v9, 0x0

    .line 959
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateX(Landroid/graphics/Matrix;)F
    invoke-static {v6, v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v2

    .line 960
    .local v2, "currentX":F
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getCurrentTranslateY(Landroid/graphics/Matrix;)F
    invoke-static {v6, v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$1200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Landroid/graphics/Matrix;)F

    move-result v3

    .line 962
    .local v3, "currentY":F
    iget v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$currentTransX:F

    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginDx()F

    move-result v7

    iget v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$currentTransX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 964
    .local v0, "currentAnimatedX":F
    iget v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$currentTransY:F

    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getOriginDy()F

    move-result v7

    iget v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$currentTransY:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 970
    .local v1, "currentAnimatedY":F
    sub-float v4, v0, v2

    .line 971
    .local v4, "targetX":F
    sub-float v5, v1, v3

    .line 973
    .local v5, "targetY":F
    cmpl-float v6, v4, v9

    if-nez v6, :cond_0

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_1

    .line 974
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->val$bitmap:Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 975
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$4;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->invalidate()V

    .line 977
    :cond_1
    return-void
.end method
